package com.globacomp.ssystem.data.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.data.dao.UserDao;
import com.globacomp.ssystem.data.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractApplicationDAO<User> implements UserDao {

	@Override
	public List<User> findAllHandler() {
		// TODO Auto-generated method stub
		return findAll();
	}

	@Override
	public User findByUsername(String username) {
		StringBuilder stb = getSelectSQL();
		stb.append(" and ");
		stb.append("user1.login.username = :username");
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("username", username);
		params.put("recordStatus", (byte)1);
		
		return findByQueryOne(stb.toString(), params);
	}

	
}
