package com.globacomp.ssystem.c4m.mail;

import java.util.Map;

public interface MailSender {

	void sendMailFromTemplate(final String subject, final String templatePath, final Map<String, Object> modelMap,final String... emailAddresses);
	
	void sendSimpleMail(final String subject, final String body,final String... emailAddresses);		
}
