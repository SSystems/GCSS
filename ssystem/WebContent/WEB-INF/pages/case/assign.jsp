<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div id="body-content">
	
	<form:form method="post" action="assign.do"
		modelAttribute="command" >
		
		<table style="width: 50%; margin-left: auto; margin-right: auto;"
			border="1">
			<c:if test="${not command.valid}">
				<tr>
					<td class="error" colspan="2"><form:errors path="*"
							cssClass="error" /></td>
				</tr>
			</c:if>
			<tr>
				<th colspan="5">Case Details</th>
			</tr>
			<tr>
				<th>UCR</th>
				<th>Owner</th>
				<th>Total Files</th>
				<th>Date</th>
				<th> Status</th>
			</tr>
			
			<c:forEach items="${command.casesList}" var="cas" varStatus="status">
			<tr>
				<td> ${cas.UCR} </td>
				<td> ${cas.owner.login.username} </td>
				<td> 
				<c:forEach items="${command.casesList[status.count-1].caseFiles}" var="file" varStatus="i">
					<p>${file.fileName} </p> <br/>
				</c:forEach>
				</td>
				<td> ${cas.creationDate} </td>
				<td> ${cas.caseStatus } </td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 50%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5" border="1">
			
			<tr>
				<th colspan="5"> Select Handler </th>
			</tr>
			<tr>
				<th> </th>
				<th> First Name </th>
				<th> Last Name </th>
				<th> Username </th>
				<th> Cases Handling  </th>
			</tr>
			 
			<c:forEach items="${command.handlers}" var="user" varStatus="status">
			<tr>
				<td> <form:radiobutton path="handlerId" value="${user.id}"/> </td>
				<td> ${user.firstName} </td>
				<td> ${user.lastName} </td>
				<td> ${user.login.username} </td>
				<td> 0 </td>
			</tr>
			</c:forEach>
			
			<tr>
				<td colspan="5"> <input type="submit" value="Assign" /></td>
			</tr>
		</table>
	</form:form>
	
</div>