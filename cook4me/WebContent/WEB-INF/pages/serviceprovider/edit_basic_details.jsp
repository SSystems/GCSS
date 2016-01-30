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
			<section class="action_btns">
				<div style="background-color: #c10330 !important; width: 25% !important;"> <a href="<c:url value='/serviceprovider/profile/basic_details/edit'/>" style="color:white !important;"> Basic Details </a> </div>
				<div style="width: 25% !important"> <a href="<c:url value='/serviceprovider/profile/my_dishes/edit'/>"> My Dishes </a> </div>
				<div style="width: 25% !important"> <a href="<c:url value='/serviceprovider/W9_form'/>"> Upload W-9 form </a> </div>
			</section>
			<section id="one" style="width: 90%;">
				<h3>Personal Information</h3>
				<br />
				<form:form method="post" action="save" modelAttribute="serviceProviderBasicDetailsForm" enctype="multipart/form-data">
				<c:set var="dpURL" scope="request" value="/serviceprovider/profile/dp?userFileId=${serviceProviderBasicDetailsForm.userProfilePhoto.id}"/>
				<img alt="No Profile Picture Uploaded" src="<c:url value='${dpURL }'/>" height="200" width="200">
				<br/>
				<label>Profile Photo</label>
					<form:input path="profilePhoto" type="file" size="10"  accept="image/*" /> <form:errors path="profilePhoto"/> 
					<br />
				<label>Dish you can prepare</label>
					<form:checkboxes items="${cuisines }" path="cuisines" />
					<br/>
				<label>About Me </label>
					<form:textarea path="aboutMe" row="40" cols="40"/> <form:errors path="aboutMe" />
					<br/>
					<input type="submit" value="Update">
					<%-- <table style="margin: 0 auto; border-spacing: 5px;" >
						<tr>
							<td>Profile Photo</td>
							<td><form:input path="profilePhoto" type="file" /></td>
						</tr>
						<tr>
							<td>Dish you can prepare</td>
							<td><form:checkboxes items="${cuisines }" path="cuisines" />
							</td>
						</tr>
						<tr>
							<td>Why should foodies hire you</td>
							<td> <form:textarea path="aboutMe" row="5" cols="40"/>
							</td>
						</tr>
					</table> --%>
				</form:form>
			</section>

		</div>
		<script type="text/javascript"
			src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>