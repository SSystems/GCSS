<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="body-content">

	<div id="login_form_">
		<section id="user_login">
			<p style="color: green; text-align: center;"> ${message} </p>
			<form:form method="post"
				action="${pageContext.request.contextPath}/login/authenticate"
				modelAttribute="login">
				<label class="error" style="color:red;"> ${errorMessage}</label>
					
				<label for="user_name">User Name</label>
				<form:input path="username" placeholder="E-Mail ID" autofocus="true"
					required="true" />
				<form:errors path="username" cssClass="error" />
				<br />
				<label for="password">Password</label>
				<form:password path="password" placeholder="password"
					required="true" />
				<form:errors path="password" cssClass="error" />
				<br />
				<input type="submit" value="Login" style="width:10% !important;">
				<br/>
				<div class="action_btns">
					<div>
						<a href="<c:url value='/serviceprovider/new'/>" class="Register">Register</a>
					</div>
					
				</div>
			</form:form>
			<a href="${pageContext.request.contextPath}/forgot_password" class="forgot_password">Forgot password?</a>
		</section>

	</div>
</div>