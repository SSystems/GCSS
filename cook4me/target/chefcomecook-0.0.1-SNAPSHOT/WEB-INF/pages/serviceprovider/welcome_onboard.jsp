<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/registration.css'/>" />
</head>
<body>
	<div id="body-content">
		<div id="wrap">
			<section id="one" style="width: 70%;">
				<article id="welcome_onboard">
				<p>
					Thank you so much for registration. <br/>
					We welcome you to ChefComeCook. You will be able to login to the system by verifying link sent to your email ${email}
					
				</p>
				</article>
			</section>

		</div>
		<script type="text/javascript"
			src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>