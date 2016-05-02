package com.globacomp.ssystem.c4m.web.mvc.form;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class LoginForm {

	@NotBlank
	@Email
	protected String username;

	@NotBlank
	protected String password;
	
	public LoginForm() {
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
