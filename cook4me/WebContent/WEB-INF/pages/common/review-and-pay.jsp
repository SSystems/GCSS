 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<body class="has-fixedheader">

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

    <section class="breadcrumb-nav">
        <div class="container">
            <div class="row">
                <ol class="col-lg-12 breadcrumb">
                    <li>Review & Pay</li>
                </ol>
                <!-- /.breadcrumb -->
            </div>
        </div>
    </section>
    <!-- /.breadcrumb-nav -->

    <section class="main-content">
        <div class="mobile-title">
            <h3>Delivery & Payment Method</h3>
        </div>
        <!-- ./mobile-title -->
        <div class="container bottom-spacing">
            <div class="row ">
                <div class="col-lg-6 col-md-6 col-md-push-6 payment">
                    <h4>Your Cart</h4>
                    <div class="cart-list">
                        <div class="cl-col">
                            <figure class="product-img">
                                <img src="<c:url value='/ui/images/cart-img-1.png'/>" alt="wings fry">
                                <span class="badge">2</span>
                            </figure>
                        </div>
                        <div class="cl-col">
                            <p>Italian Chicken Wings Fry</p>
                        </div>
                        <div class="cl-col">
                            <p>$ 28 x 2 Adults </p>
                        </div>
                        <div class="cl-col">
                            <div class="price">$ 58</div>
                        </div>
                    </div>
                    <!-- /.cart-list -->
                    <div class="cart-list">
                        <div class="cl-col">
                            <figure class="product-img">
                                <img src="<c:url value='/ui/images/cart-img-2.png'/>" alt="chicken wings">
                                <span class="badge">1</span>
                            </figure>
                        </div>
                        <div class="cl-col">
                            <p>Italian Chicken Wings Fry</p>
                        </div>
                        <div class="cl-col">
                            <p>$ 44 x 2 Adults </p>
                        </div>
                        <div class="cl-col">
                            <div class="price">$ 89</div>
                        </div>
                    </div>
                    <!-- /.cart-list -->
                    <div class="delivery-payment total-cart-list">
                        <h6>Total</h6>
                        <span>
                            USD<strong>$147</strong>
                        </span>
                    </div>
                    <!-- /.total-cart-list -->


                    <div class="text-right m-b30">
                        <a href="javascript:;"><img src="<c:url value='/ui/images/btn-paypal.png'/>" alt="Paypal">
                        </a>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 col-md-pull-6 cooking-container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6">
                            <h4>Place of Cooking</h4>
                            <div class="address-wall place-cooking">
                                <address>
                                    <h6>Joe smith</h6>
                                    <p>1559, xyz street, suite- 102,
                                        <br>Orlando, FL - 32801
                                        <br>
                                        <label>(325) 589 5487</label>
                                    </p>
                                </address>

                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <h4>Date and Timing</h4>
                            <div class="address-wall has-datetime">
                                <address>
                                    <h5>25th</h5>
                                    <h6>14:30</h6>
                                    <span>March 2016</span>

                                    <p>Your chef will arrive approximately 30 minutes prior to your selected meal time</p>
                                </address>

                            </div>
                        </div>
                    </div>

                    <div class="promocode">
                        <form class="form-material">

                            <div class="form-group label-floating">
                                <label class="control-label" for="Name">Apply Promo code</label>
                                <input class="form-control" id="name" type="text">
                            </div>
                            <a href="#">Apply</a>
                        </form>


                    </div>


                </div>
            </div>
        </div>
    </section>
    <!-- /.main-content -->

    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 footerLogo">
                    <img src="img/footer-logo.png" alt="">
                </div>
                <div class="col-lg-8 footerMenu">
                    <ul>
                        <li><a class="decoration-line" href="javascript:;">Info for Chef</a>
                        </li>
                        <li><a class="decoration-line" href="privacy-policy.html">Privacy Policy</a>
                        </li>
                        <li><a class="decoration-line" href="terms-of-use.html">Terms of Use</a>
                        </li>
                        <li><a class="decoration-line" href="javascript:;">Sitemap</a>
                        </li>
                        <li><a class="decoration-line" href="contact-us.html">Contact</a>
                        </li>
                    </ul>

                    <ul class="payment-gateway">
                        <li><img src="img/icon-lock.svg" alt="">Secure payment</li>
                        <li><img src="img/icon-visa.svg" alt="">
                        </li>
                        <li><img src="img/icon-mastercard.svg" alt="">
                        </li>
                        <li><img src="img/icon-paypal.svg" alt="">
                        </li>
                        <li><img src="img/icon-americanExpress.svg" alt="">
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <ul class="social-icons">
                        <li>
                            <a href="javascript:;">
                                <img src="img/icon-googleplus.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="img/icon-twitter.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <img src="img/icon-facebook.svg" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <p class="text-center">2016 &copy; Chefcomecook, Inc.</p>
        </div>
</body>
</html>