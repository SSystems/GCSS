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
				<div style="background-color: #c10330 !important;width: 25% !important;"> <a href="<c:url value='/serviceprovider/profile/my_dishes/edit'/>" style="color:white !important;"> My Dishes </a> </div>
				<div style="width: 25% !important;"> <a href="<c:url value='/serviceprovider/W9_form'/>"> Upload W-9 form </a> </div>
			</section>
			
			<section id="one" style="width: 90%;">
				<h3>Upload Your Dishes</h3>
				<br />
				<form:form method="post" action="save" modelAttribute="serviceProviderMyDishesForm" enctype="multipart/form-data">
				<form:hidden path="id"/>
				<c:set var="dpURL" scope="request" value="/serviceprovider/profile/dp?userFileId=${serviceProviderMyDishesForm.userDishPhotoFile.id}"/>
				<img alt="No Dish Photo Uploaded" src="<c:url value='${dpURL }'/>" height="200" width="200">
				
				<label>Dish Photo</label>
					<form:input path="dishPhotoMultipartFile" type="file" size="10"  accept="image/*" /> <form:errors path="dishPhotoMultipartFile" />
					<br />
				<label>Title </label>
					<form:input path="title" required="true"/> <form:errors path="title" />
					<br/>
				
				<label>Description </label>
					<form:textarea path="description" /> <form:errors path="description" />
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
			<hr>
			<section id="three" style="width: 90%;">
			<h3>Saved Dishes</h3>
			
			<c:choose>
				<c:when test="${empty userDishes }">
					No Saved Dishes
				</c:when>
				<c:otherwise>
					<c:forEach items="${userDishes }" var="userDish" varStatus="index">
				<article>
				<h4>${userDish.title }</h4>
				<c:set var="photoId"  scope="request" value="/serviceprovider/profile/dp?userFileId=${userDish.dishPhoto.id }"/>
				<img src="<c:url value='${photoId }'/>" alt="No Dish Photo Found" height="250" width="250">
				<p>${userDish.description}</p>
				<div class="action_btns">
						<div>
							<a href="edit?dish=${userDish.id}" >Edit</a>
						</div>
						<div>
							<a href="remove?dish=${userDish.id}" onClick="return confirm('Are you sure you want to remove this Dish from profile?')">Remove</a>
						</div>
				</div>
				<!-- <a href="#">
					<input type="button" value="Edit">
				</a>
				<a href="#"> <input type="button" value="Remove"> </a> -->
			</article>
			</c:forEach>
				</c:otherwise>
			</c:choose>
			</section>

		</div>
		<script type="text/javascript"
			src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>