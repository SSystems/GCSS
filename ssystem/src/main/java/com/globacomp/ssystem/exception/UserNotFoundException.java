package com.globacomp.ssystem.exception;

public class UserNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	private static final String messge = "User not found, username: ";
	
	public UserNotFoundException(String username) {
		super(messge+ username);
	}
}
