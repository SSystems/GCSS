package com.globacomp.ssystem.c4m.mail;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.data.model.Login;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.UserVerification;

@Component("emailTemplateService")
@Scope("singleton")
public class EmailTemplateService {
	
	@Autowired
	private ApplicationMailSender mailSender;
	
	public void sendOnbordEmail(UserVerification verification) {
		User user = verification.getUser();
		try {
			MimeMessageHelper mimeMessageHelper= mailSender.createMimeMessageHelper(true);
			mimeMessageHelper.setTo(user.getEmail());
			mimeMessageHelper.setSubject("Welcome Onboard - ChefComeCook");
			
			StringBuilder text = new StringBuilder();
			text.append("<html><body>");
			text.append("Welcome "+user.getFirstName());
			text.append("<br/><br/><br/>");
			text.append("You are just one step away. Verify your email id by copying below url into your browser");
			text.append("<br/><br/><br/>");
			text.append("You will be asked to upload filled W-9 form as per government policy. Form is attached");
			text.append("<br/><br/><br/>");
			text.append("http://chefcomecook.com/verifyemail?verification_code="+verification.getEmailVerificationCode());
			text.append("<br/><br/><br/>");
			text.append("This URL will be valid till "+verification.getEmailValidTill());
			text.append("</body> </html>");
			mimeMessageHelper.setText(text.toString(),true);
			
			Resource resource =  new ClassPathResource("resource/W-9 December 2014.pdf");
			try {
				mimeMessageHelper.addAttachment(resource.getFilename(), resource.getFile());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			mailSender.send(mimeMessageHelper);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Transactional
	public void sendPassword(Login login) {
		
		User user = login.getUser();
		
		try {
			MimeMessageHelper mimeMessageHelper= mailSender.createMimeMessageHelper(true);
			mimeMessageHelper.setTo(login.getUser().getEmail());

			mimeMessageHelper.setSubject("Login Credentials - ChefComeCook");
			
			StringBuilder text = new StringBuilder();
			text.append("<html><body>");
			text.append("Dear "+user.getFirstName());
			text.append("<br/><br/>");
			text.append("On your request, we have sent this email to provide your login credentials for ChefComeCook");
			text.append("<br/><br/><br/>");
			text.append("You can login to ChefComeCook with:"+login.getPassword());
			text.append("<br/><br/>");
			text.append("</body> </html>");
			mimeMessageHelper.setText(text.toString(),true);
			
			
			mailSender.send(mimeMessageHelper);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
}
