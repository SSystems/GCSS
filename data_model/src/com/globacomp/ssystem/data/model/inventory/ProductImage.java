package com.globacomp.ssystem.data.model.inventory;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.globacomp.ssystem.data.model.AbstractModel;

@Entity
@Table(name="product_image")
public class ProductImage extends AbstractModel {

	private static final long serialVersionUID = 1L;

	private Product product;
	
	private String fileType;
	
	private byte[] content;
	
	private int sequence;

	@Column(name="file_type")
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

	@Column(name="sequence")
	public int getSequence() {
		return sequence;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="PRODUCT_ID")
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
