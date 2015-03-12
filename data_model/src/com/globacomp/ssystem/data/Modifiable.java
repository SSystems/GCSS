package com.globacomp.ssystem.data;

import java.io.Serializable;

public interface Modifiable extends Serializable {

	public byte getRecordStatus();

	public void setRecordStatus(byte status);
}
