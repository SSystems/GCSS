package com.globacomp.ssystem.c4m.web.mvc.controller;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.globacomp.ssystem.c4m.service.AuthenticationService;
import com.globacomp.ssystem.c4m.service.impl.LoginFormService;
import com.globacomp.ssystem.c4m.web.WebUser;
import com.globacomp.ssystem.c4m.web.mvc.form.LoginForm;
import com.globacomp.ssystem.data.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private AuthenticationService authenticationService;
	
	@Autowired
	private LoginFormService loginFormService;
	
	@RequestMapping(value={"","/"})
	public String init(@ModelAttribute("login") LoginForm login){
		return "login/login";
	}
	
	@RequestMapping(value="/authenticate", method= RequestMethod.POST)
	@Transactional
	public String authenticate(HttpServletRequest request, HttpServletResponse response,  HttpSession session) {
		
		LoginForm login = loginFormService.getLoginForm(request);
		
		System.out.println(login.getUsername());
		
		User authenticatedUser;
		try {
			authenticatedUser = authenticationService.authenticate(login.getUsername(), login.getPassword());
		} catch (AuthenticationException e) {
			//map.addAttribute("errorMessage", e.getMessage());
			request.setAttribute("errorMessage", e.getMessage());
			return "login/login";
		}
		
		if(authenticatedUser == null) {
			//map.addAttribute("errorMessage", "Some Error Occurred");
			request.setAttribute("errorMessage", "Some Error Occurred");
			return "login/login";
		}
		
		WebUser webUser = new WebUser(authenticatedUser);
		webUser.makePersistant(session);
		
		return null;
	}
	
}
