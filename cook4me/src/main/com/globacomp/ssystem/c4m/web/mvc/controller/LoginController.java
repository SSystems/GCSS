package com.globacomp.ssystem.c4m.web.mvc.controller;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
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
	public String init(@ModelAttribute("loginForm") LoginForm login){
		return "login/login";
	}
	
	@RequestMapping(value="/authenticate", method= RequestMethod.POST)
	@Transactional
	public String authenticate(@Valid @ModelAttribute LoginForm loginForm, BindingResult bindingResult, ModelMap map,  HttpSession session) {
		
		// when spring mvc is not supported, use this method build LoginForm from Request
		//LoginForm login = loginFormService.getLoginForm(request); 
		
		if(bindingResult.hasErrors()) {
			return "login/login";
		}
		
		System.out.println(loginForm.getUsername());
		
		User authenticatedUser;
		try {
			authenticatedUser = authenticationService.authenticate(loginForm.getUsername(), loginForm.getPassword());
		} catch (AuthenticationException e) {
			map.addAttribute("errorMessage", e.getMessage());
			//request.setAttribute("errorMessage", e.getMessage());
			return "login/login";
		}
		
		if(authenticatedUser == null) {
			map.addAttribute("errorMessage", "Some Error Occurred");
			//request.setAttribute("errorMessage", "Some Error Occurred");
			return "login/login";
		}
		
		WebUser webUser = new WebUser(authenticatedUser);
		webUser.makePersistant(session);
		
		return "redirect:/home";
	}
	
}
