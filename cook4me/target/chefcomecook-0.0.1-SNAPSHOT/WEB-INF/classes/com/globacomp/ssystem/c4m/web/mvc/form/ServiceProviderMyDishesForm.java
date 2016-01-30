package com.globacomp.ssystem.c4m.web.mvc.form;

import java.io.IOException;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.globacomp.ssystem.data.model.UserDish;
import com.globacomp.ssystem.data.model.UserFile;

public class ServiceProviderMyDishesForm {
	
	private String id;
	
	@NotNull
	private String title;
	
	private MultipartFile dishPhotoMultipartFile;

	@NotNull
	@Size(min=8, max=50)
	private String description;
	
	private UserFile userDishPhotoFile;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}


	public MultipartFile getDishPhotoMultipartFile() {
		return dishPhotoMultipartFile;
	}

	public void setDishPhotoMultipartFile(MultipartFile dishPhotoMultipartFile) {
		this.dishPhotoMultipartFile = dishPhotoMultipartFile;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public UserFile getUserDishPhotoFile() {
		return userDishPhotoFile;
	}

	public void initialize(UserDish userDish) {
		if(userDish == null)
			return ;
		
		this.id = userDish.getId();
		this.title = userDish.getTitle();
		this.description = userDish.getDescription();
		
		if(userDish.getDishPhoto() != null) {
			this.userDishPhotoFile = userDish.getDishPhoto();
		}
	}
	
	@Transactional
	public UserDish prepareUserDish(UserDish userDish) {
		
		if(userDish == null)
			return userDish;
		
		userDish.setTitle(title);
		userDish.setDescription(description);
		
		if(!dishPhotoMultipartFile.isEmpty()) {
			
			if(userDish.getDishPhoto() == null)
				userDish.setDishPhoto(new UserFile());
			
			UserFile dishPhoto = userDish.getDishPhoto();
			try {
				dishPhoto.setContent(dishPhotoMultipartFile.getBytes());
				dishPhoto.setFileType(dishPhotoMultipartFile.getContentType());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return userDish;
	}
}
