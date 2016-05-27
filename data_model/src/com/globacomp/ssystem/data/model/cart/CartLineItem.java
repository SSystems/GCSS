package com.globacomp.ssystem.data.model.cart;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.globacomp.ssystem.data.model.AbstractModel;
import com.globacomp.ssystem.data.model.inventory.Product;

@Entity
@Table(name = "cart_line_item")
@JsonIdentityInfo(generator = ObjectIdGenerators.UUIDGenerator.class,property="jsonId", scope=CartLineItem.class)
@JsonIgnoreProperties(ignoreUnknown=true, value={"hibernateLazyInitializer", "handler"})
public class CartLineItem extends AbstractModel {

	private static final long serialVersionUID = -7330712134978405610L;
	
	private Cart cart;
	
	private Product product;
	
	private int quantity;
	
	//baseExtendedPrice = product.basePrice * quantity
	private double extendedPrice;
	
	private float discountPercentage;
	
	private double discountAmount; 
	
	private double netPrice;
	
	public CartLineItem() {
	
	}
	
	public CartLineItem(Cart cart) {
		super();
		this.cart = cart;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="CART_ID", nullable =false )
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="PRODUCT_ID", nullable =false )
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Column(name="quantity")
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Column(name="extended_price")
	public double getExtendedPrice() {
		return extendedPrice;
	}

	public void setExtendedPrice(double extendedPrice) {
		this.extendedPrice = extendedPrice;
	}
	
	@Column(name="discount_percentage")
	public float getDiscountPercentage() {
		return discountPercentage;
	}

	public void setDiscountPercentage(float discountPercentage) {
		this.discountPercentage = discountPercentage;
	}

	@Column(name="discount_amount")
	public double getDiscountAmount() {
		return discountAmount;
	}

	public void setDiscountAmount(double discountAmount) {
		this.discountAmount = discountAmount;
	}

	@Column(name="net_price")
	public double getNetPrice() {
		return netPrice;
	}

	public void setNetPrice(double netPrice) {
		this.netPrice = netPrice;
	} 
		
}
