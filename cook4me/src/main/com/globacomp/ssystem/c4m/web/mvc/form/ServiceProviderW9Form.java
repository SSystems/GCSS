package com.globacomp.ssystem.c4m.web.mvc.form;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.globacomp.ssystem.data.model.UserFile;


public class ServiceProviderW9Form {
	
	private MultipartFile w9MultipartFile;
	
	private UserFile userW9FormFile;

	public MultipartFile getW9MultipartFile() {
		return w9MultipartFile;
	}


	public void setW9MultipartFile(MultipartFile w9MultipartFile) {
		this.w9MultipartFile = w9MultipartFile;
	}


	public UserFile getUserW9FormFile() {
		return userW9FormFile;
	}


	public void initialiaze(UserFile userFile) {
		
		if(userFile == null)
			return;
		
		userW9FormFile = userFile;
	}
	
	public UserFile prepareUserFile() {
		
		if(userW9FormFile != null || w9MultipartFile.isEmpty())
			return userW9FormFile;
		
		userW9FormFile = new UserFile();
		try {
			userW9FormFile.setContent(w9MultipartFile.getBytes());
			userW9FormFile.setFileType(w9MultipartFile.getContentType());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userW9FormFile;
	}
}
