package com.globacomp.ssystem.c4m.service;

import com.globacomp.ssystem.data.model.cart.Cart;

public interface CartService extends ApplicationService {

	Cart addToCart(String userId, String productId);
}
