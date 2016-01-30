package com.globacomp.ssystem.c4m.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String payment(@ModelAttribute OrderForm orderForm) {
		System.out.println("OrderController: payment");
		System.out.println(orderForm.getPincode());
		return "order/payment";
	}
}
