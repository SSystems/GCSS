package com.globacomp.ssystem.c4m.web.mvc.form;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ChangePasswordForm extends LoginForm {
	@NotNull
	@Size(min=6, max=15)
	private String newPassword;
	
	@NotNull
	@Size(min=6, max=15)
	private String newPasswordAgain;
	
	public ChangePasswordForm() {
	}
	

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getNewPasswordAgain() {
		return newPasswordAgain;
	}

	public void setNewPasswordAgain(String newPasswordAgain) {
		this.newPasswordAgain = newPasswordAgain;
	}
	
	
	
}
