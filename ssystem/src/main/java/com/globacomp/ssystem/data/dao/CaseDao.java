package com.globacomp.ssystem.data.dao;

import java.util.List;

import com.globacomp.ssystem.data.model.Case;
import com.globacomp.ssystem.data.model.User;

public interface CaseDao extends ApplicationDAO<Case> {
	
	Case findByUCR(String ucr);
	
	Case assign(Case cas);
	
	List<Case> findCasesByHandler(String handlerId);
	
	List<Case> findCasesByHandler(User handler);
	

}
