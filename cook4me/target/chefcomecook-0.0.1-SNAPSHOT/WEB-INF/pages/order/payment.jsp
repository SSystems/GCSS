<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="body-content">
	<form:form method="post" action="onboard" modelAttribute="userForm">
		<table style="width: 75%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5">

			<tr>
				<td colspan="2"><button class="button" type="button">Submit</button></td>
			</tr>

		</table>
	</form:form>
</div>