package com.globacomp.ssystem.c4m.data.dao.impl;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.common.CartStatus;
import com.globacomp.ssystem.c4m.data.dao.CartRepository;
import com.globacomp.ssystem.data.model.cart.Cart;

@Repository("cartRepository")
public class CartRepositoryImpl extends AbstractApplicationRepository<Cart> implements CartRepository {

	@Override
	public Cart findSavedCartByUserId(String userId) {
		
		Query query = this.entityManager.createQuery("select cart from Cart cart where cart.cartOwner.id=:userId and cart.cartStatus = :cartStatus");
		
		query.setParameter("userId", userId);
		query.setParameter("cartStatus", CartStatus.SAVED.getStatus());
		
		Cart userCart = null;
		try {
			userCart = (Cart) query.getSingleResult();	
		} catch(NoResultException ne){
			System.out.println("No Cart found for userid:"+userId);
		}
	
		return userCart;
	}

	
}
