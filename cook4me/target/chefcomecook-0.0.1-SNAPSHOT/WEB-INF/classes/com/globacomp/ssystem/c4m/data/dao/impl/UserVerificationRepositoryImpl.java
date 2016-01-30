package com.globacomp.ssystem.c4m.data.dao.impl;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.data.dao.UserVerificationRepository;
import com.globacomp.ssystem.data.model.UserVerification;

@Repository("userVerificationRepository")
public class UserVerificationRepositoryImpl extends AbstractApplicationRepository<UserVerification> implements UserVerificationRepository{

	@Override
	public UserVerification findByVerificationCode(String verificationCode) {
		// TODO Auto-generated method stub
		Query query = this.entityManager.createQuery("select userVerification from UserVerification userVerification where emailVerificationCode= :emailVerificationCode");
		query.setParameter("emailVerificationCode", verificationCode);
		
		UserVerification userVerification = null;
		try {
			userVerification = (UserVerification) query.getSingleResult();	
		} catch(NoResultException ne){
			System.out.println("No Result found for Email Verification Code:"+verificationCode);
		}
		return userVerification;
	}

}
