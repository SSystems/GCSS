package com.globacomp.ssystem.c4m.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globacomp.ssystem.c4m.common.CartStatus;
import com.globacomp.ssystem.c4m.data.dao.CartRepository;
import com.globacomp.ssystem.c4m.data.dao.ProductRepository;
import com.globacomp.ssystem.c4m.data.dao.UserRepository;
import com.globacomp.ssystem.c4m.service.CartService;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.cart.Cart;
import com.globacomp.ssystem.data.model.cart.CartLineItem;
import com.globacomp.ssystem.data.model.inventory.Product;

@Service("cartService")
public class CartServiceImpl extends AbstractApplicationService implements CartService{

	@Autowired
	private CartRepository cartRepository;

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	@Transactional
	public Cart addToCart(String userId, String productId) {
		
		if(StringUtils.isBlank(userId) || StringUtils.isBlank(productId)) {
			System.out.println("Either UserId or ProductId is null/blank");
			return null;
		}
		
		Cart userCart = findUserCart(userId);
		
		if(userCart == null) {
			System.out.println("No Saved Cart found for user:"+userId);
			userCart = createCart(userId);
		}
		
		Map<String, CartLineItem> cartLineItems = userCart.getCartLineItems();
		CartLineItem cartLineItem = null; 
		
		if(cartLineItems == null) { 
			cartLineItems = new HashMap<String, CartLineItem>();
			userCart.setCartLineItems(cartLineItems);
		}
		
		if(cartLineItems.size() > 0 && cartLineItems.containsKey(productId) && cartLineItems.get(productId) != null) {
				cartLineItem = cartLineItems.get(productId);
				cartLineItem.setQuantity(cartLineItem.getQuantity()+1);
				cartLineItem.setExtendedPrice(cartLineItem.getProduct().getPrice()* cartLineItem.getQuantity());
		}
		else {
			cartLineItem = createCartLineItem(userCart, productId);
			System.out.println(cartLineItem);
			cartLineItems.put(productId, cartLineItem);
		}
		
		userCart.setCartStatus(CartStatus.SAVED.getStatus());
		
		repriceCart(userCart);
		cartRepository.save(userCart);
		
		return userCart;
	}

	private Cart createCart(String userId) {
		
		User sessionUser = userRepository.findOne(userId);
		
		if(sessionUser == null) {
			//TODO: Throw exception here.
			System.out.println("Invalid userId while creating cart");
		}
			
		Cart cart = new Cart();
		cart.setCartStatus(CartStatus.INITIALIZED.getStatus());
		cart.setCartOwner(sessionUser);
		
		cart = cartRepository.saveAndFlush(cart);
		
		System.out.println("initialized a new cart for user:"+userId+" and cartId is:"+cart.getId());
		return cart;
		
	}
	
	private CartLineItem createCartLineItem(Cart cart, String productId) {
		
		Product product = productRepository.findOne(productId);
		
		if(product == null) {
			System.out.println("Find Product is null");
			return null;
		}
		
		CartLineItem cartLineItem = new CartLineItem(cart);
		cartLineItem.setProduct(product);
		cartLineItem.setQuantity(1);
		cartLineItem.setExtendedPrice(cartLineItem.getQuantity()*product.getPrice());
		return cartLineItem;
		
	}

	@Override
	public Cart findUserCart(String userId) {
		return cartRepository.findSavedCartByUserId(userId);
	}

	@Override
	public Cart findCart(String cartId) {
		return cartRepository.findOne(cartId);
	}

	@Override
	public Cart updateQuantity(String cartId, Collection<CartLineItem> cartLineItems) {
		
		Cart dbCart = findCart(cartId);
		
		if(dbCart == null)
			return null;
		
		if(cartLineItems == null)
			return null;
		
		if(cartLineItems.isEmpty())
			return null;
		
		Map<String, CartLineItem> dbCartLineItems = dbCart.getCartLineItems();
		
		for (CartLineItem cartLineItem : cartLineItems) {
			
			CartLineItem dbCartLineItem = dbCartLineItems.get(cartLineItem.getProduct().getId());
			
			if(dbCartLineItem != null) {
				
				dbCartLineItem.setQuantity(cartLineItem.getQuantity());
				dbCartLineItem.setExtendedPrice(dbCartLineItem.getQuantity() * dbCartLineItem.getProduct().getPrice());
			}
			
		}
		
		repriceCart(dbCart);
		
		return dbCart;
	}
	
	public void repriceCart(Cart cart) {
		
		//cart = cartRepository.findOne(cart.getId());
		
		double totalCartPrice = 0;
		
		for (CartLineItem cartLineItem : cart.getCartLineItems().values()) {
			totalCartPrice+= cartLineItem.getExtendedPrice();
		}
		
		cart.setTotalCartPrice(totalCartPrice);
		
	}

}
