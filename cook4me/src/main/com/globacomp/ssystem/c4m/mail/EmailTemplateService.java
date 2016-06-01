package com.globacomp.ssystem.c4m.mail;

import com.globacomp.ssystem.data.model.Login;
import com.globacomp.ssystem.data.model.UserVerification;

public interface EmailTemplateService {

	String ONBOARD_EMAIL_TEMPLATE_PATH = "com/globacomp/ssystem/c4m/mail/template/chef-onboard.vm";
	
	String ONBOARD_EMAIL_SUBJECT = "Welcome Onboard";
	
	void sendOnbordEmail(UserVerification verification);
	
	void sendPassword(Login login);
	
}
