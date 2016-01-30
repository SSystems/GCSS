<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cook 4 Me</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="<c:url value='/ui/css/normalize.css'/>" />
<link href='http://fonts.googleapis.com/css?family=Ubuntu:500|Dancing+Script:700|Roboto' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<c:url value='/ui/css/welcome_screen.css'/>"/>
</head>
<body>
<header>
	<div id="mobile">	
		<h1>Cook 4 Me</h1>
		<a href="#">Login</a>
		<a href="#">Why Us</a>
	</div>
	<div id="tablet">
	  <a href="#">How we Work</a>
	  <h1>Cook 4 Me</h1>
	  <span id="login">Login <span class="icon-arrow-down"></span></span>
	  <ul id="login_list">
	  	<li><a href="#">End User</a></li>
	  	<li><a href="#">Service Provider</a></li>
	  	<li><a href="#">Administrator</a></li>
	  </ul>
	</div>
</header>
<section id="carousel_image">
	<img src="<c:url value='/ui/images/cook8.jpg'/>" alt="" />
	<article>
		<h3>Cook 4 Me offers</h3>
	<ul>
		<li><span class="icon-checkmark"></span>Customizable Menu</li>
		<li><span class="icon-checkmark"></span>Affordable prices</li>
		<li><span class="icon-checkmark"></span>best service</li>
	</ul>
	</article>
</section>

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
	<article>
		<h4>Meghana</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : Biryani</span>
		<p>We specialze making biryani. We provide all kind of contenential stuff </p>
		<a href="#">Check profile</a>
		<a href="#">Hire</a>
	</article>
	<article>
		<h4>Meghana</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : Biryani</span>
		<p>We specialze making biryani. We provide all kind of contenential stuff</p>
		<a href="#">Check profile</a>
		<a href="#">Hire</a>
	</article>
	<article>
		<h4>Meghana</h4>
		<img src="<c:url value='/ui/images/test.jpg'/>" alt="" />
		<span>Experts in : Biryani</span>
		<p>We specialze making biryani. We provide all kind of contenential stuff</p>
		<a href="#">Check profile</a>
		<a href="#">Hire</a>
	</article>
</section>
<section id="review_section">
	<h3 id="review">Reviews</h3>
	<article class="review_container">
		<img src="<c:url value='/ui/images/test1.jpg' />" alt="Test Image" />
		<article class="review">
			<h4>Hemanth</h4>
			<p>Excellent work. Had been a pleasent experience</p>
		</article>
	</article>
	<article class="review_container">
		<img src="<c:url value='/ui/images/test1.jpg' />" alt="Test Image" />
		<article class="review">
			<h4>Hemanth</h4>
			<p>Excellent work. Had been a pleasent experience</p>
		</article>
	</article>
	<article class="review_container">
		<img src="<c:url value='/ui/images/test1.jpg' />" alt="Test Image" />
		<article class="review">
			<h4>Hemanth</h4>
			<p>Excellent work. Had been a pleasent experience</p>
		</article>
	</article>
</section>
<footer>
	<a href="tel:9674161371">9674161371</a>
	<a href="#">How we work</a>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value='/ui/js/welcome_screen.js' />"></script>
</body>
</html>