<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/profile.css'/>" />
</head>
<body>
<div id="body-content">
	<h1>Hassle free booking</h1>

	<form:form method="post"
		action="${pageContext.request.contextPath}/order/providers"
		modelAttribute="orderForm">

		<table style="width: 75%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5">

			<tr>
				<td align="right" width="40%">Cuisines</td>
				<td align="left"> <form:checkboxes items="${cuisines}" path="cuisines"/> </td>
				<td align="left"><form:errors path="cuisines" cssClass="error" /></td>
			</tr>
			<tr>
				<td align="right" width="40%">No of Guest</td>
				<td align="left"><form:input path="totalGuests" placeHolder="No of Guests" /></td>
				<td align="left"><form:errors path="totalGuests" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td align="right" width="40%">Date of Occasion</td>
				<td align="left"><form:input path="date" placeHolder="Date of Occasion" /></td>
				<td align="left"><form:errors path="date" cssClass="error" /></td>
			</tr>

			<tr>
				<td align="right" width="40%">Address</td>
				<td align="left"><form:textarea path="address" 	placeHolder="Place of Occasion" /></td>
				<td align="left"><form:errors path="address" cssClass="error" /></td>
			</tr>
			<tr>
				<td align="right" width="40%">Pincode</td>
				<td align="left"><form:input path="pincode"	placeHolder="Pincode" /></td>
				<td align="left"><form:errors path="pincode" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><button class="button" type="submit">Next</button></td>
			</tr>

		</table>
	</form:form>
</div>
</body>