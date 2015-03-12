<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div id="body-content">
	<form:form method="post" action="selectHanlderForMultiples.do" modelAttribute="command" >
		<h1> List Of Cases</h1>
		<table style="width: 50%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5" border="1">
			<tr>
				<th></th>
				<th>UCR</th>
				<th>Owner</th>
				<th>Total Files</th>
				<th>Date</th>
				<th> Status</th>
				<th> Action</th>
			</tr>
			<c:forEach items="${command.casesList}" var="cas" varStatus="status">
			<tr>
				<td> <form:checkbox path="selectedCasesForAssignment" value="${cas.id}"/> </td>
				<td> ${cas.UCR} </td>
				<td> ${cas.owner.login.username} </td>
				<td> 
				<c:forEach items="${command.casesList[status.count-1].caseFiles}" var="file" varStatus="i">
					<p>${file.fileName} </p> <br/>
				</c:forEach>
				</td>
				<td> ${cas.creationDate} </td>
				<td> ${cas.caseStatus } </td>
				<td> <a href="selectHanlder.do?UCR=${cas.UCR}">Assign</a> &nbsp;
					<a href="#">Delete</a> 
				</td>
			</tr>
			</c:forEach>
			<tr>
			<td colspan="7" align="left">
				<input type="submit" value="Assign Selected">
			</td>
			</tr>
		</table>
	</form:form>
</div>