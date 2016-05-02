<%@page import="com.globacomp.ssystem.c4m.web.WebUser"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<body class="home-page">
	
	 <header class="navbar-wrapper">
        <nav class="navbar navbar-static-top" id="nav">
            <div class="container">
                <div class="navbar-header">
                    <div class="cart hide-lg"><a href="javascript:;"><span>0</span></a>
                    </div>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="javascript:;">
                        <img src="<c:url value='/ui/images/logo.png'/>" alt="Chef Come Cook">
                    </a>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#howitworks">How it Works</a>
                        </li>
                        <li><a href="#ourmenu">Our Menu</a>
                        </li>
                        <li class="cart"><a href="shopping-cart.html"><span>0</span></a>
                        </li>
                        <%
						WebUser user = (WebUser) session.getAttribute(WebUser.SESSION_ATTRIBUTE);
						if (user != null){ 
						%>
						<li>&nbsp;
                        </li>
                        <li><a class="popup-modal" href="#profile-popup" data-effect="mfp-zoom-in"> <%= user.getFirstName() %> </a>
                        </li>
                        <%} else {%>
                        <li><a class="" href="${pageContext.request.contextPath}/login">Login</a>
                        </li>
                        <li class="spl-btn"><a href="javascript:;">Become a Chef</a>
                        </li>
                        <% }%>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

	<section class="banner-section">
		<figure>
			<img src="<c:url value='/ui/images/banner.jpg'/>" alt="">
			<div class="container">
				<figcaption>
					<h3>Don’t be a try hard</h3>
					<h4>
						Lorem ipsum dolor sit amet, <br>adipiscing elit. Cras a
						varius magna <br>venenatis faucibus
					</h4>
				</figcaption>
			</div>
			<div class="banner-searchbar">

				<div class="input-group">
					<div class="form-group search-control">
						<input type="Search" placeholder="Search for menus or a chef"
							class="form-control" />
					</div>
					<div class="form-group location-control">
						<input type="Search" placeholder="Location" value=""
							class="form-control" />
					</div>
					<div class="form-group zipcode-control">
						<input type="Search" placeholder="Zip code" value=""
							class="form-control" />
					</div>
					<div class="input-group-btn">
						<button class="btn">
							<img src="<c:url value='/ui/images/icon-search.png'/>" alt=""> Search
						</button>
					</div>
				</div>

			</div>
		</figure>
	</section>
	<!-- /.banner-section -->

	<section id="howitworks" class="howitworks-section">
		<div class="container">
			<h2 class="section-title text-center">How it Works</h2>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 hireCheff">
					<figure>
						<h3>Hire a Chef</h3>
						<figcaption>
							<p>Lorum ipsum loum donor</p>
						</figcaption>
						<img src="<c:url value='/ui/images/workflow-01.png'/>" alt="">
					</figure>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 hireCheff">
					<figure>
						<h3>Chef deliver food</h3>
						<figcaption>
							<p>Lorum ipsum loum donor</p>
						</figcaption>
						<img src="<c:url value='/ui/images/workflow-02.png'/>" alt="">
					</figure>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 hireCheff">
					<figure>
						<h3>Pick up the food</h3>
						<figcaption>
							<p>Lorum ipsum loum donor</p>
						</figcaption>
						<img src="<c:url value='/ui/images/workflow-03.png'/>" alt="">
					</figure>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- /.howitworks-section -->

	<section id="ourmenu" class="ccc-dishes clearfix">
		<div class="container">
			<h2 class="section-title text-center">Chef Come Cook’s Dishes</h2>
			<div class="isotope-nav">
				<h2 class="section-title text-center">categories</h2>
				<a href="javascript:;" class="ccc-categories-toggle">
					<h2 class="section-title text-center">categories</h2>
				</a>
				<nav id="filters" class="isotope__filter dropdown">
					<!-- <button class="all is-checked" data-filter="*">All</button> -->
					<button class="french-cuisine is-checked"
						data-filter=".french-cuisine">French Cuisine</button>
					<button class="fusion-cuisine" data-filter=".fusion-cuisine">Fusion
						cuisine</button>
					<button class="haute-cuisine" data-filter=".haute-cuisine">Haute
						cuisine</button>
					<button class="fusion-cuisine" data-filter=".french-cuisine">Note
						by Note cuisine</button>
					<button class="fusion-cuisine" data-filter=".fusion-cuisine">Nouvelle
						cuisine</button>
					<button class="haute-cuisine" data-filter=".haute-cuisine">Vegan
						cuisine</button>
					<button class="fusion-cuisine" data-filter=".french-cuisine">Vegetarian
						cuisine</button>
					<button class="fusion-cuisine" data-filter=".fusion-cuisine">Italian
						cuisine</button>
					<button class="haute-cuisine" data-filter=".haute-cuisine">Mexican
						cuisine</button>
					<button class="fusion-cuisine" data-filter=".french-cuisine">Thai
						cuisine</button>
					<button class="fusion-cuisine" data-filter=".fusion-cuisine">Indian
						cuisine</button>
				</nav>
			</div>
			<!-- /.isotope-nav -->
			<div class="isotope-container">
				<div class="isotope">

					<!-- || FRENCH CUISINE || -->
					<figure class="french-cuisine item width1 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-1.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="french-cuisine item width2 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-2.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="french-cuisine item width1 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-3.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="french-cuisine item width3 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-4.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="price">$ 34</h3>
								<h3 class="dishes-name">
									Roasted <br> Chicken Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="french-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-5.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="french-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-6.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="french-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/french-cuisine/img-7.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>

					<!-- || FRENCH CUISINE || -->
					<figure class="fusion-cuisine item width1 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-1.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="fusion-cuisine item width2 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-2.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="fusion-cuisine item width1 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-3.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="fusion-cuisine item width3 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-4.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="price">$ 34</h3>
								<h3 class="dishes-name">
									Roasted <br> Chicken Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="fusion-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-5.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="fusion-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-6.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="fusion-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/fusion-cuisine/img-7.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>

					<!-- || HAUTE CUISINE || -->
					<figure class="haute-cuisine item width1 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-1.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="haute-cuisine item width2 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-2.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="haute-cuisine item width1 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-3.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="dishes-name">
									<span class="price">$ 34</span> Roasted <br> Chicken
									Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="haute-cuisine item width3 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-4.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="price">$ 34</h3>
								<h3 class="dishes-name">
									Roasted <br> Chicken Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="haute-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-5.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="price">$ 34</h3>
								<h3 class="dishes-name">
									Roasted <br> Chicken Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="haute-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-6.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="price">$ 34</h3>
								<h3 class="dishes-name">
									Roasted <br> Chicken Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>
					<figure class="haute-cuisine item width4 effect-sadie">
						<img src="<c:url value='/ui/images/haute-cuisine/img-7.jpg'/>" alt="">
						<figcaption>
							<div class="caption-content">
								<h3 class="price">$ 34</h3>
								<h3 class="dishes-name">
									Roasted <br> Chicken Cutlet
								</h3>
								<p>Lorum ipsum to the beautifully filled pasta</p>
								<div class="caption-btn">
									<a href="javascript:;" class="btn">Hire Chef</a> <a
										href="javascript:;" class="btn">Add to cart</a>
								</div>
							</div>
							<!-- /.caption-content -->
						</figcaption>
					</figure>

				</div>
				<!-- /.isotope -->
			</div>
			<div class="text-center">
				<a class="btn-load-more" href="javascript:;">Load More</a>
			</div>
			<!-- /.isotope-container -->
		</div>
		<!-- /.container -->
	</section>
	<!-- /.ccc-dishes -->

	<section class="reviews-section">
		<div class="container">
			<h2 class="section-title text-center">Customer Feedback</h2>
			<div class="owl-carousel">
				<div class="item">
					<div class="row">
						<div class="col-lg-6 text-center">
							<div class="middle-text">
								<p>
									Lorem ipsum dolor sit amet, <span class="brand-color">George
										Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula
									at erat eget, egestas posuere mauris. Phasellus feugiat nulla
									viverra odio posuere, ut laoreet libero facilisis. Mauris
									porttitor magna et enim maximus, quis interdum ipsum aliquet.
									Duis dignissim ante eu felis elementum bibendum. Sed dapibus
									fermentum elit non dictum. Integer sed nulla diam. Donec
									consequat lectus lorem.
								</p>
							</div>
						</div>
						<div class="col-lg-6 text-center">
							<figure>
								<img src="<c:url value='/ui/images/img-review.jpg'/>" alt="">
								<figcaption>
									<h5>Charles</h5>
									<p>Ipsum elit non dictum</p>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-lg-6 text-center">
							<div class="middle-text">
								<p>
									Lorem ipsum dolor sit amet, <span class="brand-color">George
										Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula
									at erat eget, egestas posuere mauris. Phasellus feugiat nulla
									viverra odio posuere, ut laoreet libero facilisis. Mauris
									porttitor magna et enim maximus, quis interdum ipsum aliquet.
									Duis dignissim ante eu felis elementum bibendum. Sed dapibus
									fermentum elit non dictum. Integer sed nulla diam. Donec
									consequat lectus lorem.
								</p>
							</div>
						</div>
						<div class="col-lg-6 text-center">
							<figure>
								<img src="<c:url value='/ui/images/img-review.jpg'/>" alt="">
								<figcaption>
									<h5>Charles</h5>
									<p>Ipsum elit non dictum</p>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-lg-6 text-center">
							<div class="middle-text">
								<p>
									Lorem ipsum dolor sit amet, <span class="brand-color">George
										Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula
									at erat eget, egestas posuere mauris. Phasellus feugiat nulla
									viverra odio posuere, ut laoreet libero facilisis. Mauris
									porttitor magna et enim maximus, quis interdum ipsum aliquet.
									Duis dignissim ante eu felis elementum bibendum. Sed dapibus
									fermentum elit non dictum. Integer sed nulla diam. Donec
									consequat lectus lorem.
								</p>
							</div>
						</div>
						<div class="col-lg-6 text-center">
							<figure>
								<img src="<c:url value='/ui/images/img-review.jpg'/>" alt="">
								<figcaption>
									<h5>Charles</h5>
									<p>Ipsum elit non dictum</p>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-lg-6 text-center">
							<div class="middle-text">
								<p>
									Lorem ipsum dolor sit amet, <span class="brand-color">George
										Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula
									at erat eget, egestas posuere mauris. Phasellus feugiat nulla
									viverra odio posuere, ut laoreet libero facilisis. Mauris
									porttitor magna et enim maximus, quis interdum ipsum aliquet.
									Duis dignissim ante eu felis elementum bibendum. Sed dapibus
									fermentum elit non dictum. Integer sed nulla diam. Donec
									consequat lectus lorem.
								</p>
							</div>
						</div>
						<div class="col-lg-6 text-center">
							<figure>
								<img src="<c:url value='/ui/images/img-review.jpg'/>" alt="">
								<figcaption>
									<h5>Charles</h5>
									<p>Ipsum elit non dictum</p>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-lg-6 text-center">
							<div class="middle-text">
								<p>
									Lorem ipsum dolor sit amet, <span class="brand-color">George
										Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula
									at erat eget, egestas posuere mauris. Phasellus feugiat nulla
									viverra odio posuere, ut laoreet libero facilisis. Mauris
									porttitor magna et enim maximus, quis interdum ipsum aliquet.
									Duis dignissim ante eu felis elementum bibendum. Sed dapibus
									fermentum elit non dictum. Integer sed nulla diam. Donec
									consequat lectus lorem.
								</p>
							</div>
						</div>
						<div class="col-lg-6 text-center">
							<figure>
								<img src="<c:url value='/ui/images/img-review.jpg'/>" alt="">
								<figcaption>
									<h5>Charles</h5>
									<p>Ipsum elit non dictum</p>
								</figcaption>
							</figure>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- /.footer-section -->

	<!-- /.footer-section -->

	<a id='backTop'>Back To Top</a>
	
	<!-- Profile POPUP -->
    <div id="profile-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
        </div>
        <h2>Login</h2>
        <div class="row formFiledsBlock">
        	<form action="${pageContext.request.contextPath}/login/authenticate" method="post">
	            <div class="form-group label-floating">
	                <label class="control-label" for="focusedInput1">E-Mail</label>
	                <input class="form-control" id="focusedInput1" name="username" type="text">
	            </div>
	            <div class="form-group label-floating">
	                <label class="control-label" for="focusedInput1">Password</label>
	                <input class="form-control" id="password" name="password" type="password">
	            </div>
	            <a class="popup-modal link decoration-line" href="#forgot-popup" data-effect="mfp-zoom-in">Forgot Password?</a>
	            <button type="submit" class="btn">Log In</button>
	            </form>
            <div class="divider">Or</div>
            <button type="button" class="btn facebook-btn"><img src="<c:url value='/ui/images/fb.png'/>" alt="FaceBook">Log in with Facebook</button>
            <p>New to Chef Come Cook? <a class="popup-modal decoration-line" href="#signup-popup" data-effect="mfp-zoom-in"> Sign up!</a>
        </div>
    </div>

	<!-- LOGIN POPUP -->
    <div id="login-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
        </div>
        <h2>Login</h2>
        <div class="row formFiledsBlock">
        	<form action="${pageContext.request.contextPath}/login/authenticate" method="post">
	            <div class="form-group label-floating">
	                <label class="control-label" for="focusedInput1">E-Mail</label>
	                <input class="form-control" id="focusedInput1" name="username" type="text">
	            </div>
	            <div class="form-group label-floating">
	                <label class="control-label" for="focusedInput1">Password</label>
	                <input class="form-control" id="password" name="password" type="password">
	            </div>
	            <a class="popup-modal link decoration-line" href="#forgot-popup" data-effect="mfp-zoom-in">Forgot Password?</a>
	            <button type="submit" class="btn">Log In</button>
	            </form>
            <div class="divider">Or</div>
            <button type="button" class="btn facebook-btn"><img src="<c:url value='/ui/images/fb.png'/>" alt="FaceBook">Log in with Facebook</button>
            <p>New to Chef Come Cook? <a class="popup-modal decoration-line" href="#signup-popup" data-effect="mfp-zoom-in"> Sign up!</a>
        </div>
    </div>
    <!-- /.popup-box -->

    <!-- SIGNUP POPUP -->
    <div id="signup-popup" class="popup-box form-popup mfp-with-anim mfp-hide">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
        </div>
        <h2>Sign Up</h2>

        <div class="row formFiledsBlock">
            <div class="form-group label-floating select-control">
                <select id="select" class="form-control">
                    <option value="" disabled selected>Individual</option>
                    <option>Individual 1</option>
                    <option>Individual 2</option>
                    <option>Individual 3</option>
                    <option>Individual 4</option>
                    <option>Individual 5</option>
                </select>
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="Name">Name</label>
                <input class="form-control" id="name" type="text">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="email">E-Mail</label>
                <input class="form-control" id="email" type="text">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="password">Password</label>
                <input class="form-control" id="password" type="password">
            </div>
            <div class="form-group label-floating">
                <label class="control-label" for="re-password">Re-Enter Password</label>
                <input class="form-control" id="re-password" type="password">
            </div>
            <div class="form-group label-floating m-b0">
                <label class="control-label" for="phoneNumber">Phone Number</label>
                <input class="form-control" id="phoneNumber" type="number">
            </div>
            <button type="button" class="btn m-b10">SIGN UP</button>
            <small>By signing up, you agree to our <a href="javascript:;">terms of use</a>, <a href="javascript:;">privacy policy</a>, and <a href="javascript:;">cookie policy</a>. </small>
            <div class="divider">Or</div>
            <button type="button" class="btn facebook-btn"><img src="<c:url value='/ui/images/fb.png'/>" alt="FaceBook">Sign Up with Facebook</button>
            <p>Already have an account? <a class="popup-modal decoration-line" href="#login-popup" data-effect="mfp-zoom-in"> Sign in</a>
            </p>
        </div>
    </div>
    <!-- /.popup-box -->

    <!-- FORGOT PASSWORD POPUP -->
    <div id="forgot-popup" class="popup-box form-ophwepup mfp-with-anim mfp-hide forgot-pw-popup">
        <div class="text-center">
            <img src="<c:url value='/ui/images/logo.png'/>" alt="">
        </div>
        <h2>Password Reset</h2>

        <div class="row formFiledsBlock">
            <p>Enter the email address you used to sign up and we'll send you a link to reset your password.</p>
            <div class="form-group label-floating m-b0">
                <label class="control-label" for="email">E-Mail</label>
                <input class="form-control" id="email" type="text">
            </div>
            <button type="button" class="btn" id="btn-forgot-pw">Continue</button>
            <div class="text-left"><a class="back-nav popup-modal decoration-line" href="#login-popup">Back to Log in</a>
            </div>
        </div>
        <!-- /.formFiledsBlock -->

        <div class="alert-check-mail hide">
            <div class="alert-content">
                <h2>Check your email</h2>
                <p>You will receive a email from us with Instructions for resetting your password.</p>
                <hr>
                <p>You’re redirecting to login page in
                    <br><span>7</span> Seconds</p>
            </div>
        </div>
        <!-- /.alert-check-mail -->
    </div>
    <!-- /.popup-box -->
</body>

</html>