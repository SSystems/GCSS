
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<script>
$(document).ready(function(){
    $('#btn_reprice').click(function(e){
    	
  	e.preventDefault();
  	$('#shoppingCartForm').attr('action','reprice');
  	$('#shoppingCartForm').submit();
  	});
 
  });
</script>
</head>
<body class="has-fixedheader inner-page">
	<!-- /.navbar-wrapper -->

	<section class="header-title">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 position-relative">
					<a href="index.html" class="back-nav back-nav-large back-nav-bdr">Continue
						Shopping</a>
					<h2 class="section-title text-center">Shopping Cart</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- /.header-title -->

	<section class="main-content">
		<div class="mobile-title">
			<h3>Delivery &amp; Payment Method</h3>
		</div>
		<!-- ./mobile-title -->
		<div class="container bottom-spacing">
		<form:form method="post" action="confirm_order" modelAttribute="cart" id="shoppingCartForm">
			<div class="row ">
				<div class="col-lg-12 col-md-12">
				
					<table class="shoppingCart-table table table-hover table-condensed">
						<thead>
							<tr>
								<th style="width: 14.2%">Product</th>
								<th style="width: 33.3%">Item</th>
								<th style="width: 14.2%">Price</th>
								<th style="width: 20%">Quantity</th>
								<th style="width: 14.2%" class="text-center">Subtotal</th>
							</tr>
						</thead>
						<tbody>
								<form:hidden path="id"/>
								<c:forEach items="${cart.cartLineItems}" var="element">
									<c:set var="cartLineItem" value="${element.value}"></c:set>		
									<tr>
										<form:hidden path="cartLineItems['${element.key}'].id"/>
										<form:hidden path="cartLineItems['${element.key}'].product.id"/>
										<td data-th="Product"><img
											src="<c:url value='/ui/images/cart-img-1.png'/>" alt="..."
											class="img-responsive" /></td>
										<td data-th="Item">
											<div class="row">
												<div class="col-sm-10">
													<hgroup>
														<h4>${cartLineItem.product.name }</h4>
														<h5>${cartLineItem.product.code }</h5>
														<h6>${cartLineItem.product.description}</h6>
													</hgroup>
												</div>
											</div>
										</td>
										<td data-th="Price">${cartLineItem.product.price }</td>
										<td data-th="Quantity" class="quantity-count">
											<div class="numbers-row">
												<div class="dec qc-btn">-</div>
												<form:input path="cartLineItems['${element.key}'].quantity"
													class="cartlineitem_qty" data-lineitem-id="${cartLineItem.id }" data-product="${element.key }" />
												<div class="inc qc-btn">+</div>
											</div>
										</td>
										<td data-th="Subtotal">${cartLineItem.extendedPrice}</td>
									</tr>
								</c:forEach>
							
						</tbody>
						<tfoot>
							<!-- <tr class="hidden-xs hidden-lg hidden-sm hidden-md">
                                <td class="text-center"><strong>Total</strong>
                                </td>
                            </tr> -->
							<tr>
								<td colspan="3" class="price-count"></td>
								<td class="text-center"><strong>Total</strong></td>
								<td class="text-center"><strong>$ ${cart.totalCartPrice }</strong></td>
							</tr>
						</tfoot>
					</table>
					
				</div>
			</div>
			<div class="row">
				<div class="col-lg-7 col-md-7 col-sm-7 gift-coupon">
					 <div class="form-inline gift-coupuns">
						<div class="form-group">
							<input type="text" placeholder="Gift coupuns">
						</div>
						<button type="submit" class="btn" disabled="disabled">Apply</button>
					</div>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-5 order-confirm">
					<div class="text-right">
						 <button type="button" class="btn m0" id="btn_reprice">Reprice</button> 
						
							<button type="submit" class="btn m0" >Confirm your Order
								&amp; Pay</button>
						
					</div>
				</div>
			</div>
			</form:form>
		</div>
	</section>
	<!-- /.main-content -->

</body>
</html>