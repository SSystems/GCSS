package com.globacomp.ssystem.c4m.web.mvc.form;

public class AddToCartAjaxResponseForm {

	private String message;
	
	private String totalCartLineItem;

	public AddToCartAjaxResponseForm(String message, String totalCartLineItem) {
		super();
		this.message = message;
		this.totalCartLineItem = totalCartLineItem;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getTotalCartLineItem() {
		return totalCartLineItem;
	}

	public void setTotalCartLineItem(String totalCartLineItem) {
		this.totalCartLineItem = totalCartLineItem;
	}

	
}
