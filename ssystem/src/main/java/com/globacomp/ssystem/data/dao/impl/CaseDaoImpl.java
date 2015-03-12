package com.globacomp.ssystem.data.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.data.dao.CaseDao;
import com.globacomp.ssystem.data.dao.UserDao;
import com.globacomp.ssystem.data.model.Case;
import com.globacomp.ssystem.data.model.User;

@Repository("caseDao")
public class CaseDaoImpl extends AbstractApplicationDAO<Case> implements CaseDao {

	@Autowired
	private UserDao userDao;
	
	@Override
	public Case findByUCR(String ucr) {
		
		StringBuilder stb = getSelectSQL();
		stb.append(" and UCR = :ucr");
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("recordStatus", (byte) 1);
		params.put("ucr", ucr);
		return findByQueryOne(stb.toString(), params);
	}

	@Override
	public Case assign(Case cas) {
		// TODO Auto-generated method stub
		//TODO CaseHistory Interceptor
		return update(cas);
	}

	@Override
	public List<Case> findCasesByHandler(String handlerId) {
		// TODO Auto-generated method stub
		return findCasesByHandler(userDao.findById(handlerId));
	}

	@Override
	public List<Case> findCasesByHandler(User handler) {
		// TODO Auto-generated method stub
		StringBuilder stb = getSelectSQL();
		stb.append(" and ");
		stb.append(" handler = :handlerId");
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("handlerId", handler);
		params.put("recordStatus", (byte) 1);
		return findByQueryList(stb.toString(), params);
	}

}
