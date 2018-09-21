<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">					
	<div class="table-responsive">		
		<table id="usersTable" class="table table-striped table-hover table-nowrap">				
			<thead>
				<tr>
					<th class="col-lg-6">Logger Name</th>
					<th class="col-lg-6">Log Level</th>																
				</tr>
			</thead>
			<tbody>
				<c:forEach var="logger" items="${loggers}">
					<c:if test="${not empty logger.level}">
						<tr>
							<td>${logger.name}</td>
							<td>
								<select class="logLevel" data-logger="${logger.name}">
									<%-- for some reason TRACE isn't included as one of the log levels in log4j but we need to set
										 the org.hibernate.type logger to TRACE to get SQL parameters logged so it has to be in the list
			 						--%>
			 						<option>TRACE</option>
									<c:forEach var="logLevel" items="${logLevels}">									
										<option
											<c:if test="${logger.level.toString().equals(logLevel.label)}">
												selected
											</c:if>
										>${logLevel.label}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>		
		</table>			
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/admin/logging.js"></script>