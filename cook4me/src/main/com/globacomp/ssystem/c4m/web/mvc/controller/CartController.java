package com.globacomp.ssystem.c4m.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.globacomp.ssystem.c4m.service.CartService;
import com.globacomp.ssystem.c4m.web.WebUser;
import com.globacomp.ssystem.c4m.web.mvc.form.AddToCartAjaxRequestForm;
import com.globacomp.ssystem.c4m.web.mvc.form.AddToCartAjaxResponseForm;
import com.globacomp.ssystem.data.model.cart.Cart;

@Controller
//@EnableWebMvc
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;
	
	//@RequestMapping(value="/add_to_cart", method=RequestMethod.POST, consumes={"application/xml", "application/json"})
	@RequestMapping(value="/add_to_cart", method=RequestMethod.POST)
	public @ResponseBody AddToCartAjaxResponseForm addToCart(@RequestBody AddToCartAjaxRequestForm addToCartAjaxRequestForm, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		
		System.out.println("In CartController: Add To Cart ");
		System.out.println(addToCartAjaxRequestForm.getProductId());
	
		WebUser webUser = WebUser.getUser(session);
		System.out.println("userId:"+webUser.getId());
		Cart cart = cartService.addToCart(webUser.getId(), addToCartAjaxRequestForm.getProductId());
		AddToCartAjaxResponseForm ajaxResponse = new AddToCartAjaxResponseForm("Success", String.valueOf(cart.getCartLineItems().size()));
		System.out.println("cartLineItemCount:"+cart.getCartLineItems().size());
		return ajaxResponse;
	}
}
