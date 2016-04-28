 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
                    
                </div>

                <div id="navbar" class="navbar-collapse collapse">
                    
                </div>
            </div>
        
    </header>
    <!-- /.navbar-wrapper -->

    <!-- hire-shopping-cart -->
    <section class="banner-section static-banner hire-shopping-cart">
        <div class="container hire-shopping-container">
            <div class="row hire-shopping-row">
                <!-- hire-shopping-cart Header-->
                <div class="col-lg-12 hire-shopping-header">
                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 hire-shopping-text">
                        <h1 class="section-title">Roasted Chicken Cutlet</h1>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 hire-shopping-person">
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="<c:url value='/ui/images/person-dp.png'/>" alt="userDp">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Jeniffer Orange</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 hire-shopping-rupee total-cart-list text-center">
                        <strong>$ 34 / Adult </strong>
                    </div>
                </div>
                <!-- hire-shopping-cart Filter-->
                <div class="col-lg-12 hire-shopping-filter-list">
                    <div class="form-material">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 shopping-filter-field">
                            <div class="form-group label-floating user">
                                <label class="control-label" for="Name">No. of adults</label>
                                <input class="form-control" id="name" type="text">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 shopping-filter-field">
                            <div class="form-group label-floating user">
                                <label class="control-label" for="Name">No. of childrens</label>
                                <input class="form-control" id="name" type="text">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 shopping-filter-field">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 shopping-filter-field">
                                    <div class="form-group label-floating date">
                                        <label class="control-label" for="Name">Date</label>
                                        <input id='datePic' class="form-control" id="name" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 shopping-filter-field">
                                    <div class="form-group label-floating time">
                                        <label class="control-label" for="Name">Time</label>
                                        <input class="form-control" type="text" id='timePic'>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 shopping-filter-field">
                            <div class="form-group label-floating special-instruction">
                                <label class="control-label" for="Name">Special instructions to chef</label>
                                <input class="form-control" id="name" type="text">
                            </div>
                        </div>
                        <div class="col-lg-offset-4 col-lg-4 col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4 col-xs-12 shopping-filter-field shopping-filter-continue">
                            <div class="form-group label-floating">
                                <button type="button" class="btn">Continue</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.hire-shopping-cart -->

    <!-- hire-other-option -->
    <section class="hire-other-option">
        <div class="container">
            <h2 class="section-title text-center">other options</h2>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 other-item-dish">
                    <div class="isotope-container">
                        <div class="isotope">
                            <!-- || FRENCH CUISINE || -->
                            <figure class="french-cuisine item width1 effect-sadie">
                                <img src="<c:url value='/ui/images/other-cuisine/img-1.jpg'/>" alt="">
                                <figcaption>
                                    <div class="caption-content">
                                        <h3 class="dishes-name"> <span class="price">$ 34</span> Maple Cured <br> Pork Belly</h3>
                                        <p>Lorum ipsum to the beautifully filled pasta</p>
                                        <div class="caption-btn">
                                            <a href="javascript:;" class="btn">Add</a>
                                        </div>
                                    </div>
                                    <!-- /.caption-content -->
                                </figcaption>
                            </figure>
                        </div>
                        <!-- /.isotope -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 other-item-dish">
                    <div class="isotope-container">
                        <div class="isotope">
                            <!-- || FRENCH CUISINE || -->
                            <figure class="french-cuisine item width1 effect-sadie">
                                <img src="<c:url value='/ui/images/other-cuisine/img-2.jpg'/>" alt="">
                                <figcaption>
                                    <div class="caption-content">
                                        <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                        <p>Lorum ipsum to the beautifully filled pasta</p>
                                        <div class="caption-btn">
                                            <a href="javascript:;" class="btn">Add</a>
                                        </div>
                                    </div>
                                    <!-- /.caption-content -->
                                </figcaption>
                            </figure>
                        </div>
                        <!-- /.isotope -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 other-item-dish">
                    <div class="isotope-container">
                        <div class="isotope">
                            <!-- || FRENCH CUISINE || -->
                            <figure class="french-cuisine item width1 effect-sadie">
                               <img src="<c:url value='/ui/images/other-cuisine/img-3.jpg'/>" alt="">
                               
                                <figcaption>
                                    <div class="caption-content">
                                        <h3 class="dishes-name"> <span class="price">$ 34</span> Roasted <br> Chicken Cutlet</h3>
                                        <p>Lorum ipsum to the beautifully filled pasta</p>
                                        <div class="caption-btn">
                                            <a href="javascript:;" class="btn">Add</a>
                                        </div>
                                    </div>
                                    <!-- /.caption-content -->
                                </figcaption>
                            </figure>
                        </div>
                        <!-- /.isotope -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.hire-other-option -->

    <!-- hire-other-note -->
    <section class="hire-other-note">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-note">
                    <div class="alert alert-danger" role="alert">
                        <h4>Note</h4>
                        <ul class="unorder-list">
                            <li>Your total party size is based on your selections here. You can book up to 12 adults and 4 children total. </li>
                            <li>Note on timing: Your chef will arrive approximately 30 minutes prior to your selected meal time in order to finish cooking. </li>
                            <li>Your total party size is based on your selections here. You can book up to 12 adults and 4 children total. </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.hire-other-note -->
    </body>
    </html>