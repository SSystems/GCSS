package com.globacomp.ssystem.c4m.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.c4m.data.dao.UserVerificationRepository;
import com.globacomp.ssystem.c4m.service.AuthenticationService;
import com.globacomp.ssystem.c4m.service.UserVerificationService;
import com.globacomp.ssystem.data.model.UserVerification;

@Service("userVerificationService")
public class UserVerificationServiceImpl extends AbstractApplicationService implements UserVerificationService {

	@Autowired
	private UserVerificationRepository userVerificationRepository;
	
	@Autowired
	private AuthenticationService authenticationService;
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public String verifyCode(String emailVerificationCode) throws Exception {
		
		UserVerification verification = userVerificationRepository.findByVerificationCode(emailVerificationCode);
		
		if(verification == null)
			return "invalid_code";
		
		if(!verification.getEmailValidTill().after(new Date()))
			return ("expired");
		
		verification.setEmailVerified(true);
		userVerificationRepository.save(verification);
		
		authenticationService.activateLogin(verification.getUser().getLogin().getUsername());
		
		return "verified";
	}

}
