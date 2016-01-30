package com.globacomp.ssystem.c4m.data.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.data.dao.UserDishRepository;
import com.globacomp.ssystem.data.model.UserDish;

@Repository("userDishRepository")
public class UserDishRepositoryImpl extends AbstractApplicationRepository<UserDish> implements UserDishRepository {

	@Override
	public UserDish findUserDishByUser(String dishId, String username) {
		
		StringBuilder queryString = new StringBuilder();
		queryString.append("select userDish from UserDish userDish where id=:dishId and user.login.username=:username");
		
		Query query= this.entityManager.createQuery(queryString.toString());
		query.setParameter("dishId", dishId);
		query.setParameter("username", username);
		
		UserDish userDish = null;
		
		try {
			userDish = (UserDish) query.getSingleResult();
			
		} catch(NoResultException nre) {
			System.out.println("No Result for given combo, username:"+username+", and dishId: "+ dishId);
		}
		
		return userDish;
	}

	@Override
	public List<UserDish> findUserDishes(String username) {
		
		StringBuilder queryString = new StringBuilder();
		queryString.append("select userDish from UserDish userDish where user.login.username=:username order by creationDate DESC");
		
		Query query= this.entityManager.createQuery(queryString.toString());
		query.setParameter("username", username);
		
		try {
			return query.getResultList();
		} catch(NoResultException nre) {
			return new ArrayList<UserDish>(0);
		}
	}

}
