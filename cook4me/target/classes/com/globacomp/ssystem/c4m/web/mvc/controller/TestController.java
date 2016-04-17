package com.globacomp.ssystem.c4m.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping(value={"","/paypal"})
	public String init(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		return "test/paypalfunctions";
	}
	
	@RequestMapping(value={"/test/home"})
	public String home(HttpServletRequest request, HttpServletResponse response) {
		
		return "test/home";
	}
}
