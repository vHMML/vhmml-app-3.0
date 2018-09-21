package org.vhmml.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.vhmml.entity.block.Block;
import org.vhmml.entity.block.Block.Section;

public interface BlockService {
	public List<Block> retrieveBlocksForSection(Section section);
	public Block retrieveBlock(Section section, String blockName);
	public Map<String, String> saveBlock(String section, String block, MultipartHttpServletRequest request);
}
