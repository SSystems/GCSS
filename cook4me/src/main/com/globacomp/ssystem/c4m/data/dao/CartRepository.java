package com.globacomp.ssystem.c4m.data.dao;

import com.globacomp.ssystem.data.model.cart.Cart;

public interface CartRepository extends ApplicationRepository<Cart>{

	Cart findSavedCartByUserId(String userId);
	
}
