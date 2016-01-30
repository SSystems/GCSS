<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="body-content">

	<div id="login_form_">
		<section id="user_login">
			<p style="color: green; text-align: center;"> ${message} </p>
			<form:form method="get"
				action="${pageContext.request.contextPath}/forgot_password/"
				modelAttribute="loginForm">
				<label class="error" style="color:red;"> ${errorMessage}</label>
				<label for="password">What is your Username / Email ID</label>
				<form:input path="username" placeholder="Username"
					required="true" />
				<form:errors path="username" cssClass="error" />
				<br />
				
				<div class="action_btns">
					<input type="submit" value="Submit">
				</div>
			</form:form>
		</section>

	</div>
</div>