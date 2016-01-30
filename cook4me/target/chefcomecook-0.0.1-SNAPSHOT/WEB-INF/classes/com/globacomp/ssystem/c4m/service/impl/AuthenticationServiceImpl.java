package com.globacomp.ssystem.c4m.service.impl;

import javax.naming.AuthenticationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.c4m.data.dao.LoginRepository;
import com.globacomp.ssystem.c4m.service.AuthenticationService;
import com.globacomp.ssystem.data.model.Login;
import com.globacomp.ssystem.data.model.User;

@Service("authenticationService")
public class AuthenticationServiceImpl extends AbstractApplicationService implements AuthenticationService {

	@Autowired
	private LoginRepository loginRepository;
	
	@Override
	public Login findByUsername(String username) {
		return loginRepository.findByUsername(username);
	}

	@Override
	public Login find(Login login) {
		return loginRepository.findByLogin(login);
	}

	@Override
	@Transactional
	public Login changePassword(String username, String password) {
		Login login = findByUsername(username);
		login.setPassword(password);
		
		return loginRepository.save(login);
	}

	@Override
	@Transactional
	public User authenticate(Login login) throws AuthenticationException {
		
		if(login == null)
			throw new AuthenticationException("Login cannot be null");
		
		return authenticate(login.getUsername(), login.getPassword());
	}

	@Override
	@Transactional
	public User authenticate(String username, String password) throws AuthenticationException {

		Login loginFromDB = findByUsername(username);
		
		if(loginFromDB == null)
			throw new AuthenticationException("Invalid Username");
		
		if(loginFromDB.getActive() == 0)
			throw new AuthenticationException("Email is not verified. Login will be activated once you verify your Email Id");
		
		if(loginFromDB.getActive() != 1)
			throw new AuthenticationException("Login is disabled");
		
		if(loginFromDB.getActive()==1 && !loginFromDB.getPassword().equals(password))
			throw new AuthenticationException("Invalid Password");
		
		if(loginFromDB.getActive() == 1 && loginFromDB.getPassword().equals(password)) {
			return loginFromDB.getUser();
		}
		
		return null;
	}

	@Override
	@Transactional
	public Login activateLogin(String username) {
		
		Login login = findByUsername(username);
		
		if(login == null)
			return null;
		
		login.setActive((byte) 1);
		return loginRepository.save(login);
				
	}


}
