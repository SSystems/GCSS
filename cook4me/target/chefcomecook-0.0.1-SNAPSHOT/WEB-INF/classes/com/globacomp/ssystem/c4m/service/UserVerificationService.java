package com.globacomp.ssystem.c4m.service;



public interface UserVerificationService extends ApplicationService {

	String verifyCode(String emailVerificationCode) throws Exception;
}
