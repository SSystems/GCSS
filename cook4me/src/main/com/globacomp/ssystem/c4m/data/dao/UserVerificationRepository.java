package com.globacomp.ssystem.c4m.data.dao;

import com.globacomp.ssystem.data.model.UserVerification;

public interface UserVerificationRepository extends ApplicationRepository<UserVerification>{
	
	UserVerification findByVerificationCode(String verificationCode);
}