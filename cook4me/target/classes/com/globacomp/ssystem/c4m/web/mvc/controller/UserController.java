package com.globacomp.ssystem.c4m.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.globacomp.ssystem.c4m.web.mvc.form.UserForm;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping
	public String init(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("In Init");
		return "user/welcome";
	}
	
	@RequestMapping(value="/new", method={RequestMethod.GET, RequestMethod.POST})
	public String _new(@ModelAttribute UserForm userForm) {
		System.out.println("UserController: new");
		return "user/onboard";
	}
	
	@RequestMapping(value="/onboard", method=RequestMethod.POST)
	public String onboard(@Valid @ModelAttribute UserForm userForm, BindingResult bindingResult) {
		System.out.println("UserController: onboard");
		
		if(bindingResult.hasErrors())
			return "user/registration";
		
		return "user/welcome";
	}
}
