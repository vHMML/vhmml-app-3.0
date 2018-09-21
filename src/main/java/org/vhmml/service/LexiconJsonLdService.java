package org.vhmml.service;

import org.vhmml.entity.JsonLd;
import org.vhmml.entity.LexiconTerm;

public interface LexiconJsonLdService {
	JsonLd createLexiconJsonLdObject(LexiconTerm term);
}
