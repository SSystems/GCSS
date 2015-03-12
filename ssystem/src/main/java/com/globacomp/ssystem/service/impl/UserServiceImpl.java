package com.globacomp.ssystem.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.data.dao.UserDao;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		if(StringUtils.isBlank(username))
			throw new UsernameNotFoundException(username);
		
		return userDao.findByUsername(username);
	}
	

}
