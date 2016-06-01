package com.globacomp.ssystem.c4m.web.mvc.form;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import com.globacomp.ssystem.c4m.web.mvc.form.validator.Username;

public class ServiceProviderForm {

	private int serviceProviderType;
	
	@NotBlank
	@Size(min=3, max=40)
	private String name;

	
	@Size(min=3, max=20)
	private String lastName;
	
	@NotBlank
	@Email
	@Username
	private String email;
	
	@NotBlank
	@Size(min=6, max=20)
	private String password;
	
	@NotBlank
	@Size(min=6, max=20)
	private String confirmPassword;
	
	@NotBlank
	@Size(min=10, max=10)
	private String mobileNumber;
	
	private String address1;
	
	@NotBlank
	@Size(min=3, max=40)
	private String address2;
	
	@NotBlank
	@Size(min=3, max=40)
	private String state;
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@NotBlank
	@Size(min=5, max=15)
	private String pincode;
	
	@AssertTrue(message="You must agree to Terms and Conditions")
	private boolean agreeTerms;
	
	
	public ServiceProviderForm() {
		// TODO Auto-generated constructor stub
	}

	public int getServiceProviderType() {
		return serviceProviderType;
	}

	public void setServiceProviderType(int serviceProviderType) {
		this.serviceProviderType = serviceProviderType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public boolean isAgreeTerms() {
		return agreeTerms;
	}

	public void setAgreeTerms(boolean agreeTerms) {
		this.agreeTerms = agreeTerms;
	}
	
}
