package com.globacomp.ssystem.data.dao;

import java.util.List;

import com.globacomp.ssystem.data.model.User;

public interface UserDao extends ApplicationDAO<User> {

	List<User> findAllHandler();
	
	User findByUsername(String username);
}
