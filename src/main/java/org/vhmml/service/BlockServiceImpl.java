package org.vhmml.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.vhmml.entity.block.Block;
import org.vhmml.entity.block.BlockComponent;
import org.vhmml.entity.block.BlockComponent.Type;
import org.vhmml.entity.block.Block.Section;
import org.vhmml.repository.BlockRepository;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

@Service
public class BlockServiceImpl implements BlockService {

	private static final Logger LOG = Logger.getLogger(BlockServiceImpl.class);
	
	@Autowired
	BlockRepository blockRepository;
	
	@Value("${block.error.color.hex}")
	private String BLOCK_ERROR_COLOR_HEX;
	
	@Value("${block.error.opacity}")
	private String BLOCK_ERROR_OPACITY;
	
	@Value("${block.error.list.amount}")
	private String BLOCK_ERROR_LIST_AMOUNT;
	
	@Value("${block.error.field.link.search}")
	private String BLOCK_ERROR_FIELD_LINK_SEARCH;
	
	@Value("${block.default.background.color}")
	private String BLOCK_DEFAULT_BACKGROUND_COLOR;
	
	@Value("${block.default.opacity}")
	private String BLOCK_DEFAULT_OPACITY;
	
	@Value("${block.default.list.amount}")
	private String BLOCK_DEFAULT_LIST_AMOUNT;
	
	@Value("${block.image.directory}")
	private String BLOCK_IMAGE_DIRECTORY;
	
	private static final String COLOR_HEX_CODE_REGEX = "^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$";
	
	public List<Block> retrieveBlocksForSection(Section section) {
		List<Block> blocks = blockRepository.findBySection(section.getName());
		
		return blocks;
	}

	/**
	 * Method will retrieve the block and it's block components.
	 */
	@Override
	public Block retrieveBlock(Section section, String blockName) {
		return blockRepository.findBySectionAndName(section.getName(), blockName);
	}
	
	/**
	 * Method will save the block after validating the components.
	 */
	@Override
	public Map<String, String> saveBlock(String section, String block, MultipartHttpServletRequest request) {
		Map<String, String> errorMessages = validateComponents(request);
		
		// After we validate the component values and there are errors, then
		// skip updating the block and return the map of error messages.
		if (CollectionUtils.isEmpty(errorMessages)) {
			// Save the components.
			updateBlock(section, block, request);
		}
		
		return errorMessages;
	}
	
	/**
	 * Method will process and update the block and it's block components.
	 * 
	 * @param section
	 * @param block
	 * @param request
	 * @return
	 */
	private boolean updateBlock(String section, String block, MultipartHttpServletRequest request) {
		long blockId = Long.parseLong(request.getParameter("blockId"));
		int useImage = Boolean.parseBoolean(request.getParameter("useImage")) ? 1 : 0;
		int useFieldLinkSearch = Boolean.parseBoolean(request.getParameter("useFieldLinkSearch")) ? 1 : 0;
		String currentImage = request.getParameter("currentImage");
		
		try {
			
			// If there is no current image and no file uploaded, then turn off the IMAGE component,
			// so that we use the background color by default.
			if (StringUtils.isBlank(currentImage) && request.getFile(Type.IMAGE.getName()) == null) {
				useImage = 0;
			}
			
			// Turn off field link search if no value is provided.
			if (StringUtils.isBlank(request.getParameter(Type.FIELDLINKSEARCH.getName()))) {
				useFieldLinkSearch = 0;
			}
			
			// Update block component statuses.
			blockRepository.updateBlockComponentStatusForBlock(useImage, blockId, Type.IMAGE.getName());
			blockRepository.updateBlockComponentStatusForBlock(useFieldLinkSearch, blockId, Type.FIELDLINKSEARCH.getName());
			
			// Iterate through the Type enum from BlockComponent and pull
			// the parameters from the request using the Type names since
			// the Type names also correlate back to their respective request parameter values.
			for (Type componentType : BlockComponent.Type.values()) {
				String value = "";
				
				// Check to make sure that the parameter or multifile maps contain the component type in the request.
				if (request.getParameterMap().containsKey(componentType.getName()) || request.getMultiFileMap().containsKey(componentType.getName())) {
					
					if (componentType.equals(Type.IMAGE)) {
						MultipartFile file = request.getFile(Type.IMAGE.getName());
						value = currentImage;
						
						// If the file exists, then handle the file.
						if (file != null) {
							value = file.getOriginalFilename();
							
							processImageUpload(file);
						}
						
					} else {
						value = request.getParameter(componentType.getName());
					}
					
					blockRepository.updateBlockComponentForBlock(value, blockId, componentType.getName());
				} else {
					// If the type is not found in the incoming request parameters, then no value was submitted.
					// We then want to default these component types to a certain value if they are required components of
					// a block;
					if (componentType.equals(Type.BACKGROUNDCOLOR) || componentType.equals(Type.OVERLAYCOLOR) || componentType.equals(Type.HOVERCOLOR)) {
						value = BLOCK_DEFAULT_BACKGROUND_COLOR;
						blockRepository.updateBlockComponentForBlock(value, blockId, componentType.getName());
					} else if (componentType.equals(Type.OVERLAYOPACITY)) {
						value = BLOCK_DEFAULT_OPACITY;
						blockRepository.updateBlockComponentForBlock(value, blockId, componentType.getName());
					} else if (componentType.equals(Type.LISTAMOUNT)) {
						value = BLOCK_DEFAULT_LIST_AMOUNT;
						blockRepository.updateBlockComponentForBlock(value, blockId, componentType.getName());
					}
				}
			}
			
		} catch (Exception exception) {
			LOG.error("Error updating the block. ", exception);
		}
		
		return true;
	}
	
	/**
	 * Method will process the image upload by writing it to the appropriate directory.
	 * @param incomingImage
	 */
	private void processImageUpload(MultipartFile incomingImage) {
		
		try {
			String imageFilename = BLOCK_IMAGE_DIRECTORY + incomingImage.getOriginalFilename();
			File newImage = new File(imageFilename);
			FileUtils.writeByteArrayToFile(newImage, incomingImage.getBytes());
		} catch (Exception e) {
			LOG.error("Error uploading block image file.", e);
		}
	}
	
	/**
	 * Method will validate each applicable component of the block.
	 * @param request
	 * @return
	 */
	private Map<String, String> validateComponents(MultipartHttpServletRequest request) {
		Map<String, String> errorMessages = new HashMap<String, String>();
		
		// Add validation calls and the appropriate error messages from the properties for the block fields.
		
		if (!validateColorField(request, Type.HEADINGCOLOR)) {
			errorMessages.put(Type.HEADINGCOLOR.getName(), BLOCK_ERROR_COLOR_HEX);
		}
		
		if (!validateColorField(request, Type.CONTENTCOLOR)) {
			errorMessages.put(Type.CONTENTCOLOR.getName(), BLOCK_ERROR_COLOR_HEX);
		}
		
		if (!validateColorField(request, Type.HOVERCOLOR)) {
			errorMessages.put(Type.HOVERCOLOR.getName(), BLOCK_ERROR_COLOR_HEX);
		}
		
		if (!validateColorField(request, Type.OVERLAYCOLOR)) {
			errorMessages.put(Type.OVERLAYCOLOR.getName(), BLOCK_ERROR_COLOR_HEX);
		}
		
		if (!validateOpacityField(request, Type.OVERLAYOPACITY)) {
			errorMessages.put(Type.OVERLAYOPACITY.getName(), BLOCK_ERROR_OPACITY);
		}
		
		if (!validateColorField(request, Type.BACKGROUNDCOLOR)) {
			errorMessages.put(Type.BACKGROUNDCOLOR.getName(), BLOCK_ERROR_COLOR_HEX);
		}
		
		if (!validateListAmountField(request, Type.LISTAMOUNT)) {
			errorMessages.put(Type.LISTAMOUNT.getName(), BLOCK_ERROR_LIST_AMOUNT);
		}
		
		if (!validateFieldLinkSearchField(request, Type.FIELDLINKSEARCH)) {
			errorMessages.put(Type.FIELDLINKSEARCH.getName(), BLOCK_ERROR_FIELD_LINK_SEARCH);
		}
		
		return errorMessages;
	}
	
	/**
	 * Method will validate the value for the field link search field to ensure that it is in
	 * proper JSON format.
	 * 
	 * @param request
	 * @param type
	 * @return
	 */
	private boolean validateFieldLinkSearchField(MultipartHttpServletRequest request, Type type) {
		if (request.getParameterMap().containsKey(type.getName())
				&& StringUtils.isNotBlank(request.getParameter(type.getName()))) {
			Gson gson = new Gson();
			String jsonString = request.getParameter(type.getName());
			
			try {
				gson.fromJson(jsonString, Object.class);
				return true;
			} catch (JsonSyntaxException exception) {
				return false;
			}
		}
		
		return true;
	}
	
	/**
	 * Method will validate the list amount field.
	 * @param request
	 * @param type
	 * @return
	 */
	private boolean validateListAmountField(MultipartHttpServletRequest request, Type type) {
		if (request.getParameterMap().containsKey(type.getName())
				&& StringUtils.isNotBlank(request.getParameter(type.getName()))
				&& StringUtils.isNumeric(request.getParameter(type.getName()))) {
			
			int listAmount = Integer.parseInt(request.getParameter(type.getName()));
			
			if (listAmount > 0) {
				return true;
			}
			
			return false;
		}
		
		return true;
	}
	
	/**
	 * Method will validate values of the opacity fields.
	 * @param value
	 * @return
	 */
	private boolean validateOpacityField(MultipartHttpServletRequest request, Type type) {
		if (request.getParameterMap().containsKey(type.getName())
				&& StringUtils.isNotBlank(request.getParameter(type.getName()))) {
			double opacity = Double.parseDouble(request.getParameter(type.getName()));
			
			if (opacity >= 0.0 && opacity <= 1.0) {
				return true;
			}
			
			// If opacity isn't the right value, return false.
			return false;
		}
		
		// Return true no matter what because then it will be skipped.
		return true;
	}
	
	/**
	 * Method will validate values of the color fields.
	 * @param value
	 * @return
	 */
	private boolean validateColorField(MultipartHttpServletRequest request, Type type) {
		
		if (request.getParameterMap().containsKey(type.getName()) 
				&& !isValidColorHexCode(request.getParameter(type.getName()))) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * Method will check if the hex code string matches the hex code regex.
	 * @param hexCode
	 * @return
	 */
	private boolean isValidColorHexCode(final String hexCode) {
		return hexCode.matches(COLOR_HEX_CODE_REGEX);
	}
}
