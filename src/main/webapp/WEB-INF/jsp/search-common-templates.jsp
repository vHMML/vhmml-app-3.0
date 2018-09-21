<script id="mirador-menu-item-template" type="text/x-handlebars-template">
	<a href="{{href}}" class="mirador-btn {{linkClass}} selected" role="button" aria-label="{{label}}">
		<i class="{{iconClass}} fa-lg fa-fw"></i>
		{{html}}		
	</a>
</script>

<script id="meta-data-field-template" type="text/x-handlebars-template">
	{{#if value}}
		<tr class="{{class}}">
			{{#if label}}
				<td class="metaLabel">{{label}}</td>
			{{/if}}
			<td>
				<span class="{{valueClass}}">{{{value}}}</span>
				
				{{#if note}}
					({{note}})
				{{/if}}

				{{#if lcUri}}
					<a href="{{lcUri}}" target="_blank"><img src="${pageContext.request.contextPath}/static/img/library_of_congress.png" class="lcImage" alt="Library of Congress Authorities" /></a>
				{{/if}}

				{{#if viafUri}}
					<a href="{{viafUri}}" target="_blank" class="viafLink">VIAF</a>
				{{/if}}
			</td>
		</tr>
	{{/if}}	
</script>

<script id="meta-data-field-search-link-template" type="text/x-handlebars-template">
	<tr class="{{class}}" data-value="{{this.fields}}">
		<td class="metaLabel">{{label}}</td>
		<td>
			{{#fieldSearchLink this label=label value=value fields=fields}}{{/fieldSearchLink}}
				
			{{#if note}}
				({{note}})
			{{/if}}

			{{#if lcUri}}
				<a href="{{lcUri}}" target="_blank"><img src="${pageContext.request.contextPath}/static/img/library_of_congress.png" class="lcImage" alt="Library of Congress Authorities" /></a>
			{{/if}}

			{{#if viafUri}}
				<a href="{{viafUri}}" target="_blank" class="viafLink">VIAF</a>
			{{/if}}
		</td>
	</tr>
</script>

<script id="meta-data-field-search-multiple-link-template" type="text/x-handlebars-template">
	{{#if values}}
		<tr class="{{class}}">
			<td class="metaLabel">{{label}}</td>
			<td>
				{{#fieldSearchMultipleLink this label=label values=values fieldName=fieldName}}{{/fieldSearchMultipleLink}}
				
				{{#if note}}
					({{note}})
				{{/if}}

				{{#if lcUri}}
					<a href="{{lcUri}}" target="_blank"><img src="${pageContext.request.contextPath}/static/img/library_of_congress.png" class="lcImage" alt="Library of Congress Authorities" /></a>
				{{/if}}

				{{#if viafUri}}
					<a href="{{viafUri}}" target="_blank" class="viafLink">VIAF</a>
				{{/if}}
			</td>
		</tr>
	{{/if}}
</script>

<script id="meta-data-link-template" type="text/x-handlebars-template">
	<tr class="wrap-overflow">
		<td class="metaLabel">{{label}}</td>
		<td>
			{{#if newWindow}}
				<a href="{{link}}" target="_blank" {{#if linkClass}} class="{{linkClass}}" {{/if}}>
					{{{linkText}}}&nbsp;<span class="glyphicon glyphicon-new-window"/>					
				</a>
			{{else}}
				<a href="{{link}}" target="" {{#if linkClass}} class="{{linkClass}}" {{/if}}>
					{{{linkText}}}
				</a>
			{{/if}}			
			
			{{#if lcUri}}
				<a href="{{lcUri}}" target="_blank"><img src="${pageContext.request.contextPath}/static/img/library_of_congress.png" class="lcImage" alt="Library of Congress Authorities"/></a>
			{{/if}}

			{{#if viafUri}}
				<a href="{{viafUri}}" target="_blank" class="viafLink">VIAF</a>
			{{/if}}
		</td>			
	</tr>
</script>

<script id="meta-data-order-link-template" type="text/x-handlebars-template">
	<tr>
		<td class="metaLabel">{{label}}</td>
		<td>{{preLinkText}}<a href="{{link}}" target="_blank">{{linkText}}</a></td>			
	</tr>
</script>

<script id="permalink-template" type="text/x-handlebars-template">
	<tr>
		<td class="metaLabel">{{label}}</td>
		<td>
			<a href="{{link}}/{{id}}" target="_blank" {{#if linkClass}} class="{{linkClass}}" {{/if}}>				
				{{link}}/{{id}}

				{{#if image}}
					<img src="${pageContext.request.contextPath}/static/img/{{image}}" class="{{imageClass}}"/>
				{{/if}}
			</a>
		</td>		
	</tr>
</script>

<script id="result-maximum-exceeded-template" type="text/x-handlebars-template">
	<div class="noResults"> 
		<h2>Search result maximum exceeded.</h2>
		<p>We are sorry, but the search does not serve more than 10,000 results for any query (You asked for results starting from 10,000).</p>
		<p>Suggestions:</p>
		<ul>
			<li>Narrow your search criteria by using faceted search options.</li>
			<li>Narrow your search by adding more keywords.</li>
			<li>Narrow your search by selecting specific countries or repositories.</li>
			<li>Use a smaller date range.</li>
		</ul>
		<p>You can find more information on our <a href="${pageHelpLink}">Help Page</a>.</p>
		Still having issues with search? <a href="${pageContext.request.contextPath}/contact">Contact us</a>.
	</div>
</script>

<script type="text/javascript">	

	$(function() {
		// helper to escape single & double quotes
		Handlebars.registerHelper('escape', function(variable) {
			if(variable) {
				variable = variable.replace("'", "\\\'").replace('"', '\\\"')
			}
		  	return variable;
		});		

		Handlebars.registerHelper('render', function(partialId, options) {
		  var selector = 'script[type="text/x-handlebars-template"]#' + partialId,
		      source = $(selector).html(),
		      html = Handlebars.compile(source)(options.hash);

			return new Handlebars.SafeString(html);
		});
		
		Handlebars.registerHelper('if_not_eq', function(a, b, opts) {
		    if(a != b) {
		        return opts.fn(this);
		    } else {
		    	return opts.inverse(this);
		    }	    	        
		});
		
		Handlebars.registerHelper('if_eq', function(a, b, opts) {
		    if(a == b) {
		    	return opts.fn(this);
		    } else {
		    	return opts.inverse(this);
		    }	        
		});
			
		Handlebars.registerHelper('fieldSearchLink', function(context, options) {			
			var fields = context.fields.split(',');
			var link = '';
			//JRM 4/10/2018 - added if for multiple search fields
			if(context.searchField) {
				var searchFields = context.searchField.split(',');
			}
			
			for(var i = 0; i < fields.length; i++) {							
				var field = context.vhmmlObject[fields[i]];
				var archivalField;
				
				if (typeof context.archivalObject != "undefined") {
					archivalField = context.archivalObject[fields[i]];
				}
				
				// sometimes the name of the field on the object and the name of the search field on the form are different, e.g. we search author but the field is contributor 
				// in those cases we can provide a searchField value on the template so we can create a link that gets the contributor.populatedName from the
				// vhmmlObject but searches the author field, e.g.
				// {{render 'meta-data-field-search-link-template' label="Author" linkText=contributor.populatedName vhmmlObject=this fields="contributor" searchField="author" searchProp="name"}}
				// produces the following link:
				// fieldLinkSearch({'author':'Augustine, Saint, Bishop of Hippo. De civitate Dei'})
				
				// We also need to be able to handle multiple custom search fields
				//JRM 4/10/2018 - var searchField = context.searchField ? context.searchField : fields[i];
				var searchField = context.searchField ? searchFields[i] : fields[i];
				
				if(field) {
					link = processLink(context, link, i, field, searchField);
				}				
				
				if (archivalField) {
					link = processLink(context, link, i, archivalField, searchField);
				}
			}
			
			// if at least one of the fields had a value, make the link
			if(link) {								
				link = '<a href="javascript:fieldLinkSearch({' + link + '});">' + context.linkText + '</a>' 
			}
			
			return link;
		});
		
		Handlebars.registerHelper('fieldSearchMultipleLink', function(context, options) {
			var links = '';
			
			if(context.values) {
				var fieldName = context.fieldName;
				var separator = context.separator ? context.separator : ';'; 
				var values = context.values.split(separator);
				
				for(var i = 0; i < values.length; i++) {				
					if(i > 0) {
						links += '; ';
					}
					
					// Check if the value exists and is not null.
					if (values[i]) {
						var value = values[i].trim();
						var escapedValue = value.replace(/\'/g, '\\\'');
						links += '<a href="javascript:fieldLinkSearch({\'' + fieldName + '\':\'' + escapedValue + '\'});">' + value + '</a>';	
					}
				}	
			}			
			
			return links;
		});	
		
		function processLink(context, link, i, incomingField, searchField) {
			var fieldValue = incomingField;
			
			if($.isArray(incomingField)) {					
				fieldValue = incomingField[context.index][context.searchProp];											
			} else if (incomingField[context.searchProp] !== undefined){
				fieldValue = incomingField[context.searchProp];
			}	
			
			// Check if the field value exists and is not null then we will put together a search link.
			if (fieldValue) {
				link += i > 0 ? ', ' : '';
				link += '\'' + searchField + '\': ';
				
				// the replace call escapes any single quotes that may happen to be in the field value
				link += '\'' + fieldValue.replace(/\'/g, '\\\'') + '\'';
			}
			
			return link;
		}
	});
</script>