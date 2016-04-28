 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<body class="has-fixedheader inner-page">

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
        </nav>
    </header>
    <!-- /.navbar-wrapper -->

    <section class="header-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 position-relative">
                    <a href="index.html" class="back-nav back-nav-large back-nav-bdr">Continue Shopping</a>
                    <h2 class="section-title text-center">Shopping Cart</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- /.header-title -->

    <section class="main-content">
        <div class="mobile-title">
            <h3>Delivery & Payment Method</h3>
        </div>
        <!-- ./mobile-title -->
        <div class="container bottom-spacing">
            <div class="row ">
                <div class="col-lg-12 col-md-12">
                    <table class="shoppingCart-table table table-hover table-condensed">
                        <thead>
                            <tr>
                                <th style="width:14.2%">Product</th>
                                <th style="width:33.3%">Item</th>
                                <th style="width:14.2%">Price</th>
                                <th style="width:20%">Quantity</th>
                                <th style="width:14.2%" class="text-center">Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td data-th="Product"><img src="<c:url value='/ui/images/cart-img-1.png'/>" alt="..." class="img-responsive" />
                                </td>
                                <td data-th="Item">
                                    <div class="row">
                                        <div class="col-sm-10">
                                            <hgroup>
                                                <h4>Italian Chicken Wings Fry</h4>
                                                <h5>Special Instructions</h5>
                                                <h6>Add small amout of spices to all the foods</h6>
                                            </hgroup>
                                        </div>
                                    </div>
                                </td>
                                <td data-th="Price">$ 1.99</td>
                                <td data-th="Quantity" class="quantity-count">
                                    <div class="numbers-row">
                                        <div class="dec qc-btn">-</div>
                                        <input type="text" name="french-hens" id="french-hens" value="1">
                                        <div class="inc qc-btn">+</div>
                                    </div>
                                </td>
                                <td data-th="Subtotal">$ 1.99</td>
                            </tr>
                            <tr>
                                <td data-th="Product"><img src="<c:url value='/ui/images/cart-img-2.png'/>" alt="..." class="img-responsive" />
                                </td>
                                <td data-th="Item">
                                    <div class="row">
                                        <div class="col-sm-10">
                                            <hgroup>
                                                <h4>Italian Chicken Wings Fry</h4>
                                                <h5>Special Instructions</h5>
                                                <h6>Add small amout of spices to all the foods</h6>
                                            </hgroup>
                                        </div>
                                    </div>
                                </td>
                                <td data-th="Price">$ 1.99</td>
                                <td data-th="Quantity" class="quantity-count">
                                    <div class="numbers-row">
                                        <div class="dec qc-btn">-</div>
                                        <input type="text" name="french-hens" id="french-hens" value="1">
                                        <div class="inc qc-btn">+</div>
                                    </div>
                                </td>
                                <td data-th="Subtotal">$ 1.99</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <!-- <tr class="hidden-xs hidden-lg hidden-sm hidden-md">
                                <td class="text-center"><strong>Total</strong>
                                </td>
                            </tr> -->
                            <tr>
                                <td colspan="3" class="price-count"></td>
                                <td class="text-center"><strong>Total</strong>
                                </td>
                                <td class="text-center"><strong>$ 1.99</strong>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7 gift-coupon">
                    <form class="form-inline gift-coupuns">
                        <div class="form-group">
                            <input type="text" placeholder="Gift coupuns">
                        </div>
                        <button type="submit" class="btn" disabled="disabled">Apply</button>
                    </form>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 order-confirm">
                    <div class="text-right">
                        <a href="delivery-payment.html">
                            <button type="button" class="btn m0">Confirm your Order &amp; Pay</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.main-content -->

</body>
</html>