package com.globacomp.common.model;

import java.io.Serializable;

public interface Modifiable extends Serializable {

	public byte getRecordStatus();

	public void setRecordStatus(byte status);
}
