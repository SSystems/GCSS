<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/registration.css'/>" />
</head>
<body>
	<div id="body-content">
		
		<div id="wrap" style="margin-top:-110px !important; padding-top:50px !important;">
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
					<label>Name</label>
					<form:input path="name" placeHolder="Full Name" required="true"/> <br/><form:errors path="name" cssStyle="color:red "/>
					<br />
					<label>Email Address</label>
					<form:input path="email" placeHolder="Email Address" required="true" /> <br/> <form:errors path="email" cssStyle="color:red "/>
					<br />

					<label>Password</label>
					<form:password path="password" placeHolder="Password" required="true"/> <br/> <form:errors path="password" cssStyle="color:red "/>
					<br />
					<label>Confirm Password</label>
					<form:password path="confirmPassword" placeHolder="Confirm Password" required="true"/><br/> <form:errors path="confirmPassword" cssStyle="color:red "/>
					<br />
					<label>Address</label>
					<form:input path="address1" placeHolder="Blcok No / Street / Landmark " required="true" /><br/> <form:errors path="address1" cssStyle="color:red "/>
					<br />
					<label>State</label>
					<form:select path="State">
						<form:option value="0">Massachusetts</form:option>
						<form:option value="1">Connecticut</form:option>
						<form:option value="2">Rhode Island</form:option>
						<form:option value="3">California</form:option>
					</form:select>
					<label>City / Town</label>
					<form:input path="address2" placeHolder="City / Town" required="true" /> <br/><form:errors path="address2" cssStyle="color:red "/>
					<br />
					<label>Zip Code</label>
					<form:input path="pincode" placeHolder="Zip Code" required="true" /> <br/><form:errors path="pincode" cssStyle="color:red "/>
					<br />
					<label>Mobile Number</label>
					<form:input path="mobileNumber" placeHolder="Mobile Number" required="true" /> <br/><form:errors path="mobileNumber" cssStyle="color:red "/>
					<br />
					<br />
					<br />
					<form:checkbox path="agreeTerms" cssStyle="width:auto !important;"/> 
				I agree to <a href="#" id="terms">Terms &amp; Conditions</a> 
					<br />  <br/> <form:errors path="agreeTerms" cssStyle="color:red "/>
					<input type="submit" id="register_button" value="Register">
				</form:form>
			</section>
		</div>
		<script type="text/javascript"
			src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
	</div>
</body>
</html>