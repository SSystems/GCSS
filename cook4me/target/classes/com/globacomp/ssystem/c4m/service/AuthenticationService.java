package com.globacomp.ssystem.c4m.service;

import javax.naming.AuthenticationException;

import com.globacomp.ssystem.data.model.Login;
import com.globacomp.ssystem.data.model.User;

public interface AuthenticationService extends ApplicationService {

	User authenticate(Login login) throws AuthenticationException;
	
	User authenticate(String username, String password) throws AuthenticationException;
	
	Login findByUsername(String username);
	
	Login find(Login login);
	
	Login changePassword(String username, String password);
	
	Login activateLogin(String username);
}
