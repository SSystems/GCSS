package com.globacomp.ssystem.c4m.data.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.data.dao.UserRepository;
import com.globacomp.ssystem.data.model.User;

@Repository("userRepository")
public class UserRepositoryImpl extends AbstractApplicationRepository<User> implements UserRepository {

	@Override
	public User findByUsername(String username) {

		Query query= this.entityManager.createQuery("select user from User user where user.login.username = :username");
		query.setParameter("username", username);
		
		User user = (User) query.getSingleResult();
		
		return user;
	}

	@Override
	public List<User> findAllServiceProviders(int top) {
		Query query= this.entityManager.createQuery("select user from User user where userType = :userType ");
		
		query.setParameter("userType", "SERVICE_PROVIDER");
		query.setMaxResults(9);
		
		List<User> users = new ArrayList<User>();
		try {
			users = query.getResultList();
		} catch(NoResultException nre) {
			return users;
		}
		
		return users;
	}

}
