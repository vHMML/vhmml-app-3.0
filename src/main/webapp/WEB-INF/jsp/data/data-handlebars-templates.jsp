<script id="no-search-results-data-portal-template" type="text/x-handlebars-template">
	<div class="noResults"> 
		<h2>Your search returned 0 results</h2>
		<p>Tips:</p>
		<ul>
			<li>Check your spelling</li>
			<li>Click the Clear search button and try your search again; prior search parameters may still be set inadvertently </li>
			<li>Try a broader search or a different search field</li>
			<li>If searching for a title, try an alternative or shorter form</li>
			<li>Move the Date Range sliders out to the extremes to include all dates </li>
		    <li>When using an exact search by putting double quotes around multiple words, try the same search without the quote marks or try spelling the words differently (e.g. plurals)</li>
			<li>If searching with native script, try again without it</li>
		</ul>
		<p>You can find more information on our <a href="${pageContext.request.contextPath}/dataPortal/help">Help Page</a>.</p>
		Still having issues with search? <a href="${pageContext.request.contextPath}/contact">Contact us</a>.
	</div>
</script>

<script id="search-results-template" type="text/x-handlebars-template">
	{{#each searchHits}}
		<tr data-result-id="{{objectOverview.id}}">
			<td class="col-md-2">{{{objectOverview.country}}}</td>
			<td class="col-md-2">{{objectOverview.city}}</td>
			<td class="col-md-3">{{objectOverview.repository}}</td>
			<td class="col-md-2">{{objectOverview.shelfmark}}</td>
			<td class="col-md-3"><a href="https://${configValues['permalink.url'].value}/readingRoom/view/{{objectOverview.id}}" target="_blank">{{objectOverview.hmmlProjectNumber}}&nbsp;&nbsp;<span class="glyphicon glyphicon-new-window" aria-hidden="true"></span></a></td>
		</tr>
	{{/each}}
</script>