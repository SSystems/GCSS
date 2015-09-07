package com.globacomp.common.model;

public interface Model extends Createable, Updateable, Modifiable {

	public String getId();

	public void setId(String id);
}
