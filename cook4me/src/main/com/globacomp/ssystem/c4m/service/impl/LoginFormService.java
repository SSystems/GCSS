package com.globacomp.ssystem.c4m.service.impl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.globacomp.ssystem.c4m.service.AuthenticationService;
import com.globacomp.ssystem.c4m.web.mvc.form.LoginForm;

@Component("loginFormService")
public class LoginFormService {

	@Autowired
	private AuthenticationService authenticationService;
	
	public LoginForm getLoginForm(HttpServletRequest request) {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginForm loginForm = new LoginForm();
		loginForm.setPassword(password);
		loginForm.setUsername(username);
		
		return loginForm;
	}
}
