 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head></head>
<body class="has-fixedheader inner-page thank-you-page">


    <section class="header-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 position-relative track-order-block">
                    <a href="javascript:;" class="back-nav back-nav-large back-nav-bdr">Track your order</a>
                    <h2 class="section-title">Thank you for your order</h2>
                    <p>Your order has been confirmed! We have provided your order information below, you can also track on your order at the order detail page.</p>
                    <hr>
                </div>
            </div>
        </div>
    </section>
    <!-- /.header-title -->

    <!-- delivery-details -->
    <section class="delivery-details">
        <div class="container bottom-spacing">
            <div class="row ">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 delivery-ststus">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 delivery-address">
                            <h5>Delivery address</h5>
                            <div class="order-address">
                                <address>
                                    <strong>Joe smith</strong>
                                    <br> 200 vesey street New york
                                    <br> New york, NY 10285
                                    <br> United states.
                                </address>
                                <a class="call-number" href="callto:2126400555">(212)-640-0555</a>
                                <br/>
                                <a class="email-address" href="emailto:joe456@hotmail.com">joe456@hotmail.com</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 estimate-time">
                            <h5>Estimated Time</h5>
                            <div class="order-address">
                                <address>
                                    Your order will arrive within 45 mins
                                </address>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 order-summary">
                    <h5 class="text-center">Order Summary</h5>
                    <div class="order-address">
                        <dl class="dl-horizontal order-summary-details">
                            <dt>Order Placed:</dt>
                            <dd>18/02/2016 09:04pm</dd>
                            <dt>Order ID:</dt>
                            <dd>#h4556783</dd>
                            <dt>Payment method:</dt>
                            <dd>Paypal</dd>
                        </dl>
                    </div>
                    <hr>
                    <div class="cart-list">

                        <div class="cl-col">
                            <p>Italian Chicken Wings Fry</p>
                        </div>
                        <div class="cl-col">
                            <div class="price"><a href="javascript:;">x 2</a>
                            </div>
                        </div>
                        <div class="cl-col">
                            <div class="price sub-total">$ 58</div>
                        </div>
                    </div>
                    <div class="cart-list">
                        <div class="cl-col">
                            <p>Assorted Combo</p>
                        </div>
                        <div class="cl-col">
                            <div class="price"><a href="javascript:;">x 1</a>
                            </div>
                        </div>
                        <div class="cl-col">
                            <div class="price sub-total">$ 58</div>
                        </div>
                    </div>
                    <div class="total-cart-list">
                        <h6>Total</h6>
                        <span>
                            USD<strong>$147</strong>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>