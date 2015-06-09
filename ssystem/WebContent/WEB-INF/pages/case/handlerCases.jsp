<%@page import="com.globacomp.ssystem.data.model.Case"%>
<%@page import="com.globacomp.ssystem.common.CaseConfiguration"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="body-content">
	<form:form method="post" action="#" modelAttribute="command">
		<h1>List Of Cases</h1>
		<table style="width: 50%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5" border="1">
			<tr>
				<th>UCR</th>
				<th>Owner</th>
				<th>Total Files</th>
				<th>Created At</th>
				<th>Status</th>
				<th colspan="2">Action</th>
			</tr>
			<c:forEach items="${command.casesList}" var="cas" varStatus="status">
				<tr>
					<td>${cas.UCR}</td>
					<td>${cas.owner.login.username}</td>
					<td><c:forEach
							items="${command.casesList[status.count-1].caseFiles}" var="file"
							varStatus="i">
							<p>${file.fileName}</p>
							<br />
						</c:forEach></td>
					<td>${cas.creationDate}</td>
					<td><%=CaseConfiguration.getStatusMap().get(
							((Case) pageContext.findAttribute("cas"))
									.getCaseStatus())%>
					</td>

					<%-- <c:if test="${cas.caseStatus==10 || cas.caseStatus==15}">
						<td><a href="assign.do?UCR=${cas.UCR}">Assign</a> &nbsp;</td>
						<td><a href="assign.do?UCR=${cas.UCR}">Assign</a> &nbsp;</td>
					</c:if> --%>

					<c:if test="${cas.caseStatus==20}">
						<td><a href="accept.do?UCR=${cas.UCR}">Accept</a> &nbsp;</td>
						<td><a href="rejectAssignment.do?UCR=${cas.UCR}">Reject</a> &nbsp;</td>
					</c:if>
					<c:if test="${cas.caseStatus==25}">
						<td><a href="startProcessing.do?UCR=${cas.UCR}">Start
								Processing</a> &nbsp;</td>
					</c:if>
					<c:if test="${cas.caseStatus==30}">
						<td> <a href="holdProcessing.do?UCR=${cas.UCR}">Hold</a> &nbsp;&nbsp; </td>
					    <td><a href="completeProcessing.do?UCR=${cas.UCR}">Complete</a></td>
					</c:if>
					<c:if test="${cas.caseStatus==35}">
						<td> <a href="startProcessing.do?UCR=${cas.UCR}">Start Processing</a> &nbsp;</td>
					</c:if>
					<c:if test="${cas.caseStatus==40}">
						<td> <a href="acceptCompletion.do?UCR=${cas.UCR}">Accept Completion</a> &nbsp; </td>
						<td> <a href="rejectCompletion.do?UCR=${cas.UCR}">Send Back</a> &nbsp; </td>
					</c:if>
					<!-- 
				<td>
					<a href="#">Reject</a>
				</td>  -->
				</tr>
			</c:forEach>
			<tr>
				<td colspan="7" align="left"><input type="submit"
					value="Accept All"></td>
			</tr>
		</table>
	</form:form>
</div>