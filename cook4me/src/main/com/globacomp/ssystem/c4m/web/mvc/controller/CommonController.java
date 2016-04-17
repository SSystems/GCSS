package com.globacomp.ssystem.c4m.web.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.globacomp.ssystem.c4m.mail.EmailTemplateService;
import com.globacomp.ssystem.c4m.service.AuthenticationService;
import com.globacomp.ssystem.c4m.service.ServiceProviderService;
import com.globacomp.ssystem.c4m.service.UserVerificationService;
import com.globacomp.ssystem.c4m.web.WebUser;
import com.globacomp.ssystem.c4m.web.mvc.form.ChangePasswordForm;
import com.globacomp.ssystem.c4m.web.mvc.form.LoginForm;
import com.globacomp.ssystem.data.model.Login;

@Controller
public class CommonController {

	@Autowired
	private UserVerificationService userVerificationService;
	
	@Autowired
	private AuthenticationService authenticationService;
	
	@Autowired
	private EmailTemplateService emailTemplateService;
	
	@Autowired
	private ServiceProviderService serviceProviderService;
	
	
	@RequestMapping(value="/")
	public String init(HttpServletRequest request, HttpServletResponse response, ModelMap model, HttpSession session) {
		
		try {
			request.getRequestDispatcher("/home").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "homeView";
	}
	
	@RequestMapping(value="/home")
	public String home(ModelMap model, HttpSession session) {
		
		return "homeView";
	}
	
	@RequestMapping(value="/privacy_policy")
	public String privacyPolicy(ModelMap model, HttpSession session) {
		
		return "common/privacy_policy";
	}
	@RequestMapping(value="/contactus")
	public String doContact(HttpServletRequest request, HttpServletResponse response){
		return "common/contactus";
	}
	
	@RequestMapping(value = "/verifyemail", method = RequestMethod.GET)
	public String verifyEmail(HttpServletRequest request, @RequestParam(value="verification_code", required=true) String verificationCode) throws Exception {
		
		String message= userVerificationService.verifyCode(verificationCode);
		
		return "forward:/post_email_verification?status="+message;
	}
	
	@RequestMapping(value = "/post_email_verification", method = RequestMethod.GET)
	public String postEmailVerfication(HttpServletRequest request, @RequestParam (value="status", required=true) String status, ModelMap model) {
		
		if("verified".equalsIgnoreCase(status))
			model.addAttribute("message", "Your email is verified. Try Login now");
		
		else if("invalid_code".equalsIgnoreCase(status))
			model.addAttribute("message", "Invalid Verification Code");
		else if("expired".equalsIgnoreCase(status))
			model.addAttribute("message", "Verification Code is Expired");
		return "common/email_verified";
	}
	
	@RequestMapping(value = "/how_we_work", method = RequestMethod.GET)
	public String howWeWork(HttpServletRequest request) {
		
		return "common/howWeWork";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, ModelMap model, HttpServletResponse response, HttpSession session) {
		
		session.invalidate();
		model.addAttribute("message", "You logged out successfully");
		return "forward:/login";
	}
	
	@RequestMapping("/change_password")
	public String changePassword(@ModelAttribute ChangePasswordForm changePasswordForm, ModelMap model,HttpSession session) {
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) {
			model.addAttribute("errorMessage", "You must authenticate yourself");
			return "forward:/login";
		}
		
		changePasswordForm.setUsername(webUser.getUsername());
		
		return "common/change_password";
	}
	
	@RequestMapping(value="/change_password/submit", method= RequestMethod.POST)
	public String changePasswordSubmit(@Valid @ModelAttribute ChangePasswordForm changePasswordForm, BindingResult bindingResult, ModelMap model,  HttpSession session) {
		
		System.out.println("came in change password");
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) {
			model.addAttribute("errorMessage", "You must authenticate yourself");
			return "forward:/login";
		}
		
		if(bindingResult.hasErrors()) {
			System.out.println("Change Password Binding Error");
			return "common/change_password";
		}
		
		Login login2 = new Login();
		login2.setUsername(changePasswordForm.getUsername());
		login2.setPassword(changePasswordForm.getPassword());
		
		login2 = authenticationService.find(login2);
		
		if(login2 == null) {
			model.addAttribute("errorMessage", "Invalid current password");
			return "forward:/change_password";
		}
		
		if(!changePasswordForm.getNewPassword().equals(changePasswordForm.getNewPasswordAgain())) {
			model.addAttribute("errorMessage", "New password do not match. Try Again");
			return "forward:/change_password";
		}
		
		login2 = authenticationService.changePassword(changePasswordForm.getUsername(), changePasswordForm.getNewPassword());
		
		if(login2 == null ){
			model.addAttribute("errorMessage", "Some error occurred while updating your new password. Try later");
			return "forward:/change_password";
		}
		
		model.addAttribute("message", "Password Changed Successfully");
		
		return "common/change_password";
	}
	
	@RequestMapping(value="/forgot_password",method = RequestMethod.GET)
	public String forgotPassword(@ModelAttribute LoginForm loginForm, @RequestParam(value="username", required=false) String username, ModelMap model) {
		
		if(StringUtils.isBlank(username))
			return "common/forgot_password";
		
		Login login = authenticationService.findByUsername(username);
		
		if(login == null) {
			model.addAttribute("errorMessage", "Invalid Username");
			return "common/forgot_password";
		}
		
		emailTemplateService.sendPassword(login);
		
		model.addAttribute("message", "Password has been sent to your registered email id. Please check your email");
		
		return "common/forgot_password";
	}
	
	
}
