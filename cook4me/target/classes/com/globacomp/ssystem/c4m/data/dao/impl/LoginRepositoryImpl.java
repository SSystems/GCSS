package com.globacomp.ssystem.c4m.data.dao.impl;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.data.dao.LoginRepository;
import com.globacomp.ssystem.data.model.Login;

@Repository("loginRepository")
public class LoginRepositoryImpl extends AbstractApplicationRepository<Login> implements LoginRepository {

	@Override
	public Login findByUsername(String username) {

		Query query = this.entityManager.createQuery("select login from Login login where username= :username");
		query.setParameter("username", username);
		
		Login login = null;
		try {
			login = (Login) query.getSingleResult();	
		} catch(NoResultException ne){
			System.out.println("No Result found for Login by username:"+username);
		}
		return login;
	}

	@Override
	public Login findByLogin(Login login) {
		// TODO Auto-generated method stub
		Query query = this.entityManager.createQuery("select login from Login login where username= :username and password=:password");
		query.setParameter("username", login.getUsername());
		query.setParameter("password", login.getPassword());
		
		Login login2 = null;
		try {
			login2 = (Login) query.getSingleResult();	
		} catch(NoResultException ne){
			System.out.println("No Result found for Login by username:"+login.getUsername());
		}
		return login2;
	}


}
