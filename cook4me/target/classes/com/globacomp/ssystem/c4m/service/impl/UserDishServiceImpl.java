package com.globacomp.ssystem.c4m.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.globacomp.ssystem.c4m.data.dao.UserDishRepository;
import com.globacomp.ssystem.c4m.service.UserDishService;
import com.globacomp.ssystem.data.model.UserDish;

@Service("userDishService")
public class UserDishServiceImpl extends AbstractApplicationService implements UserDishService {
	
	@Autowired
	private UserDishRepository userDishRepository;

	@Override
	public UserDish findUserDish(String dishId, String username) {
		UserDish userDish = userDishRepository.findUserDishByUser(dishId, username);
		return userDish;
	}

	@Override
	public List<UserDish> findUserDishes(String username) {
		// TODO Auto-generated method stub
		return userDishRepository.findUserDishes(username);
	}

	@Override
	@Transactional
	public void remove(UserDish userDish) {
		 userDishRepository.delete(userDish);
	}

	@Override
	@Transactional
	public void remove(String dishId) {
		userDishRepository.delete(dishId);
	}
	
}
