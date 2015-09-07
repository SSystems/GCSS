package com.globacomp.ssystem.data.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "user_files")
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
