package org.vhmml.controller;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/readingRoom/admin")
public class ReadingRoomAdminController {
	
	private static final Logger LOG = Logger.getLogger(ReadingRoomAdminController.class);
	
	public static final String PARAM_READING_ROOM_OBJECT = "readingRoomObject";
	public static final String PARAM_REPOSITORIES = "repositories";
	public static final String PARAM_OBJECT_TYPES = "objectTypes";
	public static final String PARAM_FORMATS = "formats";
	public static final String PARAM_COUNTRIES = "countries";
	public static final String PARAM_LANGUAGES = "languages";
	public static final String PARAM_SUPPORTS = "supports";
	public static final String PARAM_GENRES = "genres";
	public static final String PARAM_SUBJECTS = "subjects";
	
	public ReadingRoomAdminController() {
		super();
	}
	
}
