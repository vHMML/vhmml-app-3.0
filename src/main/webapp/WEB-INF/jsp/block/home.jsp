<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ui-admin.css?version=${applicationVersion}"/>

<div class="block-select-container clearfix">
	<div class="row">
		<div class="col-sm-12">
			<h1>Block UI Admin</h1>
			<p>Select the block under the section you would like to edit.</p>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<%-- HOMEPAGE UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}" class="site-link">Homepage</a></h3>
	  				</div>
					<div class="panel-body">
						<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/homepage/headerBlock">Header</a>
							<a class="text-bar col-sm-12" href="${pageContext.request.contextPath}/admin/block/homepage/textBar">Text Bar</a>
							<div class="block-group">
								<a class="block-long col-sm-4 col-sm-offset-1" href="${pageContext.request.contextPath}/admin/block/homepage/homePageBlockOne">Block 1</a>
								<a class="block col-sm-2 col-sm-offset-1" href="${pageContext.request.contextPath}/admin/block/homepage/homePageBlockTwo">Block 2</a>
								<a class="block col-sm-2 col-sm-offset-1" href="${pageContext.request.contextPath}/admin/block/homepage/homePageBlockThree">Block 3</a>
							</div>
							<div class="block-group">
								<a class="block-long col-sm-4 col-sm-offset-1" href="${pageContext.request.contextPath}/admin/block/homepage/homePageBlockFour">Block 4</a>
								<a class="block col-sm-2 col-sm-offset-1" href="${pageContext.request.contextPath}/admin/block/homepage/homePageBlockFive">Block 5</a>
								<a class="block col-sm-2 col-sm-offset-1" href="${pageContext.request.contextPath}/admin/block/homepage/homePageBlockSix">Block 6</a>
							</div>
						</div>
				  	</div>
				</div>
			</div>
		
			<%-- READING ROOM UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}/readingRoom" class="site-link">Reading Room</a></h3>
	  				</div>
	  				<div class="panel-body">
	  					<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomHeaderBlock">Header</a>
							<div class="block-group col-sm-12">
								<a class="col-sm-6 block-big-square" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockOne">Block 1</a>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="row">
										<a class="col-sm-5" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockTwo">Block 2</a>
										<a class="col-sm-5 col-sm-offset-2" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockThree">Block 3</a>
									</div>
									<div class="row">
										<a class="col-sm-12" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockFour">Block 4</a>
									</div>
								</div>
							</div>
							<div class="block-group col-sm-12">
								<div class="col-sm-6">
									<div class="row">
										<a class="col-sm-5" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockFive">Block 5</a>
										<a class="col-sm-5 col-sm-offset-2" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockSix">Block 6</a>
									</div>
									<div class="row">
										<a class="col-sm-12" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockSeven">Block 7</a>
									</div>
								</div>
								<a class="col-sm-5 col-sm-offset-1 block-big-square" href="${pageContext.request.contextPath}/admin/block/readingRoom/readingRoomBlockEight">Block 8</a>
							</div>
						</div>
	  				</div>
	  			</div>
			</div>
			
			<%-- FOLIO UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}/folio" class="site-link">Folio</a></h3>
	  				</div>
	  				<div class="panel-body">
	  					<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/folio/folioHeaderBlock">Header</a>
							<div class="block-group col-sm-12">
								<a class="col-sm-6 block-big-square" href="${pageContext.request.contextPath}/admin/block/folio/folioBlockOne">Block 1</a>
								<div class="col-sm-5 col-sm-offset-1">
									<div class="row">
										<a class="col-sm-5" href="${pageContext.request.contextPath}/admin/block/folio/folioBlockTwo">Block 2</a>
										<a class="col-sm-5 col-sm-offset-2" href="${pageContext.request.contextPath}/admin/block/folio/folioBlockThree">Block 3</a>
									</div>
									<div class="row">
										<a class="col-sm-5" href="${pageContext.request.contextPath}/admin/block/folio/folioBlockFour">Block 4</a>
										<a class="col-sm-5 col-sm-offset-2" href="${pageContext.request.contextPath}/admin/block/folio/folioBlockFive">Block 5</a>
									</div>
								</div>
							</div>
						</div>
	  				</div>
	  			</div>
			</div>
			
		</div>
		<div class="col-sm-6">
		
			<%-- DATA PORTAL UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}/dataPortal" class="site-link">Data Portal</a></h3>
	  				</div>
	  				<div class="panel-body">
	  					<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/dataPortal/dataPortalHeaderBlock">Header</a>
						</div>
	  				</div>
	  			</div>
			</div>
			
			<%-- NEWS UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}/news" class="site-link">News</a></h3>
	  				</div>
	  				<div class="panel-body">
	  					<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/news/newsHeaderBlock">Header</a>
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/news/newsContentBlock">Content</a>
						</div>
	  				</div>
	  			</div>
			</div>
			
			<%-- REFERENCE UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}/reference" class="site-link">Reference</a></h3>
	  				</div>
	  				<div class="panel-body">
	  					<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/reference/referenceHeaderBlock">Header</a>
						</div>
	  				</div>
	  			</div>
			</div>
			
			<%-- LEXICON UI --%>
			<div class="col-sm-12">
				<div class="panel panel-default">
	  				<div class="panel-heading">
	  					<h3 class="panel-title"><a href="${pageContext.request.contextPath}/lexicon" class="site-link">Lexicon</a></h3>
	  				</div>
	  				<div class="panel-body">
	  					<div class="ui-homepage-menu row">
							<a class="header col-sm-12" href="${pageContext.request.contextPath}/admin/block/lexicon/lexiconHeaderBlock">Header</a>
						</div>
	  				</div>
	  			</div>
			</div>
		</div>
	</div>
</div>
