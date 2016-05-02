<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="customer-information has-fixedheader">

	<%-- <div id="login_form_">
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
				<div class="action_btns">
					<div>
						<a href="<c:url value='/serviceprovider/new'/>" class="Register">Register</a>
					</div>
					<input type="submit" value="Login">
				</div>
			</form:form>
			<a href="${pageContext.request.contextPath}/forgot_password" class="forgot_password">Forgot password?</a>
		</section>

	</div> --%>



	<div id="login-popup" class="">
		<div class="text-center">
			<h2>Login</h2>
		</div>

		<div class="row formFiledsBlock">
			<c:if test="${not empty message}">
				<p style="color: green; text-align: center;">${message}</p>
			</c:if>
			<form:form method="post"
				action="${pageContext.request.contextPath}/login/authenticate"
				modelAttribute="loginForm">

				<c:if test="${not empty errorMessage}">
					<div class="form-group label-floating">
						<label class="error" style="color: red;"> ${errorMessage}</label> <br/>
					</div>
				</c:if>
				<div class="form-group label-floating">
					<label class="control-label" for="focusedInput1">E-Mail</label>
					<form:input class="form-control" id="focusedInput1" path="username"
						type="text" />
					<form:errors path="username" cssClass="error" />
				</div>
				<div class="form-group label-floating">
					<label class="control-label" for="focusedInput1">Password</label>
					<form:password class="form-control" id="password" path="password" />
					<form:errors path="password" cssClass="error" />
				</div>
				<a class="popup-modal link decoration-line" href="#forgot-popup_1"
					data-effect="mfp-zoom-in">Forgot Password?</a>
				<br />
				<button type="submit" class="btn">Log In</button>
			</form:form>
			<div class="divider">Or</div>
			<button type="button" class="btn facebook-btn">
				<img src="<c:url value='/ui/images/fb.png'/>" alt="FaceBook">Log
				in with Facebook
			</button>
			<p>
				New to Chef Come Cook? <a class="popup-modal decoration-line"
					href="#signup-popup" data-effect="mfp-zoom-in"> Sign up!</a>
		</div>
	</div>

	<!-- FORGOT PASSWORD POPUP -->
	<div id="forgot-popup_1"
		class="popup-box form-ophwepup mfp-with-anim mfp-hide forgot-pw-popup">
		<div class="text-center">
			<img src="<c:url value='/ui/images/logo.png'/>" alt="">
		</div>
		<h2>Password Reset</h2>
		<form method="post" action="${pageContext.request.contextPath}/forgot_password">
			<div class="row formFiledsBlock">
				<p>Enter the email address you used to sign up and we'll send
					you a link to reset your password.</p>
				<div class="form-group label-floating m-b0">
					<label class="control-label" for="email">E-Mail</label> <input
						class="form-control" id="email" type="text" name="username" required="required">
				</div>
				<button type="submit" class="btn" id="btn-forgot-pw">Continue</button>
			</div>
		</form>
	</div>
</div>