<%--
  Created by IntelliJ IDEA.
  User: chamindah
  Date: 8/1/2015
  Time: 12:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>

<head>
<meta charset="UTF-8">
<title>Sri Medicals</title>
<spring:url value="/resources/core/css/global.css" var="coreCss" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<body>
	<%@ include file="header.jsp"%>

	<div class="main-content">
		<div class="wrapper">

			<!-- doctor search -->
			<section class="search-doc-box content-box">
				<h3>Appointments List</h3>

				<table class="tab-doc-search-res tab-alt">
					<tr>
						<td>Channel Date:</td>
						<td>${schedule.channelDate}</td>
					</tr>
					<tr>
						<td>Start Time:</td>
						<td>${schedule.startTime}</td>
					</tr>
					<tr>
						<td>Room:</td>
						<td>${schedule.roomNumber}</td>
					</tr>

				</table>
				<table class="tab-doc-search-res tab-alt">
					<thead>
						<tr>
							<th>Patient ID</th>
							<th>Status</th>
							<th>Time Slot</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty lists}">
							<c:forEach var="listValue" items="${lists}">
								<tr>
									<td>${listValue.patientNumber}</td>
									<td>${listValue.channelStatus}</td>
									<td>${listValue.timeSlot}</td>
									
									<td><a
										href="newTreatment?channelId=${listValue.chanScheId}&docId=${listValue.doctorNumber}&custId=${listValue.patientNumber}">Treatment</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>

			</section>


		</div>
		<!-- end of wrapper -->
	</div>
	<!-- end of main content -->
	<%@include file="footer.jsp"%>

</body>

</html>
