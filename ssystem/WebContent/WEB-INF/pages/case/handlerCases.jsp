<%@page import="com.globacomp.ssystem.data.model.Case"%>
<%@page import="com.globacomp.ssystem.common.CaseConfiguration"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<div id="body-content">
	<form:form method="post" action="#" modelAttribute="command" >
		<h1> List Of Cases</h1>
		<table style="width: 50%; margin-left: auto; margin-right: auto;"
			cellspacing="5" cellpadding="5" border="1">
			<tr>
				<th>UCR</th>
				<th>Owner</th>
				<th>Total Files</th>
				<th>Created At</th>
				<th> Status</th>
				<th colspan="2"> Action</th>
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
       		 <td> <%= CaseConfiguration.getStatusMap().get(((Case)pageContext.findAttribute("cas")).getCaseStatus()) %> </td>
				<td> 
					<c:if test="${cas.caseStatus==10 || cas.caseStatus==15}">
						<a href="assign.do?UCR=${cas.UCR}">Assign</a> &nbsp;
					</c:if>
					<c:if test="${cas.caseStatus==20}">
						<a href="accept.do?UCR=${cas.UCR}">Accept</a> &nbsp;
					</c:if>
					<c:if test="${cas.caseStatus==25}">
						<a href="startProcessing.do?UCR=${cas.UCR}">Start Processing</a> &nbsp;
					</c:if>
					<c:if test="${cas.caseStatus==30}">
						<a href="holdProcessing.do?UCR=${cas.UCR}">Hold</a> &nbsp;&nbsp;
						<td>
						<a href="#?UCR=${cas.UCR}">Complete</a>
						</td>
						 
					</c:if>
					<c:if test="${cas.caseStatus==35}">
						<a href="startProcessing.do?UCR=${cas.UCR}">Start Processing</a> &nbsp;
					</c:if>
					<c:if test="${cas.caseStatus==40}">
						<a href="#?UCR=${cas.UCR}">Accept Completion</a> &nbsp;
					</c:if>
				</td>
				<!-- 
				<td>
					<a href="#">Reject</a>
				</td>  -->
			</tr>
			</c:forEach>
			<tr>
			<td colspan="7" align="left">
				<input type="submit" value="Accept All">
			</td>
			</tr>
		</table>
	</form:form>
</div>