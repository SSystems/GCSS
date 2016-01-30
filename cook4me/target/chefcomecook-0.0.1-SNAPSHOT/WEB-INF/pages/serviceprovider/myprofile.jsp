<%@page import="org.apache.commons.lang3.StringUtils"%>
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
			<section id="one">
				<h1>${user.firstName} ${user.lastName }</h1>
				<div class="cycle-slideshow" >
				<c:choose>
					<c:when test="${empty user.profilePic.id}">
						<div style="">
							<img src="<c:url value='/ui/images/default-user-avatar.png'/>" alt="" height="300" width="300">
						</div>
					</c:when>
					<c:otherwise>
						<c:set var="imageURL" value="/serviceprovider/profile/dp?userFileId=${user.profilePic.id }"/>
						<img src="<c:url value='${imageURL }'/>" alt="" height="300" width="300">
					</c:otherwise>
				</c:choose>
				</div>
		<article>
			<span>&#127860;</span>
			<p>I can cook ${user.cuisines }</p> 
			<h3>Requirements to Cook</h3>
			<p id="requirement">No special Kitchen Requirements. I only need
				a stove and a sink</p>
		</article>
		</section>
		<hr>
		<section id="two">
			<%-- <img src="<c:url value='/ui/images/cook.jpg'/>" alt=""> --%>
			<article>
				<h1>About Chef</h1>
				<p>${user.aboutMe}</p>
			</article>
		</section>
		<hr>
		<section id="three">
			<h1>My Dishes</h1>
			<c:choose>
				<c:when test="${empty user.userDishes }">
					No Saved Dishes
				</c:when>
				<c:otherwise>
					<c:forEach items="${user.userDishes }" var="userDish" varStatus="index">
				<article>
				<h4>${userDish.title }</h4>
				<c:set var="photoId"  scope="request" value="/serviceprovider/profile/dp?userFileId=${userDish.dishPhoto.id }"/>
				<img src="<c:url value='${photoId }'/>" alt="No Dish Photo Found" height="250" width="250">
				
				<p>${userDish.description}</p>
			</article>
			</c:forEach>
				</c:otherwise>
			</c:choose>
		</section>
		<!-- <hr>
		<section id="four">
			<h1>Reviews</h1>
			<article>
				<p>
					The experience is pleasent.The experience is pleasent.The
					experience is pleasent. <br> <br> <span>-- Hemanth</span>
				</p>

			</article>
			<article>
				<p>
					The experience is pleasent.The experience is pleasent.The
					experience is pleasent. <br> <br> <span>-- Hemanth</span>
				</p>

			</article>
			<article>
				<p>
					The experience is pleasent.The experience is pleasent.The
					experience is pleasent.The experience is pleasent. <br> <br>
					<span>-- Hemanth</span>
				</p>

			</article>
		</section> -->
	</div>
	<script src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>