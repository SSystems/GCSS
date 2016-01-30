<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div id="body-content">
	<h1>Welcome User</h1>	
	
	<form:form method="post"
		action="${pageContext.request.contextPath}/order/payment"
		modelAttribute="orderForm">

		<table style="width: 75%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5">

			<tr>
				<td colspan="2"><button class="button" type="submit">Next</button></td>
			</tr>

		</table>
	</form:form>
</div>