<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div id="body-content">
	<form:form method="post" action="onboard"
		modelAttribute="userForm">
		<table style="width: 75%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5">
			
			<tr>
				<td align="right" width="40%">Name</td>
				<td align="left"><form:input path="firstName" placeHolder="First Name"/> &nbsp; <form:input path="lastName" placeHolder="Last Name"/> </td>
				<td align="left"><form:errors path="firstName" cssClass="error"/> &nbsp; <form:errors path="lastName" cssClass="error"/> </td>
			</tr>
			<tr>
				<td align="right" width="40%">Email</td>
				<td align="left"><form:input path="email" placeHolder="Email Id"/>  </td>
				<td align="left"> <form:errors path="email" cssClass="error"/> </td>
			</tr>
			<tr>
				<td align="right" width="40%">Birth Date</td>
				<td align="left"> <form:input path="dob" placeHolder="Date of Birth"/> </td>
				<td align="left"> <form:errors path="dob" cssClass="error"/> </td>
			</tr>
			
			<tr>
				<td align="right" width="40%">Password</td>
				<td align="left"> <form:password path="password" placeHolder="password"/></td>
				<td align="left"> <form:errors path="password" cssClass="error"/> </td>
			</tr>
			<tr>
				<td align="right" width="40%">Confirm Password</td>
				<td align="left"> <form:password path="confirmPassword" placeHolder="password"/></td>
				<td align="left"> <form:errors path="confirmPassword" cssClass="error"/> </td>
			</tr>
			<tr>
				<td align="right" width="40%"> <input type="checkbox"> </td>
				<td align="left"> I agree to <a href="#">Terms &amp; Condition</a> </td>
			</tr>
				<tr>
				<td colspan="2"><button class="button" type="submit">Submit</button></td>
			</tr>
			
		</table>
	</form:form>
</div>