package com.globacomp.ssystem.c4m.web.mvc.form;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AddToCartAjaxRequestForm {
	

	private String productId;

	public AddToCartAjaxRequestForm() {
		// TODO Auto-generated constructor stub
	}
	
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	
}
