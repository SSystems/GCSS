package com.globacomp.common.model;



import java.io.Serializable;
import java.util.Date;

public interface Createable extends Serializable {

	String getCreatedBy();

	void setCreatedBy(String createdBy);

	Date getCreationDate();

	void setCreationDate(Date creationDate);
	
}
