package com.globacomp.ssystem.c4m.service;

import java.util.Collection;

import com.globacomp.ssystem.data.model.cart.Cart;
import com.globacomp.ssystem.data.model.cart.CartLineItem;

public interface CartService extends ApplicationService {

	Cart addToCart(String userId, String productId);
	
	Cart findUserCart(String userId);
	
	Cart findCart(String cartId);
	
	Cart updateQuantity(String cartId, Collection<CartLineItem> cartLineItems);
	
}
