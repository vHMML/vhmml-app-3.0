package org.vhmml.service;

import org.vhmml.entity.JsonLd;
import org.vhmml.entity.ReferenceEntry;

public interface ReferenceJsonLdService {
	JsonLd createReferenceJsonLdObject(ReferenceEntry object);
}
