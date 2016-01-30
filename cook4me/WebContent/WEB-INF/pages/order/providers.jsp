<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/ui/css/profile.css'/>" />
</head>
<body> 
<div id="body-content">
	<h1>Select Service Provider</h1>	
	
	<form:form method="post"
		action="${pageContext.request.contextPath}/order/paymentConfirmation"
		modelAttribute="orderForm">
		
		<table style="width: 75%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5">

			<tr>
				<td colspan="2"><button class="button" type="submit">Next</button></td>
			</tr>

		</table>
	</form:form>
</div>
</body>