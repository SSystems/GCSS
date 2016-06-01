package com.globacomp.ssystem.c4m.mail.impl;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.LinkedBlockingQueue;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.globacomp.ssystem.c4m.mail.MailSender;

/**
 * Covers the Utilities to send Email.
 * <p>Consumes the incoming Email sending request and saves it into queue, to reduce the response time.</p>
 * <p>Another parallel thread reads the queue and sends the Email to client.</p> 
 * 
 *   
 * @author 10603814
 *
 */

@Component("mailSender")
@Scope("singleton")
public class MailSenderImpl implements MailSender {

	private JavaMailSender javaMailSender;
	
	@Autowired
	private VelocityEngine velocityEngine;

	/*
	 * LinkedBlockingQueue is a thread-safe logical queue based on link nodes. 
	 * This queue stores the stores the element in FIFO manner. 
	 * "mailQueue" is a shared object among the threads. i.e. application server's threads will 
	 * insert the elements at trail and <code>mailSchedular</code> thread will remove the element 
	 * from head (similar to producer-consumer problem). So, queue needs to be thread-safe. 
	 * 
	 * LinkedBlockingQueue acquires the lock while inserting or removing element from it.
	 */
	
	private LinkedBlockingQueue<MimeMessagePreparator> mailQueue = new LinkedBlockingQueue<MimeMessagePreparator>();

	private final String EMAIL_FROM_NAME;
	
	private final String EMAIL_FROM_ADDRESS;
	
	public MailSenderImpl() {
		
		System.out.println("Configuring Email Service");
		JavaMailSenderImpl mailSenderImpl = new JavaMailSenderImpl();
		final Properties mailProperties = new Properties();
		
		try {
			mailProperties.load(new ClassPathResource("resource/mail.properties").getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mailSenderImpl.setSession(Session.getDefaultInstance(mailProperties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailProperties.getProperty("mail.smtp.user"), 
												  mailProperties.getProperty("mail.smtp.passcode"));
			}
		}));
		
		this.EMAIL_FROM_ADDRESS = mailProperties.getProperty("mail.smtp.user");
		this.EMAIL_FROM_NAME = mailProperties.getProperty("mail.smtp.from");
		this.javaMailSender = mailSenderImpl;
	}

	/* public void draftMail(final String toEmailId, final String subject,
			final String templatePath, final Map<String, Object> model) {

		MimeMessagePreparator messagePreparator = new MimeMessagePreparator() {

				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {

					MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(
							mimeMessage);
					mimeMessageHelper.setTo(toEmailId);
					mimeMessageHelper.setFrom("mihir.gohel@lntinfotech.com");
					mimeMessageHelper.setSubject(subject);
					String text = VelocityEngineUtils.mergeTemplateIntoString(
							velocityEngine, templatePath, model);
					mimeMessageHelper.setText(text, true);

				}
			};

			mailQueue.add(messagePreparator);

	} */
	
	public void sendMailFromTemplate(final String subject, final String templatePath, final Map<String, Object> modelMap, final String... toAddresses){
		
		MimeMessagePreparator messagePreparator = new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(
						mimeMessage);
				
				if(toAddresses != null && toAddresses.length > 0 )
					mimeMessageHelper.setTo(toAddresses);
				
				else {
					System.out.println("To email address cannot be blank or null and it has to be valid email address");
					return;
				}
				
				mimeMessageHelper.setFrom(EMAIL_FROM_ADDRESS,EMAIL_FROM_NAME);
				mimeMessageHelper.setSubject(subject);
				
				String body = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, templatePath, "UTF-8", modelMap);
				mimeMessageHelper.setText(body, true);

			}
		};

		mailQueue.add(messagePreparator);
	}

	public void sendSimpleMail(final String subject, final String body,final String... toAddresses){
		
		MimeMessagePreparator messagePreparator = new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(
						mimeMessage);
				
				if(toAddresses != null && toAddresses.length > 0 )
					mimeMessageHelper.setTo(toAddresses);
				
				else {
					System.out.println("To email address cannot be blank or null and it has to be valid email address");
					return;
				}
				
				mimeMessageHelper.setFrom(EMAIL_FROM_ADDRESS,EMAIL_FROM_NAME);
				mimeMessageHelper.setSubject(subject);
				
				mimeMessageHelper.setText(body, true);

			}
		};

		mailQueue.add(messagePreparator);
	}
	
	public void send(MimeMessagePreparator mimeMessagePreparator) {
	
		try {
			javaMailSender.send(mimeMessagePreparator);
		} catch (Exception e) {
			System.err.println("Error in sending Email : "+ e.getMessage());
		}

	}
	
	public LinkedBlockingQueue<MimeMessagePreparator> getMailQueue() {
		return mailQueue;
	}


}
