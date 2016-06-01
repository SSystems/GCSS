<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chef Come Cook</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="<c:url value='/ui/css/normalize.css'/>" />
<link
	href='http://fonts.googleapis.com/css?family=Ubuntu:500|Dancing+Script:700|Roboto'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value='/ui/css/welcome_screen.css'/>" />
<link rel="shortcut icon" href="../images/favicon.ico"
	type="image/x-icon" />
<script type="text/javascript"
	src="<c:url value='/ui/js/jquery-1.11.2.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/ui/js/cycle2.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/ui/js/jquery.leanModal.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/ui/js/jquery.scrollTo.min.js'/>"></script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-77917772-1', 'auto');
	ga('send', 'pageview');
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/pages/template/header.jsp"></jsp:include>
	<!--Carousel-->
	<div class="cycle-slideshow" data-cycle-swipe=true
		data-cycle-swipe-fx=scrollHorz data-cycle-fx=scrollHorz
		data-cycle-timeout=0 data-cycle-pager=".example-pager"
		data-cycle-slides="> article">

		<article class="slide2" id="slide">

			<p class="image"></p>
			<!--<p>Anyone Can Become a Chef with us</p> -->
			<ul>

				<li><p>Anyone Can Become a Chef with us</p></li>
				<li></li>

				<li><span class="icon-checkmark"></span>Work From Home</li>
				<li><span class="icon-checkmark"></span>Turn your Kitchen into
					a Business</li>
				<li><span class="icon-checkmark"></span>Set your own Rates</li>
				<li><span class="icon-checkmark"></span>Work your own Hours</li>
				<li><span class="icon-checkmark"></span>Work Locally</li>
				<li><span class="icon-checkmark"></span>Build your own Profile</li>

			</ul>

			<%-- 	<a href="<c:url value='/serviceprovider/new'/>">Register</a>  --%>
			<a href="<c:url value='/serviceprovider/new'/>" rel="leanModal"
				id="modal_trigger1">Sign Up</a>
		</article>
		<!--  <article class="slide1">
			<p>To access all the features we offer Please login</p>
			<a href="<c:url value='/login/'/>" rel="leanModal" id="modal_trigger1">Login</a>
		</article> -->
	</div>
	<div class="example-pager"></div>
	<section>
		<article id="why_us">
			<h3>Why ChefComeCook</h3>
			<p>Chef Come Cook is designed to help you express your love for cooking through meals you are comfortable with creating while also increasing your knowledge of cooking through dishes requested by your customers! This is especially good for learning chefs but also good for people who just enjoy cooking. We allow you to make up your own hours and create your own rates as well as decide how the food is delivered to the customer. Your schedules and rate of income are completely decided on you. Everything is decided on you and your own personal needs.
.</p>
		</article>
	</section>
	<!-- <section>
	<h3 id="service_provider">Service Providers</h3>
	<article>
		<h4>Meghana</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : Biryani</span>
		<p>We specialze making biryani. We provide all kind of contenential stuff </p>
		<a href="profile.html">Check profile</a>
		<a href="#">Hire</a>
	</article>
	<article>
		<h4>Meghana</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : Biryani</span>
		<p>We specialze making biryani. We provide all kind of contenential stuff</p>
		<a href="profile.html">Check profile</a>
		<a href="#">Hire</a>
	</article>
	<article>
		<h4>Meghana</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : Biryani</span>
		<p>We specialze making biryani. We provide all kind of contenential stuff</p>
		<a href="profile.html">Check profile</a>
		<a href="#">Hire</a>
	</article>
</section>
<section id="review_section">
	<h3 id="review">Reviews</h3>
	<article class="review_container">
		<img src="<c:url value='/ui/images/test1.jpg'/>" alt="Test Image" />
		<article class="review">
			<h4>Hemanth</h4>
			<p>Excellent work. Had been a pleasent experience</p>
		</article>
	</article>
	<article class="review_container">
		<img src="<c:url value='/ui/images/test1.jpg'/>" alt="Test Image" />
		<article class="review">
			<h4>Hemanth</h4>
			<p>Excellent work. Had been a pleasent experience</p>
		</article>
	</article>
	<article class="review_container">
		<img src="<c:url value='/ui/images/test1.jpg'/>" alt="Test Image" />
		<article class="review">
			<h4>Hemanth</h4>
			<p>Excellent work. Had been a pleasent experience</p>
		</article>
	</article>
</section>  -->
	<footer>
		<!-- PayPal Logo -->
		<table border="0" cellpadding="10" cellspacing="0" align="center">
			<tr>
				<td align="center"></td>
			</tr>
			<tr>
				<td align="center"><a
					href="https://www.paypal.com/webapps/mpp/paypal-popup"
					title="How PayPal Works"
					onclick="javascript:window.open('https://www.paypal.com/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img
						src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg"
						border="0" alt="PayPal Acceptance Mark"></a></td>
			</tr>
		</table>
		<!-- PayPal Logo -->
		<p>&#64; Copyright 2014-2015</p>
	</footer>
	<script type="text/javascript"
		src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
</body>
</html>