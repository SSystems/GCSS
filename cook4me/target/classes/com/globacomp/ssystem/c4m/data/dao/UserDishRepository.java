package com.globacomp.ssystem.c4m.data.dao;

import java.util.List;

import com.globacomp.ssystem.data.model.UserDish;

public interface UserDishRepository extends ApplicationRepository<UserDish>{
	
	UserDish findUserDishByUser(String dishId, String username);
	
	List<UserDish> findUserDishes(String username);
	
}
