package com.globacomp.ssystem.data.model.order;

import java.util.List;

import com.globacomp.ssystem.data.model.AbstractModel;
import com.globacomp.ssystem.data.model.Address;
import com.globacomp.ssystem.data.model.User;

public class Order extends AbstractModel {

	private User orderOwner;
	
	/* calcualted from each cart line item
	 *  total of netPrice of each cart line item
	*/
	private double totalCartPrice;
	
	private float discount; 
	
	private double discountAmount;
	
	// totalCartPrice - discount
	private double netPrice;
	
	// small adjustment in price
	private double netAdjustment; 
	
	// final billed price 
	private double finalPrice;
	
	private boolean isCoupunApplied;
	
	private String coupunCode;
	
	private Address deliveryAddress;
	
	private String deliveryMethod;
	
	private List<OrderLineItem> orderLineItems;
}
