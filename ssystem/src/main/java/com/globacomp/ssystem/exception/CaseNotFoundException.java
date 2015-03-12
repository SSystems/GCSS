package com.globacomp.ssystem.exception;

public class CaseNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	private static final String messge = "Case not found, UCR: ";
	
	public CaseNotFoundException(String UCR) {
		super(messge+ UCR);
	}
}
