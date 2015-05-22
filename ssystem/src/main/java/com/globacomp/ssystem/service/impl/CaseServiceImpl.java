package com.globacomp.ssystem.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.common.CaseConfiguration;
import com.globacomp.ssystem.common.CaseConfiguration.STATUS;
import com.globacomp.ssystem.data.dao.CaseDao;
import com.globacomp.ssystem.data.dao.UserDao;
import com.globacomp.ssystem.data.model.Case;
import com.globacomp.ssystem.data.model.CaseFile;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.exception.CaseNotFoundException;
import com.globacomp.ssystem.service.CaseService;
import com.globacomp.ssystem.web.WebUser;
import com.globacomp.ssystem.web.form.CaseForm;

@Service("caseService")
public class CaseServiceImpl implements CaseService {

	@Autowired
	private CaseDao caseDao;
	
	@Autowired
	private UserDao userDao;
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public Case create(CaseForm caseForm) {
		// TODO Auto-generated method stub
		Case cas = new Case();
		Long random = (long) (Math.random() * Math.pow(10, 6));
		cas.setUCR(String.valueOf(random));
		WebUser loggedInUser = WebUser.getUser();
		System.out.println("Logged:"+loggedInUser.getId());
		cas.setOwner(userDao.findById(loggedInUser.getId()));
		cas.setCaseStatus(CaseConfiguration.STATUS.NEW_CASE_STATUS.getStatus());
		
		CaseFile caseFile = new CaseFile();
		try {
			caseFile.setContent(caseForm.getFile().getBytes());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		caseFile.setFileName(caseForm.getFile().getOriginalFilename());
		caseFile.setAssociatedCase(cas);
		cas.getCaseFiles().add(caseFile);
		
		return create(cas);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public Case create(Case casee) {
		// TODO Auto-generated method stub
		return caseDao.create(casee);
	}

	@Override
	public List<Case> listAll() {
		return caseDao.findAll();
	}

	@Override
	public List<User> findAllHandler() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

	@Override
	public Case findByUCR(String ucr) {
		return caseDao.findByUCR(ucr);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRES_NEW)
	public List<Case> assign(List<Case> cases, String hanlderId) {
		
		User handler = userDao.findById(hanlderId);
		List<Case> assignedCases = new ArrayList<Case>();
		for(Case c: cases) {
			c = caseDao.findById(c.getId());
			c.setHandler(handler);
			c.setCaseStatus(CaseConfiguration.STATUS.ASSIGNMENT_ACCEPTANCE_PENDING_STATUS.getStatus());
			assignedCases.add(caseDao.assign(c));
		}
		return assignedCases;
	}

	@Override
	public List<Case> findByIds(String[] ids) {
		// TODO Auto-generated method stub
		return caseDao.findByIds(ids);
	}

	@Override
	public List<Case> findUserCases(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Case> findUserCases(String username) {
		// TODO Auto-generated method stub
		User user = userDao.findByUsername(username);
		return caseDao.findCasesByHandler(user);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public Case acceptAssignment(String UCR) throws Exception {
		// TODO Auto-generated method stub
		Case c = caseDao.findByUCR(UCR);
		if(c == null)
			throw new CaseNotFoundException(UCR);
		System.out.println("Web User:"+WebUser.getUser().getId());
		System.out.println("Case Handler:"+c.getHandler().getId());
		
		if(WebUser.getUser().getId()!=null && !WebUser.getUser().getId().equalsIgnoreCase(c.getHandler().getId()))
			throw new IllegalStateException("You can not accpet this case as it is not assigned to you..!");
		if(c.getCaseStatus()!= STATUS.ASSIGNMENT_ACCEPTANCE_PENDING_STATUS.getStatus())
			throw new IllegalStateException("You can not accept this case. Current Case Status is:"+CaseConfiguration.getStatusMap().get(c.getCaseStatus()));
		
		c.setCaseStatus(CaseConfiguration.STATUS.ASSIGNMENT_ACCEPTED_STATUS.getStatus());
		
		return caseDao.update(c);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public Case updateCaseStatus(String UCR, int caseStatus) throws Exception {
		// TODO Auto-generated method stub
		Case c = caseDao.findByUCR(UCR);
		if(c == null)
			throw new CaseNotFoundException(UCR);
		System.out.println("Web User:"+WebUser.getUser().getId());
		System.out.println("Case Handler:"+c.getHandler().getId());
		
		if(!CaseConfiguration.getStatusMap().containsKey(caseStatus))
			throw new Exception("Invalid Case Status Exception");
		
		c.setCaseStatus(caseStatus);
		return caseDao.update(c);
			
	}

}
