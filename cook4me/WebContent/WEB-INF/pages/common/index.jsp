 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
 <body class="home-page">

    <header class="navbar-wrapper">
        
            <div class="container">
                <div class="navbar-header">
                    <div class="cart hide-lg"><a href="javascript:;"><span>0</span></a>
                    </div>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                    </a>
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                   
                </div>
            </div>
        </nav>
    </header>
    <!-- /.navbar-wrapper -->

    <section class="banner-section">
        <figure>
            <img src="<c:url value='/ui/images/banner.jpg'/>" alt="">
            <div class="container">
                <figcaption>
                    <h3>Don’t be a try hard</h3>
                    <h4>Lorem ipsum dolor sit amet,
                    <br>adipiscing elit. Cras a varius magna 
                    <br>venenatis faucibus</h4>
                </figcaption>
            </div>
            <div class="banner-searchbar">

                <div class="input-group">
                    <div class="form-group search-control">
                        <input type="Search" placeholder="Search for menus or a chef" class="form-control" />
                    </div>
                    <div class="form-group location-control">
                        <input type="Search" placeholder="Location" value="" class="form-control" />
                    </div>
                    <div class="form-group zipcode-control">
                        <input type="Search" placeholder="Zip code" value="" class="form-control" />
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
                    <button class="french-cuisine is-checked" data-filter=".french-cuisine">French Cuisine</button>
                    <button class="fusion-cuisine" data-filter=".fusion-cuisine">Fusion cuisine</button>
                    <button class="haute-cuisine" data-filter=".haute-cuisine">Haute cuisine</button>
                    <button class="fusion-cuisine" data-filter=".french-cuisine">Note by Note cuisine</button>
                    <button class="fusion-cuisine" data-filter=".fusion-cuisine">Nouvelle cuisine</button>
                    <button class="haute-cuisine" data-filter=".haute-cuisine">Vegan cuisine</button>
                    <button class="fusion-cuisine" data-filter=".french-cuisine">Vegetarian cuisine</button>
                    <button class="fusion-cuisine" data-filter=".fusion-cuisine">Italian cuisine</button>
                    <button class="haute-cuisine" data-filter=".haute-cuisine">Mexican cuisine</button>
                    <button class="fusion-cuisine" data-filter=".french-cuisine">Thai cuisine</button>
                    <button class="fusion-cuisine" data-filter=".fusion-cuisine">Indian cuisine</button>
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
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="french-cuisine item width2 effect-sadie">
                        <img src="<c:url value='/ui/images/french-cuisine/img-2.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="french-cuisine item width1 effect-sadie">
                        <img src="<c:url value='/ui/images/french-cuisine/img-3.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name">Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="french-cuisine item width4 effect-sadie">
                        <img src="<c:url value='/ui/images/french-cuisine/img-5.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="french-cuisine item width4 effect-sadie">
                        <img src="<c:url value='/ui/images/french-cuisine/img-6.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="french-cuisine item width4 effect-sadie">
                        <img src="<c:url value='/ui/images/french-cuisine/img-7.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="fusion-cuisine item width2 effect-sadie">
                        <img src="<c:url value='/ui/images/fusion-cuisine/img-2.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="fusion-cuisine item width1 effect-sadie">
                        <img src="<c:url value='/ui/images/fusion-cuisine/img-3.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name">Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="fusion-cuisine item width4 effect-sadie">
                        <img src="<c:url value='/ui/images/fusion-cuisine/img-5.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="fusion-cuisine item width4 effect-sadie">
                        <img src="<c:url value='/ui/images/fusion-cuisine/img-6.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="fusion-cuisine item width4 effect-sadie">
                        <img src="<c:url value='/ui/images/fusion-cuisine/img-7.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="haute-cuisine item width2 effect-sadie">
                        <img src="<c:url value='/ui/images/haute-cuisine/img-2.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
                                </div>
                            </div>
                            <!-- /.caption-content -->
                        </figcaption>
                    </figure>
                    <figure class="haute-cuisine item width1 effect-sadie">
                        <img src="<c:url value='/ui/images/haute-cuisine/img-3.jpg'/>" alt="">
                        <figcaption>
                            <div class="caption-content">
                                <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name">Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name">Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name">Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <h3 class="dishes-name">Roasted <br> Chicken Cutlet</h3>
                                <p>Lorum ipsum to the beautifully filled pasta</p>
                                <div class="caption-btn">
                                    <a href="javascript:;" class="btn">Hire Chef</a>
                                    <a href="javascript:;" class="btn">Add to cart</a>
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
                                <p>Lorem ipsum dolor sit amet, <span class="brand-color">George Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula at erat eget, egestas posuere mauris. Phasellus feugiat nulla viverra odio posuere, ut laoreet libero facilisis. Mauris porttitor magna et enim maximus, quis interdum ipsum aliquet. Duis dignissim ante eu felis elementum bibendum. Sed dapibus fermentum elit non dictum. Integer sed nulla diam. Donec consequat lectus lorem.</p>
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
                                <p>Lorem ipsum dolor sit amet, <span class="brand-color">George Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula at erat eget, egestas posuere mauris. Phasellus feugiat nulla viverra odio posuere, ut laoreet libero facilisis. Mauris porttitor magna et enim maximus, quis interdum ipsum aliquet. Duis dignissim ante eu felis elementum bibendum. Sed dapibus fermentum elit non dictum. Integer sed nulla diam. Donec consequat lectus lorem.</p>
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
                                <p>Lorem ipsum dolor sit amet, <span class="brand-color">George Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula at erat eget, egestas posuere mauris. Phasellus feugiat nulla viverra odio posuere, ut laoreet libero facilisis. Mauris porttitor magna et enim maximus, quis interdum ipsum aliquet. Duis dignissim ante eu felis elementum bibendum. Sed dapibus fermentum elit non dictum. Integer sed nulla diam. Donec consequat lectus lorem.</p>
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
                                <p>Lorem ipsum dolor sit amet, <span class="brand-color">George Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula at erat eget, egestas posuere mauris. Phasellus feugiat nulla viverra odio posuere, ut laoreet libero facilisis. Mauris porttitor magna et enim maximus, quis interdum ipsum aliquet. Duis dignissim ante eu felis elementum bibendum. Sed dapibus fermentum elit non dictum. Integer sed nulla diam. Donec consequat lectus lorem.</p>
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
                                <p>Lorem ipsum dolor sit amet, <span class="brand-color">George Mathew </span> consectetur adipiscing elit. Proin lorem leo, vehicula at erat eget, egestas posuere mauris. Phasellus feugiat nulla viverra odio posuere, ut laoreet libero facilisis. Mauris porttitor magna et enim maximus, quis interdum ipsum aliquet. Duis dignissim ante eu felis elementum bibendum. Sed dapibus fermentum elit non dictum. Integer sed nulla diam. Donec consequat lectus lorem.</p>
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
    <!-- /.reviews-section -->
</body>
</html>