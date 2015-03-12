package com.globacomp.ssystem.web.form;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.globacomp.ssystem.data.model.Case;
import com.globacomp.ssystem.data.model.User;

@Component
public class CaseForm extends AbstractApplicationForm {
	
	private List<Case> casesList;
	
	private MultipartFile file;

	private List<User> handlers;
	
	private Case cas;
	
	private String handlerId;
	
	private String[] selectedCasesForAssignment;

	public List<Case> getCasesList() {
		return casesList;
	}

	public void setCasesList(List<Case> casesList) {
		this.casesList = casesList;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public List<User> getHandlers() {
		return handlers;
	}

	public void setHandlers(List<User> handlers) {
		this.handlers = handlers;
	}

	public Case getCas() {
		return cas;
	}

	public void setCas(Case cas) {
		this.cas = cas;
	}

	public String getHandlerId() {
		return handlerId;
	}

	public void setHandlerId(String handlerId) {
		this.handlerId = handlerId;
	}

	public String[] getSelectedCasesForAssignment() {
		return selectedCasesForAssignment;
	}

	public void setSelectedCasesForAssignment(String[] selectedCasesForAssignment) {
		this.selectedCasesForAssignment = selectedCasesForAssignment;
	}
	
	
	
}
