package org.vhmml.util;

import org.jsoup.Jsoup;

public class JsoupUtil {

	/**
	 * Method will convert a string that may have HTML elements in it into just plain text without HTML elements.
	 * @param htmlString
	 * @return
	 */
	public static String parseHtmlToString(String htmlString) {
		return Jsoup.parse(htmlString).text();
	}
}
