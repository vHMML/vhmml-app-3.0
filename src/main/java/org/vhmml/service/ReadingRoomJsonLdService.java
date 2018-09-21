package org.vhmml.service;

import org.vhmml.entity.JsonLd;
import org.vhmml.entity.readingroom.ReadingRoomObject;

public interface ReadingRoomJsonLdService {
	JsonLd createReadingRoomJsonLdObject(ReadingRoomObject object);
}
