 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
    $('#paypalButtonLink').click(function(e){
    	
  	e.preventDefault();
  	$('#payment_form').submit();
  	});
 
  });
</script>
</head>
<body class="has-fixedheader">

 <section class="breadcrumb-nav">
        <div class="container">
            <div class="row">
                <ol class="col-lg-12 breadcrumb">
                    <li><a href="#">Cart</a>
                    </li>
                    <li><a href="customer-info.html">Customer Information</a>
                    </li>
                    <li class="active">Delivery &amp; Payment Method</li>
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
         <form action="payment" method="post" id="payment_form">
         	<input type="hidden" value="${cart.id }" name="cartId"> 
            <div class="row ">
                <div class="col-lg-4 col-md-4 col-md-push-8">
                    <h4>Your Cart</h4>
                    <c:forEach items="${cart.cartLineItems}" var="element">
					<c:set var="cartLineItem" value="${element.value}"></c:set>
                    <div class="cart-list">
                        <div class="cl-col">
                            <figure class="product-img">
                                <img src="<c:url value='/ui/images/cart-img-1.png'/>" alt="">
                                <span class="badge">${cartLineItem.quantity }</span>
                            </figure>
                        </div>
                        <div class="cl-col">
                            <p>${cartLineItem.product.name }</p>
                        </div>
                        <div class="cl-col">
                            <div class="price">$ ${cartLineItem.extendedPrice }</div>
                        </div>
                    </div>
                    </c:forEach>
                    
                   
                    <!-- /.cart-list -->
                    <div class="total-cart-list">
                        <h6>Total</h6>
                        <span>
                            USD<strong>$ ${cart.totalCartPrice }</strong>
                        </span>
                    </div>
                    <!-- /.total-cart-list -->
                </div>
                <div class="col-lg-8 col-md-8 col-md-pull-4">
                    <h4>Delivery Address</h4>
                    <c:forEach items="${cart.cartOwner.userAddresses}" var="address"> 
                    <div class="address-wall">
                        <address>
                            <i class="action"> 
                                <a href="javascript:;" class="icon-edit"></a>
                                <a href="javascript:;" class="icon-delete"></a>
                            </i>
                            <h6> ${cart.cartOwner.firstName} ${cart.cartOwner.lastName} </h6>
                            <p>${address.addressLine1 },&nbsp;${address.addressLine2 } 
                                <br>${address.city }, ${address.state }
                                <br>${address.zipcode }</p>
                        </address>

                    </div>
                    </c:forEach>
                    <hr>
                    <h5>Delivery Method</h5>

                    <div class="delivery-method clearfix">
                        <div class="col-md-6 nopadding">
                            <div class="radio radio-primary">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">Delivery</label>
                                <small>Your order will be delivered to your address</small>
                                <p>Estimated Delivery time is 45 mins</p>
                            </div>
                        </div>
                        <div class="col-md-6 nopadding">
                            <div class="radio radio-primary">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">Pick up</label>
                                <small>Pickup your order at chef's place below</small>
                                <address>
                                    <i class="action"> 
                                        <a href="javascript:;" class="icon-edit"></a>
                                        <a href="javascript:;" class="icon-delete"></a>
                                    </i>
                                    <p>1559, pearls road suite - 102
                                        <br>N Mills avenue, Orlando, FL 32801</p>
                                </address>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr>
                    </div>
                   
                    	<div class="text-right m-b30">
                        <a href="javascript:" id="paypalButtonLink"><img src="<c:url value='/ui/images/btn-paypal.png'/>" alt="">
                        </a>
                    </div>
                   
                </div>
            </div>
             </form>
        </div>
    </section>
    
    <!-- /.main-content -->

    
    </body>
    </html>