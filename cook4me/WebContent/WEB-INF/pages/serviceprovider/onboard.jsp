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
			<div id="first_background"></div>
			<div id="overlay_black"></div> 
			<section id="register">
				<form:form method="post" action="onboard"
					modelAttribute="serviceProviderForm">
					
					<span style="color:red;"> ${errorMessage } </span>
					
					<label>Are you a</label>
					<form:select path="serviceProviderType">
						<form:option value="0">Individual</form:option>
						<form:option value="1">Organization</form:option>
					</form:select>
					<label>Full Name</label>
					<form:input path="name" placeHolder="Name" required="true"/> <form:errors path="name" cssStyle="color:red "/>
					<br />
					<label>Email Address</label>
					<form:input path="email" placeHolder="email" required="true" /> <form:errors path="email" cssStyle="color:red "/>
					<br />

					<label>Password</label>
					<form:password path="password" placeHolder="password" required="true"/> <form:errors path="password" cssStyle="color:red "/>
					<br />
					<label>Confirm Password</label>
					<form:password path="confirmPassword" placeHolder="password" required="true"/> <form:errors path="confirmPassword" cssStyle="color:red "/>
					<br />
					<label>Address Line -- 1</label>
					<form:input path="address1" placeHolder="address1" required="true" /> <form:errors path="address1" cssStyle="color:red "/>
					<br />
					<label>Address Line -- 2</label>
					<form:input path="address2" placeHolder="address2" required="true" /> <form:errors path="address2" cssStyle="color:red "/>
					<br />
					<label>Zip Code</label>
					<form:input path="pincode" placeHolder="pincode" required="true" /> <form:errors path="pincode" cssStyle="color:red "/>
					<br />
					<label>Mobile/Phone Number</label>
					<form:input path="mobileNumber" placeHolder="mobileNumber" required="true" /> <form:errors path="mobileNumber" cssStyle="color:red "/>
					<br />
					<br />
					<br />
					<form:checkbox path="agreeTerms" cssStyle="width:auto !important;"/> 
				I agree to <a href="#" id="terms">terms and conditions</a> 
					<br />  <form:errors path="agreeTerms" cssStyle="color:red "/>
					<input type="submit" id="register_button" value="Register">
				</form:form>
			</section>
		</div>
		<script type="text/javascript"
			src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>