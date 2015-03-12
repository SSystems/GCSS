package com.globacomp.ssystem.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.globacomp.ssystem.data.model.Case;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.service.AuthenticationService;
import com.globacomp.ssystem.service.CaseService;
import com.globacomp.ssystem.web.WebUser;
import com.globacomp.ssystem.web.form.CaseForm;
import com.globacomp.ssystem.web.form.validator.CaseFormValidator;

@Controller("caseController")
public class CaseController extends AbstractApplicationController<CaseForm, CaseFormValidator> {
	
	@Autowired
	private CaseService caseService;
	
	@Autowired
	private AuthenticationService authenticationService;
	
	public String doNew(HttpServletRequest request, HttpServletResponse response) {
		
		return CASE_UPLOAD_VIEW;
	}
	
	public String doUpload(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) {
		System.out.println("In Upload");
		System.out.println(caseForm.getFile().getOriginalFilename());
		Case cas = caseService.create(caseForm);
		System.out.println(cas.getId());
		return CASE_UPLOAD_VIEW;
	}
	
	public String doList(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) {
		caseForm.setCasesList(caseService.listAll());
		return CASE_LIST_VIEW;
	}
	
	public String doSelectHanlder(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) throws Exception{

		String ucr = request.getParameter("UCR");
		if(StringUtils.isBlank(ucr))
			throw new Exception("UCR not found for request");
		
		caseForm.setHandlers(caseService.findAllHandler());
		System.out.println(caseForm.getHandlers().size());
		
		caseForm.setCasesList(new ArrayList<Case>());
		caseForm.getCasesList().add(caseService.findByUCR(ucr));
		
		return HANDLER_LIST_VIEW;
	}
	public String doSelectHanlderForMultiples(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) throws Exception{
	
		String caseIds = StringUtils.join(caseForm.getSelectedCasesForAssignment(),",");
		System.out.println(caseIds);
		if(StringUtils.isBlank(caseIds))
			throw new Exception("Select Atleast 1 Case");
		
		caseForm.setCasesList(caseService.findByIds(caseForm.getSelectedCasesForAssignment()));
		caseForm.setHandlers(caseService.findAllHandler());
		
		return HANDLER_LIST_VIEW;
	}
	
	public String doHandlerCases(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) {
		
		WebUser sessionUser = WebUser.getUser();
		List<Case> caseList= caseService.findUserCases(sessionUser.getUsername());
		caseForm.setCasesList(caseList);
		return HANDLER_CASES_LIST_VIEW;
		
	}
	public String doAssign(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) {
		
		System.out.println(caseForm.getHandlerId());
		System.out.println(caseForm.getCas());
		List<Case> assignedCases= caseService.assign(caseForm.getCasesList(), caseForm.getHandlerId());
		System.out.println("After Update");
		//System.out.println(c.getHandler().getLogin().getUsername());
		return CASE_LIST_VIEW;
	}
	
	public String doAccept(HttpServletRequest request, HttpServletResponse response, HttpSession session, CaseForm caseForm) throws Exception {
		String UCR = request.getParameter("UCR");
		if(StringUtils.isBlank(UCR))
			throw new Exception("UCR not found for request");
		
		caseService.acceptAssignment(UCR);
		response.sendRedirect(request.getContextPath()+"/case/handlerCases.do");
		return HANDLER_CASES_LIST_VIEW;
	}
	
}
