<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chef Come Cook</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="<c:url value='/ui/css/normalize.css'/>" />
<link href='http://fonts.googleapis.com/css?family=Ubuntu:500|Dancing+Script:700|Roboto' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<c:url value='/ui/css/welcome_screen.css'/>" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="<c:url value='/ui/js/jquery-1.11.2.min.js'/>"></script>	
<script type="text/javascript" src="<c:url value='/ui/js/cycle2.js'/>"></script>
<script type="text/javascript" src="<c:url value='/ui/js/jquery.leanModal.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/ui/js/jquery.scrollTo.min.js'/>"></script>
</head>
<body>
<jsp:include page="/WEB-INF/pages/template/header.jsp"></jsp:include>
	<!--Carousel-->
	<div class="cycle-slideshow" 
	data-cycle-swipe=true
    data-cycle-swipe-fx=scrollHorz
    data-cycle-fx=scrollHorz
    data-cycle-timeout=0
	data-cycle-pager=".example-pager"
	data-cycle-slides="> article"
    >
		<div class="cycle-prev"></div>
		<div class="cycle-next"></div>
		<article class="slide2" id="slide">
			<p>Chef Come Cook Offers</p>
			<ul>
				<li><span class="icon-checkmark"></span>Customizable Menu</li>
				<li><span class="icon-checkmark"></span>Affordable prices</li>
				<li><span class="icon-checkmark"></span>best service</li>
			</ul>
			<a href="<c:url value='/serviceprovider/new'/>">Register</a>
		</article>
		<article class="slide1">
			<p>To access all the features we offer Please login</p>
			<a href="#login_form" rel="leanModal" id="modal_trigger">Login</a>
		</article>
	</div>
	<div class="example-pager"></div>
<section>
	<article id="why_us">
		<h3>Why ChefComeCook</h3>
		<p>The average couple (2 people) spends $40-$50 going out for about an hour of outside time. ChefComeCook
brings the Chef to your house, and you will have the option of get what you want prepared or cook from
whats at hand. Chefs do not take more than 2 hours to cook and our chefs come cheap averaging $15 an
hour, and any cost of groceries goes on fixed increments depending on amount of people. So for let’s
say for this scenario 2 people and they order a Chef, in the price for just food to be made will not exceed
$30, and they have great meal! From the entire transaction the way ChefComeCook will generate revenue is
by taking a small percentage of the entire transaction. </p>
	</article>
</section>
<section>
	<h3 id="service_provider">Service Providers</h3>
	<c:forEach items="${serviceProviders }" var="serviceProvider" varStatus="index">
		<article>
		<h4>${serviceProvider.firstName }</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : ${serviceProvider.cuisines}</span>
		<p>${serviceProvider.aboutMe} </p>
		<a href="#">Check profile</a>
		<a href="#">Hire</a>
	</article>
	</c:forEach>
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
</section>
<footer>
	<!-- PayPal Logo --><table border="0" cellpadding="10" cellspacing="0" align="center"><tr><td align="center"></td></tr><tr><td align="center"><a href="https://www.paypal.com/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark"></a></td></tr></table><!-- PayPal Logo -->
	<p> &#64; Copyright 2014-2015</p>
</footer>
<script type="text/javascript" src="<c:url value='/ui/js/welcome_screen.js'/>"></script>
</body>
</html>