package org.vhmml.service;

import org.vhmml.entity.FolioObject;
import org.vhmml.entity.JsonLd;

public interface FolioJsonLdService {
	JsonLd createFolioJsonLdObject(FolioObject object);
}
