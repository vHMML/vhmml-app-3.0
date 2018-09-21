<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<div class="content blocks-container">
	<%-- vHMML Block system for Folio --%>
	<div class="row">
		<div class="col-md-6">
		<%-- FOLIO BLOCK 1 --%>
			<c:choose>
				<c:when test="${ folioBlockOne.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockOne.uiBlockComponents['FIELDLINKSEARCH'].value }">
					<a href="javascript:fieldLinkSearch(<c:out value='${folioBlockOne.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
				</c:when>
				<c:when test="${ !folioBlockOne.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockOne.uiBlockComponents['URL'].value }">
					<a href="<c:out value='${ folioBlockOne.uiBlockComponents["URL"].value }'/>">
				</c:when>
			</c:choose>
				
				<div id="${folioBlockOne.styleName}" class="block-container xl-block">
					<div class="block-text-container xl-block">
						<%-- styleName: folio-block-1-heading --%>
						<div class="${folioBlockOne.uiBlockComponents['HEADING'].styleName}">
							<h3><c:out value="${folioBlockOne.uiBlockComponents['HEADING'].value}"/></h3>
						</div>
						<%-- styleName: folio-block-1-content --%>
						<div class="${folioBlockOne.uiBlockComponents['CONTENT'].styleName}"><c:out value="${folioBlockOne.uiBlockComponents['CONTENT'].value}"/></div>
					</div>
					<div class="block-overlay xl-block"></div>
				</div>
				
			<c:if test="${ not empty folioBlockOne.uiBlockComponents['URL'].value || not empty folioBlockOne.uiBlockComponents['FIELDLINKSEARCH'].value }">
			</a>
			</c:if>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-xs-6">
					<%-- FOLIO BLOCK 2 --%>
					<c:choose>
						<c:when test="${ folioBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${folioBlockTwo.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !folioBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockTwo.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ folioBlockTwo.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${folioBlockTwo.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: folio-block-2-heading --%>
								<div class="${folioBlockTwo.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${folioBlockTwo.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: folio-block-2-content --%>
								<div class="${folioBlockTwo.uiBlockComponents['CONTENT'].styleName}"><c:out value="${folioBlockTwo.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty folioBlockTwo.uiBlockComponents['URL'].value || not empty folioBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>	
				<div class="col-xs-6">
					<%-- FOLIO BLOCK 3 --%>
					<c:choose>
						<c:when test="${ folioBlockThree.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockThree.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${folioBlockThree.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !folioBlockThree.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockThree.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ folioBlockThree.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${folioBlockThree.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: folio-block-3-heading --%>
								<div class="${folioBlockThree.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${folioBlockThree.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: folio-block-3-content --%>
								<div class="${folioBlockThree.uiBlockComponents['CONTENT'].styleName}"><c:out value="${folioBlockThree.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty folioBlockThree.uiBlockComponents['URL'].value || not empty folioBlockThree.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<%-- FOLIO BLOCK 4 --%>
					<c:choose>
						<c:when test="${ folioBlockFour.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockFour.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${folioBlockFour.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !folioBlockFour.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockFour.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ folioBlockFour.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${folioBlockFour.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: folio-block-4-heading --%>
								<div class="${folioBlockFour.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${folioBlockFour.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: folio-block-4-content --%>
								<div class="${folioBlockFour.uiBlockComponents['CONTENT'].styleName}"><c:out value="${folioBlockFour.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty folioBlockFour.uiBlockComponents['URL'].value || not empty folioBlockFour.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
				<div class="col-xs-6">
					<%-- FOLIO BLOCK 5 --%>
					<c:choose>
						<c:when test="${ folioBlockFive.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockFive.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${folioBlockFive.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !folioBlockFive.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty folioBlockFive.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ folioBlockFive.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${folioBlockFive.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: folio-block-5-heading --%>
								<div class="${folioBlockFive.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${folioBlockFive.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: folio-block-5-content --%>
								<div class="${folioBlockFive.uiBlockComponents['CONTENT'].styleName}"><c:out value="${folioBlockFive.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty folioBlockFive.uiBlockComponents['URL'].value || not empty folioBlockFive.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>