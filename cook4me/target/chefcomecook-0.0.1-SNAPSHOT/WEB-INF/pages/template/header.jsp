<%@page import="com.globacomp.ssystem.c4m.web.WebUser"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<body>
		<div id="heading">
			<header>
				<div id="mobile">
					<a href="<c:url value='/'/>" class="image"></a> <a
						href="#login_form" rel="leanModal" id="modal_trigger">Login</a> <a
						href="<c:url value='/how_we_work'/>">How We Work</a> <a
						href="<c:url value='/contactus'/>">Contact Us</a>

				</div>
				<div id="tablet">
					<a href="<c:url value='/'/>" class="image"></a> <a
						href="<c:url value='/how_we_work'/>">How We Work</a> <a
						href="<c:url value='/contactus'/>">Contact Us</a> 
						<%
						WebUser user = (WebUser) session.getAttribute(WebUser.SESSION_ATTRIBUTE);
						if (user != null){ 
						%>
						<span id="login"> <%= user.getFirstName() %> <span class="icon-arrow-down"></span></span>
						<ul id="login_list">
							<li><a href="<c:url value='/serviceprovider/myprofile'/>">My Profile</a></li>
							<li><a href="<c:url value='/serviceprovider/profile/edit'/>">Edit Profile</a></li>
							<li><a href="<c:url value='/change_password'/>">Change Password</a></li>
							<li><a href="<c:url value='/logout'/>">logout</a></li>
						 </ul>
						<%-- <a href="<c:url value='/serviceprovider/myprofile'/>" > <%= user.getFirstName() %></a> --%>
						
						<%} else {%>
						<a href="<c:url value='/login'/>" > Login</a>
						<% }%>
						<!-- <span id="login">Login
						<span class="icon-arrow-down"></span>
					</span> -->
					<ul id="login_list">
						<li><a href="#login_form" rel="leanModal" id="modal_trigger">Book
								My Cook</a></li>
						<li><a href="#login_form" rel="leanModal" id="modal_trigger">Cook
								On Chef Come Cook</a></li>
						<li><a href="#">Administrator</a></li>
					</ul>
				</div>
			</header>
		</div>
		<!-- Login Form -->
		<div id="login_form">
			<header>
				<span class="header_title">Login</span> <span
					class="modal_close close">&#215;</span>
			</header>
			<section id="user_login">
				<form id="user_login1" method="post"
					action="http://example.com/processform/">
					<label for="user_name">User Name</label> <input type="text"
						id="user_name" placeholder="Hemanth" autofocus required> <label
						for="password">Password</label> <input type="password"
						id="password" placeholder="Password" required>
					<div class="action_btns">
						<div>
							<a href="<c:url value='/serviceprovider/new'/>" class="Register1">Register</a>
						</div>
						<input type="submit" value="Login">
					</div>
				</form>
				<a href="#" class="forgot_password">Forgot password?</a>
			</section>
			<section id="registration_form">
				<p>
					Please read the requirements to register at <a href="#">How we
						Work</a> and <a href="<c:url value='/serviceprovider/new'/>">Click Here</a> to register.
				</p>
				<div class="action_btns">
					<div id="second">
						<a href="#" class="back">back</a>
					</div>
				</div>
			</section>
		</div>
</body>
</html>