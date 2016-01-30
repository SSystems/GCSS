<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/contact.css'/>" />
</head>
<body>
	<div id="body-content">
		<section id="contact_details">
			<h1>Contact Us</h1>
			<ul>
				<li><a href="" id="message"><span>&#9993;</span></a> <span>mail</span>
					<a href="mailto:gantahemanth1995@gmail.com" class="definition">information@chefcomecook.com</a>
				</li>
				<li><a href=""><span id="facebook" class="icon-facebook"></span></a>
					<span>facebook</span> <a href="#" class="definition">Follow Us</a>
				</li>
				<li><a href=""><span class="icon-twitter" id="twitter"></span></a>
					<span>twitter</span> <a href="#" class="definition">Tweet Us</a></li>
			</ul>
		</section>
		<section id="submission">
			<h2>Drop an Inquiry</h2>
			<form action="" method="post">
				<label>Are you a</label> <select name="option" tab-index="1">
					<option value="individual">Individual</option>
					<option value="company">Company</option>
				</select> <label>Full Name</label> <input type="text" tab-index="2"
					name="name" required /> <br /> <label>Email Address</label> <input
					type="email" tab-index="3" name="email" required /> <br /> <label>Mobile/Phone
					Number</label> <input type="tel" tab-index="4" name="mobile" required /> <br />
				<label>Message</label>
				<Textarea tab-index="5" name="message" required></Textarea>
				<br /> <input type="submit" id="register_button"
					value="Send Message">
			</form>
		</section>
	</div>
</body>
</html>