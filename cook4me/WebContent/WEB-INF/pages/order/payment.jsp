<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/profile.css'/>" />
</head>
<body>
<div id="body-content">
	
	<form:form method="post" action="payment" modelAttribute="orderForm">
		<table style="width: 75%; margin-left: auto; margin-right: auto;" >
			<tr>
				<td colspan="2">Order Summary</td>
			</tr>
			<tr>
				<td>Chef Selected</td>
				<td> ${orderForm.chef } </td>
			</tr>
			<tr>
				<td>Number of Guest</td>
				<td> ${orderForm.chef }  </td>
			</tr>
			<tr>
				<td>Cuisine</td>
				<td> ${orderForm.chef }  </td>
			</tr>
			<tr>
				<td>Occassion Date</td>
				<td> ${orderForm.chef } </td>
			</tr>
			<tr>
				<td>Address</td>
				<td> ${orderForm.chef } </td>
			</tr>
			<tr>
				<td>Pincode</td>
				<td> ${orderForm.chef } </td>
			</tr>
			<tr>
				<td colspan="2">Payment Summary</td>
			</tr>
			<tr>
				<td>Total Amount : 1 &#36; </td>
				<td> </td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" style="border: 0; background: transparent; ">
						<img alt="Pay Now" src="<c:url value='/ui/images/x-click-but6.png'/>">
					</button>
				</td>
				
			</tr>
			
		</table>
	</form:form>
</div>
</body>