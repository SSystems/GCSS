package com.globacomp.ssystem.c4m.common;

public enum CartStatus {

	INITIALIZED((byte) 0, "initialized"), 
	SAVED((byte) 1, "saved"), 
	FINALIZED((byte) 2, "finalized"), 
	DELETED((byte) 3, "deleted");

	
	private byte status;

	private String text;

	private CartStatus(byte status, String text) {
		this.status = status;
		this.text = text;
	}
	
	
	public byte getStatus() {
		return status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
}
