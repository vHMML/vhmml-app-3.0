<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/home-page.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-general.css?version=${applicationVersion}"/>

<jsp:include page="home-inline-styles.jsp"></jsp:include>

<div class="clearfix">
		<c:if test="${ not empty headerBlock.uiBlockComponents['URL'].value }">
		<a href="${ headerBlock.uiBlockComponents['URL'].value }">
		</c:if>
		
		<div id="homepage-header" class="${headerBlock.styleName} block-container">
			<div id="homepage-header-overlay">
			</div>
		</div>
		
		<c:if test="${ not empty headerBlock.uiBlockComponents['URL'].value }">
		</a>
		</c:if>
	
	<c:if test="${ not empty textBar.uiBlockComponents['CONTENT'].value }">
		<div id="homepage-text-bar" class="${textBar.styleName}">
			<h4><c:out value="${textBar.uiBlockComponents['CONTENT'].value}" /></h4>
		</div>
	</c:if>
	
	<div class="homepage-content-container">
	<div class="col-md-6">
		<div class="homepage-block-col-1 clearfix">
			<div class="row">
				<%-- styleName: homepage-block-1 --%>
				<div class="col-sm-12">
					<c:if test="${ not empty homepageBlockOne.uiBlockComponents['URL'].value }">
					<a href="${ homepageBlockOne.uiBlockComponents['URL'].value }">
					</c:if>
						
						<div id="${homepageBlockOne.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: homepage-block-1-heading --%>
								<div class="${homepageBlockOne.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${homepageBlockOne.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: homepage-block-1-content --%>
								<div class="${homepageBlockOne.uiBlockComponents['CONTENT'].styleName}"><c:out value="${homepageBlockOne.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty homepageBlockOne.uiBlockComponents['URL'].value }">
					</a>
					</c:if>
				</div>
			</div>
			<div class="row">
			<%-- styleName: homepage-block-4 --%>
			<div class="col-sm-12">
				<c:if test="${ not empty homepageBlockFour.uiBlockComponents['URL'].value }">
				<a href="${ homepageBlockFour.uiBlockComponents['URL'].value }">
				</c:if>
						
				<div id="${homepageBlockFour.styleName}" class="block-container">
					<div class="block-text-container">
						<%-- styleName: homepage-block-4-heading --%>
						<div class="${homepageBlockFour.uiBlockComponents['HEADING'].styleName}">
							<h3><c:out value="${homepageBlockFour.uiBlockComponents['HEADING'].value}"/></h3>
						</div>
						<%-- styleName: homepage-block-4-content --%>
						<div class="${homepageBlockFour.uiBlockComponents['CONTENT'].styleName}"><c:out value="${homepageBlockFour.uiBlockComponents['CONTENT'].value}"/></div>
					</div>
					<div class="block-overlay"></div>
				</div>
				
				<c:if test="${ not empty homepageBlockFour.uiBlockComponents['URL'].value }">
				</a>
				</c:if>
			</div>
			</div>
			
		</div>
	</div>
	<div class="col-md-6">
		<div class="homepage-block-col-2 clearfix">
				<div class="row">
					<%-- styleName: homepage-block-2 --%>
					<div class="col-xs-6">
						
						<c:if test="${ not empty homepageBlockTwo.uiBlockComponents['URL'].value }">
						<a href="${ homepageBlockTwo.uiBlockComponents['URL'].value }">
						</c:if>
					
						<div id="${homepageBlockTwo.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: homepage-block-2-heading --%>
								<div class="${homepageBlockTwo.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${homepageBlockTwo.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: homepage-block-2-content --%>
								<div class="${homepageBlockTwo.uiBlockComponents['CONTENT'].styleName}"><c:out value="${homepageBlockTwo.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
						<c:if test="${ not empty homepageBlockTwo.uiBlockComponents['URL'].value }">
						</a>
						</c:if>
					</div>
					<%-- styleName: homepage-block-3 --%>
					<div class="col-xs-6">
					
						<c:if test="${ not empty homepageBlockThree.uiBlockComponents['URL'].value }">
						<a href="${ homepageBlockThree.uiBlockComponents['URL'].value }">
						</c:if>
						
						<div id="${homepageBlockThree.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: homepage-block-3-heading --%>
								<div class="${homepageBlockThree.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${homepageBlockThree.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: homepage-block-3-content --%>
								<div class="${homepageBlockThree.uiBlockComponents['CONTENT'].styleName}"><c:out value="${homepageBlockThree.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
						<c:if test="${ not empty homepageBlockThree.uiBlockComponents['URL'].value }">
						</a>
						</c:if>
					</div>
				</div>
				<div class="row">
					<%-- styleName: homepage-block-5 --%>
					<div class="col-xs-6">
							
							<c:if test="${ not empty homepageBlockFive.uiBlockComponents['URL'].value }">
							<a href="${ homepageBlockFive.uiBlockComponents['URL'].value }">
							</c:if>
							
							<div id="${homepageBlockFive.styleName}" class="block-container">
								<div class="block-text-container">
									<%-- styleName: homepage-block-5-heading --%>
									<div class="${homepageBlockFive.uiBlockComponents['HEADING'].styleName}">
										<h3><c:out value="${homepageBlockFive.uiBlockComponents['HEADING'].value}"/></h3>
									</div>
									<%-- styleName: homepage-block-5-content --%>
									<div class="${homepageBlockFive.uiBlockComponents['CONTENT'].styleName}"><c:out value="${homepageBlockFive.uiBlockComponents['CONTENT'].value}"/></div>
								</div>
								<div class="block-overlay"></div>
							</div>
							
							<c:if test="${ not empty homepageBlockFive.uiBlockComponents['URL'].value }">
							</a>
							</c:if>
						</div>
						
					<%-- styleName: homepage-block-6 --%>
					<div class="col-xs-6">
						
							<c:if test="${ not empty homepageBlockSix.uiBlockComponents['URL'].value }">
							<a href="${ homepageBlockSix.uiBlockComponents['URL'].value }">
							</c:if>
							
							<div id="${homepageBlockSix.styleName}" class="block-container">
								<div class="block-text-container">
									<%-- styleName: homepage-block-6-heading --%>
									<div class="${homepageBlockSix.uiBlockComponents['HEADING'].styleName}">
										<h3><c:out value="${homepageBlockSix.uiBlockComponents['HEADING'].value}"/></h3>
									</div>
									<%-- styleName: homepage-block-6-content --%>
									<div class="${homepageBlockSix.uiBlockComponents['CONTENT'].styleName}"><c:out value="${homepageBlockSix.uiBlockComponents['CONTENT'].value}"/></div>
								</div>
								<div class="block-overlay"></div>
							</div>
							
							<c:if test="${ not empty homepageBlockSix.uiBlockComponents['URL'].value }">
							</a>
							</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>