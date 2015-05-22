package com.globacomp.ssystem.service;

import java.util.List;

import com.globacomp.ssystem.data.model.Case;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.web.form.CaseForm;

public interface CaseService extends ApplicationService {

	Case create(CaseForm caseForm);
	
	Case create(Case casee);
	
	List<Case> listAll();
	
	List<User> findAllHandler();
	
	Case findByUCR(String ucr);
	
	List<Case> assign(List<Case> cases, String hanlderId);
	
	List<Case> findByIds(String[] ids);
	
	List<Case> findUserCases(User user);
	
	List<Case> findUserCases(String username);
	
	Case acceptAssignment(String UCR) throws Exception;
	
	Case updateCaseStatus(String UCR, int caseStatus) throws Exception;
}
