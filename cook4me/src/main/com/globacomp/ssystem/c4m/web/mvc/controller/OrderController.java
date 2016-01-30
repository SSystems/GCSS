package com.globacomp.ssystem.c4m.web.mvc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.globacomp.ssystem.c4m.payment.PayPalIntegration;
import com.globacomp.ssystem.c4m.web.mvc.form.OrderForm;

@Controller
@RequestMapping("/order")
public class OrderController {

	@RequestMapping(value={"","/","/new"}, method={RequestMethod.GET})
	public String init(@ModelAttribute OrderForm orderForm, ModelMap map) {
		System.out.println("OrderController: init");
		String[] cuisines = new String[]{"Chinese", "Maxican", "Italian"};
		map.put("cuisines", cuisines);
		return "order/new";
	}
	
	@RequestMapping(value="/providers", method=RequestMethod.POST)
	public String providers(@ModelAttribute OrderForm orderForm) {
		System.out.println("OrderController: providers");
		System.out.println(orderForm.getPincode());
		return "order/providers";
	}
	
	@RequestMapping(value="/paymentConfirmation", method=RequestMethod.POST)
	public String paymentConfirmation(@ModelAttribute OrderForm orderForm, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		System.out.println("OrderController: payment");
		System.out.println(orderForm.getPincode());
		
		PayPalIntegration paypalIntegration  = new PayPalIntegration(request, response);
		paypalIntegration.CallShortcutExpressCheckout("1", "USD", "S", "https://www.google.co.in/?q=success", "https://www.google.co.in/?q=fail");
		
		return "order/payment";
	}
	
	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(@ModelAttribute OrderForm orderForm, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		System.out.println("OrderController: payment");
		System.out.println(orderForm.getPincode());
		
		String secureTokenId = (String) session.getAttribute("SECURETOKENID");
		String secureToken = (String) session.getAttribute("SECURETOKEN");
		
		try {
			response.sendRedirect("https://payflowlink.paypal.com?MODE=TEST&SECURETOKEN="+secureToken+"&SECURETOKENID="+secureTokenId);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "order/payment";
	}
}
