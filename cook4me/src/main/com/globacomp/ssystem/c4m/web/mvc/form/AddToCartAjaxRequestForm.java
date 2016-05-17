package com.globacomp.ssystem.c4m.web.mvc.form;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

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
