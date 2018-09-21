<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tiles:importAttribute name="pageCategory"/>

<header id="site-header">
	<nav class="top-nav" role="navigation">
		<!-- Mobile menu toggle button (hamburger/x icon) -->
		<input id="main-menu-state" type="checkbox" />
		<label class="main-menu-btn" for="main-menu-state">
			<span class="main-menu-btn-icon"></span>
		</label>
		
		<a class="logo nav-brand" itemprop="url" href="${pageContext.request.contextPath}/" >	
			<img itemprop="logo" src="${pageContext.request.contextPath}/static/img/vhmml-logo.png" height="48" alt="vHMML">
			<img itemprop="logo" class="printOnly" src="${pageContext.request.contextPath}/static/img/vhmml-logo-black.png" height="48" alt="vHMML">
	    </a>
	    
	    <ul id="main-menu" class="sm sm-vhmml">
	    	<c:if test="${configValues['hide.reading.room'].value == 'false'}">
		 		<li><a href="${pageContext.request.contextPath}/readingRoom">Reading Room</a></li>
			</c:if>
			 
			<li><a href="${pageContext.request.contextPath}/school">School</a></li>
			 
			<c:if test="${configValues['hide.folio'].value == 'false'}">
				<li><a href="${pageContext.request.contextPath}/folio">Folio</a></li>
			</c:if>
			
			<li><a href="${pageContext.request.contextPath}/lexicon">Lexicon</a></li>
			<li><a href="${pageContext.request.contextPath}/reference">Reference</a></li>
			
			<c:if test="${configValues['hide.data.portal'].value == 'false'}">
				<li>
					<a href="${pageContext.request.contextPath}/dataPortal">Data Portal</a>
				</li>
			</c:if>
			
			<li class="top-nav-dropdown-menu">
				<a href="#">About<span class="caret nav-caret"></span></a>
			   	<ul>
				    <li><a href="${pageContext.request.contextPath}/about">About vHMML</a></li>
				    
				    <c:if test="${configValues['hide.news'].value == 'false'}">
						<li><a href="${pageContext.request.contextPath}/news">News</a></li>
					</c:if>
					
					<li><a href="${pageContext.request.contextPath}/terms">Terms of Use</a></li>
					<li><a href="${pageContext.request.contextPath}/privacy">Privacy Policy</a></li>
					<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
					<li><a href="${pageHelpLink}" class="saveSearch">Help</a></li>
					<li class="nav-line-separator"></li>
					<li><a href="https://securelb.imodules.com/s/1433/giving/17/interior.aspx?sid=1433&gid=3&pgid=4204&cid=6532" target="_blank">Donate: Support Our Mission</a></li>
			   	</ul>
			</li>
			
			<%-- Float "My List" to the far right on desktop viewports --%>
			<li class="non-mobile-link">
				<a href="${pageContext.request.contextPath}/myList"><span class="glyphicon glyphicon-star"></span>&nbsp;My List (<span id="myListSaveCounter"><c:out value="${vhmmlSession.myListSaves.size() > 0 ? vhmmlSession.myListSaves.size() : 0}"></c:out></span>)</a>
			</li>
			
			<security:authorize access="!isAuthenticated()">
				<li class="top-nav-sign-in pull-right">		
					<a href="${pageContext.request.contextPath}/login">Sign In</a><span class="separator light-gray">|</span><a href="${pageContext.request.contextPath}/registration">Register</a>
				</li>
			</security:authorize>
			
			<security:authorize access="isAuthenticated()">
				<li class="top-nav-dropdown-menu pull-right">
					<security:authentication property="principal.firstName" var="firstName"/>			
					<a href="#">Hi <c:out value="${firstName}"/> <span class="caret nav-caret"> </span></a>
					<ul>
					
						<security:authorize ifAnyGranted="ROLE_ADMIN">
							
							<li>
								<a href="${pageContext.request.contextPath}/admin"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;Administration</a>
							</li>
						</security:authorize>
						
						<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_LEVEL_I_CATALOGER,ROLE_LEVEL_II_CATALOGER,ROLE_LEVEL_III_CATALOGER">
							
							<li>
								<a href="${pageContext.request.contextPath}/catalogDatabase"><span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;Catalog Database</a>
							</li>
						</security:authorize>
						
						<li><a href="${pageContext.request.contextPath}/user/accountSettings"><span class="glyphicon glyphicon-cog"></span>&nbsp;&nbsp;My Account</a></li>
						<li><a href="${pageContext.request.contextPath}/user/changePassword"><span class="glyphicon glyphicon-lock"></span>&nbsp;&nbsp;Change Password</a></li>
						<li><a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp;&nbsp;Sign Out</a></li>
						
				    </ul>							
				</li>
			</security:authorize>	
		
			<%-- Keep "My List" at the bottom in mobile viewports --%>
			<li class="mobile-link">
				<a href="${pageContext.request.contextPath}/myList"><span class="glyphicon glyphicon-star"></span>&nbsp;My List (<span id="myListSaveCounter"><c:out value="${vhmmlSession.myListSaves.size() > 0 ? vhmmlSession.myListSaves.size() : 0}"></c:out></span>)</a>
			</li>
				
			
	    </ul>
	</nav>
	
	<c:set var="showBreadcrumbs">
		<tiles:insertAttribute name="showBreadcrumbs"/>
	</c:set>
	
	<c:if test="${showBreadcrumbs}">
		<div class="breadcrumbs light-gray">	
			<span class="wrapper">
			<!-- TODO: rename HelpLinkFilter the breadcrumbs variable is put on the request by the HelpLink filter -->
				<c:forEach var="breadcrumb" items="${breadcrumbs}" varStatus="loopStatus">			
					<c:set var="cssClass" value="site-link"/>				
					<c:if test="${loopStatus.index > 0}">
						<span> / </span>
					</c:if>
					
					<a href="${breadcrumb.value}" class="${cssClass}">${breadcrumb.key}</a>
				</c:forEach>			
			</span>
			
			<div class="breadcrumb-buttons">
				<tiles:insertAttribute name="breadcrumbButtons"/>
			</div>
		</div>
	</c:if>

</header>