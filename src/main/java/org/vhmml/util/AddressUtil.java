package org.vhmml.util;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class AddressUtil {
	
	public enum USStates {

	    ALABAMA("Alabama","AL","US-AL"),
	    ALASKA("Alaska","AK","US-AK"),
	    ARIZONA("Arizona","AZ","US-AZ"),
	    ARKANSAS("Arkansas","AR","US-AR"),
	    CALIFORNIA("California","CA","US-CA"),
	    COLORADO("Colorado","CO","US-CO"),
	    CONNECTICUT("Connecticut","CT","US-CT"),
	    DELAWARE("Delaware","DE","US-DE"),
	    DISTRICT_OF_COLUMBIA("District of Columbia","DC","US-DC"),
	    FLORIDA("Florida","FL","US-FL"),
	    GEORGIA("Georgia","GA","US-GA"),
	    HAWAII("Hawaii","HI","US-HI"),
	    IDAHO("Idaho","ID","US-ID"),
	    ILLINOIS("Illinois","IL","US-IL"),
	    INDIANA("Indiana","IN","US-IN"),
	    IOWA("Iowa","IA","US-IA"),
	    KANSAS("Kansas","KS","US-KS"),
	    KENTUCKY("Kentucky","KY","US-KY"),
	    LOUISIANA("Louisiana","LA","US-LA"),
	    MAINE("Maine","ME","US-ME"),
	    MARYLAND("Maryland","MD","US-MD"),
	    MASSACHUSETTS("Massachusetts","MA","US-MA"),
	    MICHIGAN("Michigan","MI","US-MI"),
	    MINNESOTA("Minnesota","MN","US-MN"),
	    MISSISSIPPI("Mississippi","MS","US-MS"),
	    MISSOURI("Missouri","MO","US-MO"),
	    MONTANA("Montana","MT","US-MT"),
	    NEBRASKA("Nebraska","NE","US-NE"),
	    NEVADA("Nevada","NV","US-NV"),
	    NEW_HAMPSHIRE("New Hampshire","NH","US-NH"),
	    NEW_JERSEY("New Jersey","NJ","US-NJ"),
	    NEW_MEXICO("New Mexico","NM","US-NM"),
	    NEW_YORK("New York","NY","US-NY"),
	    NORTH_CAROLINA("North Carolina","NC","US-NC"),
	    NORTH_DAKOTA("North Dakota","ND","US-ND"),
	    OHIO("Ohio","OH","US-OH"),
	    OKLAHOMA("Oklahoma","OK","US-OK"),
	    OREGON("Oregon","OR","US-OR"),
	    PENNSYLVANIA("Pennsylvania","PA","US-PA"),
	    RHODE_ISLAND("Rhode Island","RI","US-RI"),
	    SOUTH_CAROLINA("South Carolina","SC","US-SC"),
	    SOUTH_DAKOTA("South Dakota","SD","US-SD"),
	    TENNESSEE("Tennessee","TN","US-TN"),
	    TEXAS("Texas","TX","US-TX"),
	    UTAH("Utah","UT","US-UT"),
	    VERMONT("Vermont","VT","US-VT"),
	    VIRGINIA("Virginia","VA","US-VA"),
	    WASHINGTON("Washington","WA","US-WA"),
	    WEST_VIRGINIA("West Virginia","WV","US-WV"),
	    WISCONSIN("Wisconsin","WI","US-WI"),
	    WYOMING("Wyoming","WY","US-WY");
		
		String displayName;
	    String ansiAbbreviation;
	    String isoAbbreviation;

	    USStates(String displayName, String ansiAbbreviation, String isoAbbreviation) {
	        this.displayName = displayName;
	        this.ansiAbbreviation = ansiAbbreviation;
	        this.isoAbbreviation = isoAbbreviation;
	    }
	    
	    public String getDisplayName() {
	        return this.displayName;
	    }
	    
	    public String getAnsiAbbreviation() {
	        return this.ansiAbbreviation;
	    }
	    
	    public String getIsoAbbreviation() {
	        return this.isoAbbreviation;
	    }
	}
	
	/**
	 * Method will return a map of the US States sorted alphabetically along with their ANSI state code.
	 * @return
	 */
	public static Map<String, String> getUsStates() {
		Map<String, String> usStates = new TreeMap<String, String>();
		List<USStates> list = Arrays.asList(USStates.values());
		
		for (USStates state : list) {
			usStates.put(state.getAnsiAbbreviation(), state.getDisplayName());
		}
		
		return sortByValues(usStates);
	}
	
	/**
	 * Method will return a map of the world countries sorted alphabetically along with their ISO-3166-1 country code.
	 */
	public static Map<String, String> getCountries() {
		Map<String, String> countries = new TreeMap<String, String>();
		String[] countryCodes = Locale.getISOCountries();
		
		for (int i = 0; i < countryCodes.length; i++) {
			String isoCode = countryCodes[i];
			Locale locale = new Locale("", isoCode);
			String countryName = locale.getDisplayCountry();
			
			countries.put(isoCode, countryName);
		}
		
		return sortByValues(countries);
	}
	
	private static <K, V extends Comparable<V>> Map<K, V> sortByValues(final Map<K, V> map) {
	    Comparator<K> valueComparator = new Comparator<K>() {
	      public int compare(K k1, K k2) {
	        int compare = 
	              map.get(k1).compareTo(map.get(k2));
	        if (compare == 0) 
	          return 1;
	        else 
	          return compare;
	      }
	    };
	    
	    Map<K, V> sortedValues = new TreeMap<K, V>(valueComparator);
	    	
	    sortedValues.putAll(map);
	    	
	    return sortedValues;
	    	    
	}
}
