package com.globacomp.ssystem.data.model.cart;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.MapKey;
import javax.persistence.MapKeyColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.globacomp.ssystem.data.model.AbstractModel;
import com.globacomp.ssystem.data.model.User;

@Entity
@Table(name = "cart_master")
public class Cart extends AbstractModel {

	private static final long serialVersionUID = 315422907573362343L;

	private User cartOwner;
	
	// initialized, saved, finalized, deleted, etc.
	private byte cartStatus;
	
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
	
	private String coupunCode;
	
	private Map<String, CartLineItem> cartLineItems = new HashMap<String, CartLineItem>();
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	public User getCartOwner() {
		return cartOwner;
	}

	public void setCartOwner(User cartOwner) {
		this.cartOwner = cartOwner;
	}

	@Column(name="cart_status", nullable=false)
	public byte getCartStatus() {
		return cartStatus;
	}

	public void setCartStatus(byte cartStatus) {
		this.cartStatus = cartStatus;
	}

	@Column(name="total_cart_price")
	public double getTotalCartPrice() {
		return totalCartPrice;
	}

	public void setTotalCartPrice(double totalCartPrice) {
		this.totalCartPrice = totalCartPrice;
	}

	@Column(name="discount_percentage")
	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
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

	@Column(name="net_adjustment_amount")
	public double getNetAdjustment() {
		return netAdjustment;
	}

	public void setNetAdjustment(double netAdjustment) {
		this.netAdjustment = netAdjustment;
	}

	@Column(name="final_price")
	public double getFinalPrice() {
		return finalPrice;
	}

	public void setFinalPrice(double finalPrice) {
		this.finalPrice = finalPrice;
	}


	@Column(name="coupon_code")
	public String getCoupunCode() {
		return coupunCode;
	}

	public void setCoupunCode(String coupunCode) {
		this.coupunCode = coupunCode;
	}

	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="cart")
	@MapKeyColumn(name="PRODUCT_ID")
	public Map<String, CartLineItem> getCartLineItems() {
		return cartLineItems;
	}

	public void setCartLineItems(Map<String, CartLineItem> cartLineItems) {
		this.cartLineItems = cartLineItems;
	}
		
}
