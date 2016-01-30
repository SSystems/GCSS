package com.globacomp.ssystem.c4m.data.dao;

import java.util.List;

import com.globacomp.ssystem.data.model.User;

public interface UserRepository extends ApplicationRepository<User>{

	User findByUsername(String username);
	
	List<User> findAllServiceProviders(int top);
}
