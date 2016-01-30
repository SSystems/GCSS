<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="body-content">

	<div id="login_form_">
		<section id="user_login">
			<p style="color: green; text-align: center;"> ${message} </p>
			<form:form method="post"
				action="${pageContext.request.contextPath}/change_password/submit"
				modelAttribute="changePasswordForm">
				<label class="error" style="color:red;"> ${errorMessage}</label>
				<form:hidden path="username"/>
				<label for="password">Current Password</label>
				<form:password path="password" placeholder="password"
					required="true" />
				<form:errors path="password" cssClass="error" />
				<br />
				<label for="password">New Password</label>
				<form:password path="newPassword" placeholder="new password"
					required="true" />
				<form:errors path="newPassword" cssClass="error" />
				<br />
				<label for="password">New Password Again</label>
				<form:password path="newPasswordAgain" placeholder="new password"
					required="true" />
				<form:errors path="newPasswordAgain" cssClass="error" />
				<br />
				<div class="action_btns">
					<input type="submit" value="Change Password">
				</div>
			</form:form>
		</section>

	</div>
</div>