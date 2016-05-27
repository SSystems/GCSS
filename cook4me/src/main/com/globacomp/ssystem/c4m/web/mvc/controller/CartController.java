package com.globacomp.ssystem.c4m.web.mvc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.globacomp.ssystem.c4m.payment.PayPalIntegration;
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
	

	@RequestMapping(value="/view_cart")
	public String viewCart(ModelMap model, HttpSession session) {
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) 
			System.out.println("WebUser Null");
		
		Cart cart = cartService.findUserCart(webUser.getId());
		model.put("cart", cart);
		return "cart/shopping-cart";
	}
	
	@RequestMapping(value="/reprice", method=RequestMethod.POST)
	public String repriceCart(@ModelAttribute("cart") Cart cart, ModelMap model, HttpServletRequest request, HttpSession session) {
		
		System.out.println("Came in cart reprice");
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) 
			System.out.println("WebUser Null");
		
		System.out.println(cart);
		
		if(cart != null) {
			cart = cartService.updateQuantity(cart.getId(), cart.getCartLineItems().values());
		}
		
		model.put("cart", cart);
		
		return "cart/shopping-cart";
	}
	
	@RequestMapping(value="/confirm_order", method=RequestMethod.POST)
	public String confirmOrder(@ModelAttribute("cart") Cart cart, ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		System.out.println("Came in cart confirm order");
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) 
			System.out.println("WebUser Null");
		
		System.out.println(cart);
		
		cart = cartService.findCart(cart.getId());
		
		model.put("cart", cart);
		return "cart/delivery-pay";
	}
	
	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(@RequestParam(value="cartId", required=true) String cartId, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		System.out.println("Came in cart payment");
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) 
			System.out.println("WebUser Null");
		
		Cart cart = cartService.findCart(cartId);
		
		PayPalIntegration payPalIntegration = new PayPalIntegration(request, response);
		payPalIntegration.CallShortcutExpressCheckout(String.valueOf(cart.getTotalCartPrice()), "USD", "S", "https://www.google.co.in/?q=success", "https://www.google.co.in/?q=fail");
		
		
		String secureTokenId = (String) session.getAttribute("SECURETOKENID");
		String secureToken = (String) session.getAttribute("SECURETOKEN");
		
		try {
			response.sendRedirect("https://payflowlink.paypal.com?MODE=TEST&SECURETOKEN="+secureToken+"&SECURETOKENID="+secureTokenId);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "cart/thank-you-order";
	}
	
	@RequestMapping(value="/updateLineItemQuantity", method=RequestMethod.GET)
	public @ResponseBody Cart updateLineItemQuantity(@RequestParam(value="cartLineItemId") String cartLineItemId, @RequestParam(value="cartId") String cartId, 
									   @RequestParam(value="quantity") String quantity, HttpServletRequest request, HttpSession session) {
		
		System.out.println("Came to update line item quantity.");
		Cart cart = cartService.findCart(cartId);
		cart.setCartOwner(null);
		return cart;
		
		
	}
}
