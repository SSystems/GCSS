package com.globacomp.ssystem.data.model.order;

import com.globacomp.ssystem.data.model.inventory.Product;

public class OrderLineItem {


	private Product product;
	
	private int quantity;
	
	//baseExtendedPrice = product.basePrice * quantity
	private double extendedPrice;
	
	private float discountPercentage;
	
	private double discountAmount; 
	
	private double netPrice; 
	
	private double tax; 
	
}
