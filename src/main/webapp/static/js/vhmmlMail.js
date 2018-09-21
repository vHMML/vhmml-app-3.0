/**
 * This function is for the mailto link that can be used in the different sections of the app.  
 * 
 * The customSubject parameter should be passed in or else default is blank.
 * The options parameter will be the output in the body as key/value pairs.
 * 
 * Example of default use:
 * 
 * sendReadingRoomEmail('Project Number: 123456', { "HMML Proj. Num.": 123456, "Title": "Awesomus"})
 * 
 * NOTE: The order in which you set the options is the order in which it will output in the body.
 * 
 * @param projectCode
 * @param options
 * @returns
 */
function sendVhmmlEmail(customSubject = '', options = {}) {
		var body = '';
		
		$.each(options, function(k, v) {
			if(v) {
				body += k + ': ' + v + '\r\n';
			}			
		});
		
		window.location.href = 'mailto:?subject=' + customSubject + '&body=' + encodeURIComponent(body);
}

/**
 * Method for putting together the email body with the items from the user's My List.
 * 
 * @param customSubject
 * @param listOfMyListItems
 * @param permalinkUrl 
 * @returns
 */
function sendVhmmlMyListEmail(customSubject = '', listOfMyListItems = Array(), permalinkUrl) {
	var body = '';
	
	for (var i = 0; i < listOfMyListItems.length; i++) {
		var item = listOfMyListItems[i].objectOverview;
		
		body += 'HMML project number: ' + item.hmmlProjectNumber + '\r\n';
		body += 'Country: ' + item.country + '\r\n';
		body += 'City: ' + item.city + '\r\n';
		body += 'Repository: ' + item.repository + '\r\n';
		body += 'Shelfmark: ' + item.shelfmark + '\r\n';
		body += 'Permalink: https://' + permalinkUrl + '/readingRoom/view/'+ item.id + '\r\n \t \r\n';
	}
	
	window.location.href = 'mailto:?subject=' + customSubject + '&body=' + encodeURIComponent(body);
}

/**
 * Method for putting together an individual My List item's info for an email.
 *  
 * @param customSubject
 * @param myListItem
 * @param permalinkUrl
 * @returns
 */
function sendVhmmlIndividualMyListEmail(customSubject = '', myListItem, permalinkUrl) {
	var body = '';
	
	body += 'HMML project number: ' + myListItem.objectOverview.hmmlProjectNumber + '\r\n';
	body += 'Country: ' + myListItem.objectOverview.country + '\r\n';
	body += 'City: ' + myListItem.objectOverview.city + '\r\n';
	body += 'Repository: ' + myListItem.objectOverview.repository + '\r\n';
	body += 'Shelfmark: ' + myListItem.objectOverview.shelfmark + '\r\n';
	body += 'Permalink: https://' + permalinkUrl + '/readingRoom/view/'+ myListItem.objectOverview.id + '\r\n \t \r\n';
	
	window.location.href = 'mailto:?subject=' + customSubject + '&body=' + encodeURIComponent(body);
}