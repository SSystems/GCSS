package com.globacomp.ssystem.c4m.mail;

import java.util.Properties;

import javax.annotation.PostConstruct;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;


@Service("mailSender")
@Scope("singleton")
public class ApplicationMailSender {

	private JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	
	public MimeMessage createMimeMessage(){
		return mailSender.createMimeMessage();
	}
	
	public MimeMessageHelper createMimeMessageHelper(boolean multipartMessage) throws MessagingException {
		return new MimeMessageHelper(createMimeMessage(), multipartMessage);
	}

	public void send(MimeMessageHelper mimeMessageHelper) throws MessagingException {
		mimeMessageHelper.getMimeMessage().setFrom("gohel_mihir@yahoo.com");
		mailSender.send(mimeMessageHelper.getMimeMessage());
	}
	
	public void send(MimeMessageHelper[] mimeMessageHelpers) throws MessagingException {
		for (MimeMessageHelper mimeMessageHelper : mimeMessageHelpers) {
			send(mimeMessageHelper);
		}
	}
	
	@PostConstruct
	public void setup() {
		Properties props = new Properties();
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.starttls.enable", "true");
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		//props.setProperty("mail.debug", "true");
		
		
		mailSender.setUsername("information@chefcomecook.com");
		mailSender.setPassword("mG7T&bSL");
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);
		mailSender.setJavaMailProperties(props);
		
	}
	
	public static void main(String[] args) throws MessagingException {
		ApplicationMailSender a = new ApplicationMailSender();
		a.setup();
		
		MimeMessageHelper m = a.createMimeMessageHelper(true);
		m.setFrom("information@chefcomecook.com");
		m.setTo("sunnievir@gmail.com");
		m.setSubject("Test");
		m.setText("Test Mail");
		//InputStream in = ApplicationMailSender.class.getClassLoader().getResourceAsStream("resource/W-9 December 2014.pdf");
		//Resource resource =  new ClassPathResource("resource/W-9 December 2014.pdf");
		
		System.out.println("");
		//m.addAttachment(resource.getFilename(), resource.getFile());
		a.send(m);
	}
}
