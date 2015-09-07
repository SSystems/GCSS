package com.globacomp.ssystem.data.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_dishes")
public class UserDish extends AbstractModel {

	private String title;
	
	private String description;
	
	private UserFile dishPhoto;
	
	private User user;
	
	public UserDish() {
		// TODO Auto-generated constructor stub
	}
	
	@Column(name="title", nullable=false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name="description", nullable=false)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	@OneToOne(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name="photo_id")
	public UserFile getDishPhoto() {
		return dishPhoto;
	}

	public void setDishPhoto(UserFile dishPhoto) {
		this.dishPhoto = dishPhoto;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="USER_ID", nullable =false )
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
