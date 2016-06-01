package com.globacomp.ssystem.c4m.mail.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.c4m.mail.EmailTemplateService;
import com.globacomp.ssystem.c4m.mail.MailSender;
import com.globacomp.ssystem.data.model.Login;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.UserVerification;

@Component("emailTemplateService")
@Scope("singleton")
public class EmailTemplateServiceImpl implements EmailTemplateService {
	
	@Autowired
	private MailSender mailSender;
	
	public void sendOnbordEmail(UserVerification verification) {
		User user = verification.getUser();
		
		Map<String, Object> modelMap = new HashMap<>();
		modelMap.put("name", user.getFirstName());
		modelMap.put("verificationCode", verification.getEmailVerificationCode());
		modelMap.put("validTill", verification.getEmailValidTill());
		
		mailSender.sendMailFromTemplate(ONBOARD_EMAIL_SUBJECT, ONBOARD_EMAIL_TEMPLATE_PATH, modelMap, user.getEmail());
	}
	
	@Transactional
	public void sendPassword(Login login) {
		
		User user = login.getUser();
		
	}
	
	
}
