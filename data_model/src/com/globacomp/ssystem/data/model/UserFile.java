package com.globacomp.ssystem.data.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "user_files")
@JsonIdentityInfo(generator = ObjectIdGenerators.UUIDGenerator.class,property="jsonId",scope=UserFile.class)
@JsonIgnoreProperties(ignoreUnknown=true, value={"hibernateLazyInitializer", "handler"})
public class UserFile extends AbstractModel {

	private static final long serialVersionUID = 1L;

	private String fileType;
	
	private byte[] content;

	@Column(name="file_type", nullable=false)
	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	@Column(name="content")
	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}
	
	
}
