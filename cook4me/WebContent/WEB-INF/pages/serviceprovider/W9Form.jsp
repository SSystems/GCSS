<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/profile.css'/>" />
</head>
<body>
	<div id="body-content">
		<div id="wrap">
			<p style="color: green; text-align: center;"> ${message} </p>
			<p style="color: red; text-align: center;"> ${errorMessage} </p>
			
			<section class="action_btns">
				<div style="width: 25% !important;"> <a href="<c:url value='/serviceprovider/profile/basic_details/edit'/>"> Basic Details </a> </div>
				<div style="width: 25% !important;"> <a href="<c:url value='/serviceprovider/profile/my_dishes/edit'/>"> My Dishes </a> </div>
				<div style="background-color: #c10330 !important;width: 25% !important;"> <a href="<c:url value='/serviceprovider/W9_form'/>" style="color:white !important;"> Upload W-9 form </a> </div>
			</section>
			
			<section id="one" style="width: 90%;">
				<form:form method="post" action="${pageContext.request.contextPath}/serviceprovider/W9_form/upload" 
							modelAttribute="serviceProviderW9Form" enctype="multipart/form-data">
				
				<c:if test="${not empty  serviceProviderW9Form.userW9FormFile}">
					<c:set var="formURL" value="${pageContext.request.contextPath}/serviceprovider/downloadFile?userFileId=${serviceProviderW9Form.userW9FormFile.id}" />
					<a href="${ formURL}" target="_blank">Download</a> your latest W-9 Form.
					<br/> <br/> <br/>
				</c:if>
				
				<h3>Upload New W-9 Form</h3>
				<br />
				
				<form:input path="w9MultipartFile" type="file" accept="application/pdf,application/msword"/> <form:errors path="w9MultipartFile"/> 
				<input type="submit" value="Upload">
				</form:form>
			</section>

		</div>
		<script type="text/javascript"
			src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>