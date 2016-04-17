package com.globacomp.ssystem.c4m.service;

import java.util.List;

import com.globacomp.ssystem.data.model.UserDish;

public interface UserDishService extends ApplicationService {
	
	UserDish findUserDish(String dishId, String username);
	
	List<UserDish> findUserDishes(String username);
	
	void remove(UserDish userDish);
	
	void remove(String dishId);
	
}
