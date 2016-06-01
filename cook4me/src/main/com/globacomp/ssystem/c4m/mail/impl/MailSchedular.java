package com.globacomp.ssystem.c4m.mail.impl;

import java.util.concurrent.LinkedBlockingQueue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component(value="mailSchedular")
@Scope("singleton")
@EnableScheduling
@EnableAsync
public class MailSchedular {

	@Autowired
	private MailSenderImpl mailSender;
	
	private MimeMessagePreparator message;
	
	@Scheduled(fixedDelay=10000)
	@Async
	public void sendMails() {
		
		System.out.println("In Send Mail");
		LinkedBlockingQueue<MimeMessagePreparator> queue = mailSender.getMailQueue();
		
		while(!queue.isEmpty()) {
			
			message = queue.poll();
			
			if(message!=null)
				mailSender.send(message);
		}
	}

}
