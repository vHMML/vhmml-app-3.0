<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<html lang="en-US">
	<head itemscope itemtype="http://schema.org/WebSite">
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta name="viewport" content="initial-scale=1"/>	
		
		<%--added by William for Facebook  --%>
		<meta property="og:url" content="https://www.vhmml.org/" />
		<meta property="og:type" content="website" />
		<meta property="og:description" content="Resources and Tools for Manuscript Studies" />
		<meta property="og:image" content="https://www.vhmml.org/static/img/vhmml-logo-shareable.png" />
		
		<%--added by William for iOS devices logo --%>
		<link href="https://www.vhmml.org/static/img/apple-touch-icon.png" rel="apple-touch-icon">
		
		<meta name="description" content="Digitized manuscripts archives and rare books from  Europe the near East and Northern Africa">
  		<meta name="keywords" content="manuscripts Countries: Armenia Ethiopia Lebanon Iraq Mali Malta  Portugal Spain Sweden Syria Turkey">
  		<meta name="keywords" content="manuscripts Cities: Baghdad Beirut Diyarbakir Jerusalem Kirkuk Homs Mdina Rome Timbuktu">
		<meta name="keywords" content="manuscripts Languages: Arabic Armenian Garshuni Ge'ez Syriac Turkish">
		
		<title>
			<tiles:insertAttribute name="title" />
		</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.ico">
		
		<link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,700&amp;subset=latin,latin-ext,greek,greek-ext" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700&amp;subset=latin,latin-ext,greek,greek-ext" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Lato&amp;subset=latin,latin-ext,greek,greek-ext" rel="stylesheet"/>
		<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville" rel="stylesheet">

		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery-ui.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery-ui.theme.min.css"/>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/mirador/css/mirador-combined.css?version=${applicationVersion}">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/vhmml/css/vhmml.css?version=${applicationVersion}"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css?version=${applicationVersion}"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/responsive.css?version=${applicationVersion}"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.smartmenus/1.1.0/css/sm-core-css.css"/>
		
		<c:if test="${vhmmlEnvironment == 'prod'}">
			<!-- Google Tag Manager -->
			<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
				new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
				j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
				'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
				})(window,document,'script','dataLayer','GTM-MZ2BGT2');</script>
			<!-- End Google Tag Manager -->
		</c:if>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
		
		<script>
			window.jQuery || document.write('<script src="${pageContext.request.contextPath}/static/js/jquery-1.12.1.min.js"><\/script>');
		</script>
		
		<script src="${pageContext.request.contextPath}/static/js/jquery-ui.min.js"></script>		
		<script src="${pageContext.request.contextPath}/static/js/vhmml.js?version=${applicationVersion}"></script>
		<script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/validation.js?version=${applicationVersion}"></script>
		<script src="${pageContext.request.contextPath}/static/js/dialog.js?version=${applicationVersion}"></script>
		<script src="${pageContext.request.contextPath}/static/js/messages.js?version=${applicationVersion}"></script>
				
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
	</head>
	
	<body ontouchstart="closeTooltipsOnTouch(event);">
		
		<!-- Google Tag Manager (noscript) -->
		<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MZ2BGT2"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		<!-- End Google Tag Manager (noscript) -->
		
		<div id="vhmmlMessages"></div>	
		
		<div class="container page-wrap">
			<tiles:insertAttribute name="header" />
			<div id="back-to-top" title="Back to Top">
				<span class="fa-stack fa-lg">
				  <i class="fa fa-square-o fa-stack-2x"></i>
				  <i class="fa fa-angle-double-up fa-stack-1x"></i>
				</span>
			</div>
			<div class="main-content">
				<tiles:insertAttribute name="body" />
			</div>			
			<tiles:insertAttribute name="footer" />											
		</div>		
		
		<c:if test="${vhmmlEnvironment == 'prod'}">
			<script>
				(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function()
				{ (i[r].q=i[r].q||[]).push(arguments)}
				,i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
				ga('create', 'UA-56257562-1', 'auto');
				ga('send', 'pageview');
			</script>
		</c:if>
		
		<!-- 
			Bootstrap has to come after body content because it relies on jQuery and Mirador embeds a different version of jQuery, so Bootstrap 
			dialogs and such won't work on pages that use Mirador unless we put jQuery down here after Mirador has loaded jQuery 
		-->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<!-- these includes have to come after the body content is inserted or the textinput control isn't available in the document ready function below -->
		<script src="${pageContext.request.contextPath}/static/js/jquery-ui-plugins-core.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/jquery-ui-plugins-textinput.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.smartmenus/1.1.0/jquery.smartmenus.min.js"></script>
			
		<script>
			
			var sessionTimeoutSeconds = ${pageContext.session.maxInactiveInterval};
			var scheme = '${pageContext.request.scheme}';
			
			<c:if test="${vhmmlEnvironment == 'prod' || vhmmlEnvironment == 'test'}">
				scheme = 'https';
			</c:if>
			var serverName = '${pageContext.request.serverName}';
			var serverPort = '${pageContext.request.serverPort}';
			var contextPath = '${pageContext.request.contextPath}';
			
			// all global messages includes messages the user has already seen adn closed, we need this list so the admin screen can show them
			var allGlobalMessages = '';					
			var pageMessages = '';
			var fieldValidationMessages = '';
			var isAuthenticated = false;
			
			<security:authorize ifAnyGranted="ROLE_ADMIN">
				<c:if test="${vhmmlGlobalMessages != null}">
					allGlobalMessages = JSON.parse('${vhmmlGlobalMessages}');
				</c:if>
			</security:authorize>
			
			<security:authorize access="isAuthenticated()">
				isAuthenticated = true;
			</security:authorize>
			
			<c:if test="${pageMessages != null}">
				pageMessages = JSON.parse('${pageMessages}');				
			</c:if>
			
			<c:if test="${fieldErrorMessages != null}">
				fieldValidationMessages = JSON.parse('${fieldErrorMessages}');
			</c:if>
			
			<c:if test="${popupMessage != null}">
				new Dialog().show(JSON.parse('${popupMessage}'));
			</c:if>
			
			$(function() {
				$('input.digitsOnly').textinput({'filter': 'digits'}); 
				$('input.integersOnly').textinput({'whitelist': '0123456789-'}); 
				$('input.positiveDecimalsOnly').textinput({'whitelist': '0123456789.'});
				
				if(isAuthenticated) {
					initSessionTimeout();
				}
			});
		</script>		
	</body>
</html>