<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<div class="content blocks-container">
	<%-- vHMML Block system for Reading Room --%>
	<div class="row">
		<div class="col-md-6">
			<%-- READING ROOM BLOCK 1 --%>
			<c:choose>
				<c:when test="${ readingRoomBlockOne.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockOne.uiBlockComponents['FIELDLINKSEARCH'].value }">
					<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockOne.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
				</c:when>
				<c:when test="${ !readingRoomBlockOne.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockOne.uiBlockComponents['URL'].value }">
					<a href="<c:out value='${ readingRoomBlockOne.uiBlockComponents["URL"].value }'/>">
				</c:when>
			</c:choose>
				
				<div id="${readingRoomBlockOne.styleName}" class="block-container xl-block">
					<div class="block-text-container xl-block">
						<%-- styleName: reading-room-block-1-heading --%>
						<div class="${readingRoomBlockOne.uiBlockComponents['HEADING'].styleName}">
							<h3><c:out value="${readingRoomBlockOne.uiBlockComponents['HEADING'].value}"/></h3>
						</div>
						<%-- styleName: reading-room-block-1-content --%>
						<div class="${readingRoomBlockOne.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockOne.uiBlockComponents['CONTENT'].value}"/></div>
					</div>
					<div class="block-overlay xl-block"></div>
				</div>
				
			<c:if test="${ not empty readingRoomBlockOne.uiBlockComponents['URL'].value || not empty readingRoomBlockOne.uiBlockComponents['FIELDLINKSEARCH'].value }">
			</a>
			</c:if>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-xs-6">
					<%-- READING ROOM BLOCK 2 --%>
					<c:choose>
						<c:when test="${ readingRoomBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockTwo.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !readingRoomBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockTwo.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ readingRoomBlockTwo.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${readingRoomBlockTwo.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: reading-room-block-2-heading --%>
								<div class="${readingRoomBlockTwo.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${readingRoomBlockTwo.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: reading-room-block-2-content --%>
								<div class="${readingRoomBlockTwo.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockTwo.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty readingRoomBlockTwo.uiBlockComponents['URL'].value || not empty readingRoomBlockTwo.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>	
				<div class="col-xs-6">
					<%-- READING ROOM BLOCK 3 --%>
					<c:choose>
						<c:when test="${ readingRoomBlockThree.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockThree.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockThree.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !readingRoomBlockThree.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockThree.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ readingRoomBlockThree.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${readingRoomBlockThree.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: reading-room-block-3-heading --%>
								<div class="${readingRoomBlockThree.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${readingRoomBlockThree.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: reading-room-block-3-content --%>
								<div class="${readingRoomBlockThree.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockThree.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty readingRoomBlockThree.uiBlockComponents['URL'].value || not empty readingRoomBlockThree.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<%-- READING ROOM BLOCK 4 --%>
					<c:choose>
						<c:when test="${ readingRoomBlockFour.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockFour.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockFour.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !readingRoomBlockFour.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockFour.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ readingRoomBlockFour.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${readingRoomBlockFour.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: reading-room-block-3-heading --%>
								<div class="${readingRoomBlockFour.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${readingRoomBlockFour.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: reading-room-block-3-content --%>
								<div class="${readingRoomBlockFour.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockFour.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty readingRoomBlockFour.uiBlockComponents['URL'].value || not empty readingRoomBlockFour.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="row">
				<div class="col-xs-6">
					<%-- READING ROOM BLOCK 5 --%>
					<c:choose>
						<c:when test="${ readingRoomBlockFive.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockFive.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockFive.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !readingRoomBlockFive.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockFive.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ readingRoomBlockFive.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${readingRoomBlockFive.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: reading-room-block-2-heading --%>
								<div class="${readingRoomBlockFive.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${readingRoomBlockFive.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: reading-room-block-2-content --%>
								<div class="${readingRoomBlockFive.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockFive.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty readingRoomBlockFive.uiBlockComponents['URL'].value || not empty readingRoomBlockFive.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>	
				<div class="col-xs-6">
					<%-- READING ROOM BLOCK 6 --%>
					<c:choose>
						<c:when test="${ readingRoomBlockSix.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockSix.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockSix.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !readingRoomBlockSix.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockSix.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ readingRoomBlockSix.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${readingRoomBlockSix.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: reading-room-block-3-heading --%>
								<div class="${readingRoomBlockSix.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${readingRoomBlockSix.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: reading-room-block-3-content --%>
								<div class="${readingRoomBlockSix.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockSix.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty readingRoomBlockSix.uiBlockComponents['URL'].value || not empty readingRoomBlockSix.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<%-- READING ROOM BLOCK 7 --%>
					<c:choose>
						<c:when test="${ readingRoomBlockSeven.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockSeven.uiBlockComponents['FIELDLINKSEARCH'].value }">
							<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockSeven.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
						</c:when>
						<c:when test="${ !readingRoomBlockSeven.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockSeven.uiBlockComponents['URL'].value }">
							<a href="<c:out value='${ readingRoomBlockSeven.uiBlockComponents["URL"].value }'/>">
						</c:when>
					</c:choose>
						
						<div id="${readingRoomBlockSeven.styleName}" class="block-container">
							<div class="block-text-container">
								<%-- styleName: reading-room-block-3-heading --%>
								<div class="${readingRoomBlockSeven.uiBlockComponents['HEADING'].styleName}">
									<h3><c:out value="${readingRoomBlockSeven.uiBlockComponents['HEADING'].value}"/></h3>
								</div>
								<%-- styleName: reading-room-block-3-content --%>
								<div class="${readingRoomBlockSeven.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockSeven.uiBlockComponents['CONTENT'].value}"/></div>
							</div>
							<div class="block-overlay"></div>
						</div>
						
					<c:if test="${ not empty readingRoomBlockSeven.uiBlockComponents['URL'].value || not empty readingRoomBlockSeven.uiBlockComponents['FIELDLINKSEARCH'].value }">
					</a>
					</c:if>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<%-- READING ROOM BLOCK 8 --%>
			<c:choose>
				<c:when test="${ readingRoomBlockEight.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockEight.uiBlockComponents['FIELDLINKSEARCH'].value }">
					<a href="javascript:fieldLinkSearch(<c:out value='${readingRoomBlockEight.uiBlockComponents["FIELDLINKSEARCH"].value}'/>)">
				</c:when>
				<c:when test="${ !readingRoomBlockEight.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty readingRoomBlockEight.uiBlockComponents['URL'].value }">
					<a href="<c:out value='${ readingRoomBlockEight.uiBlockComponents["URL"].value }'/>">
				</c:when>
			</c:choose>
				
				<div id="${readingRoomBlockEight.styleName}" class="block-container xl-block">
					<div class="block-text-container xl-block">
						<%-- styleName: reading-room-block-1-heading --%>
						<div class="${readingRoomBlockEight.uiBlockComponents['HEADING'].styleName}">
							<h3><c:out value="${readingRoomBlockEight.uiBlockComponents['HEADING'].value}"/></h3>
						</div>
						<%-- styleName: reading-room-block-1-content --%>
						<div class="${readingRoomBlockEight.uiBlockComponents['CONTENT'].styleName}"><c:out value="${readingRoomBlockEight.uiBlockComponents['CONTENT'].value}"/></div>
					</div>
					<div class="block-overlay xl-block"></div>
				</div>
				
			<c:if test="${ not empty readingRoomBlockEight.uiBlockComponents['URL'].value || not empty readingRoomBlockEight.uiBlockComponents['FIELDLINKSEARCH'].value }">
			</a>
			</c:if>
		</div>
	</div>
</div>