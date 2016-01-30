package com.globacomp.ssystem.c4m.web.mvc.form;

public class OrderForm {

	private String[] cuisines;
	
	private int totalGuests;
	
	private String date;
	
	private String address;
	
	private String pincode;
	
	private String chef;

	public String[] getCuisines() {
		return cuisines;
	}

	public void setCuisines(String[] cuisines) {
		this.cuisines = cuisines;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getChef() {
		return chef;
	}

	public void setChef(String chef) {
		this.chef = chef;
	}

	public int getTotalGuests() {
		return totalGuests;
	}

	public void setTotalGuests(int totalGuests) {
		this.totalGuests = totalGuests;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
}
