package com.globacomp.ssystem.data.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "user_verification")
public class UserVerification extends AbstractModel {

	private User user;
	
	private String emailVerificationCode;
	
	private Date emailValidTill;
	
	private boolean isEmailVerified;
	
	public UserVerification() {
		// TODO Auto-generated constructor stub
	}
	
	@OneToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "email_verification_code", nullable = false)
	public String getEmailVerificationCode() {
		return emailVerificationCode;
	}

	public void setEmailVerificationCode(String emailVerificationCode) {
		this.emailVerificationCode = emailVerificationCode;
	}

	@Column(name = "email_valid_till", nullable = false)
	@Temporal(TemporalType.DATE)
	public Date getEmailValidTill() {
		return emailValidTill;
	}

	public void setEmailValidTill(Date emailValidTill) {
		this.emailValidTill = emailValidTill;
	}

	@Column(name = "is_email_verified", columnDefinition = "is_email_verified")
	public boolean isEmailVerified() {
		return isEmailVerified;
	}

	public void setEmailVerified(boolean isEmailVerified) {
		this.isEmailVerified = isEmailVerified;
	}
	
	
}
