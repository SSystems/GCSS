package com.globacomp.ssystem.c4m.web.mvc.form;

import javax.validation.constraints.NotNull;

import org.apache.commons.lang3.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.UserFile;

public class ServiceProviderBasicDetailsForm {
		
		private UserFile userProfilePhoto;
	
		private MultipartFile profilePhoto;
		
		private String[] cuisines;
		
		@NotNull
		private String aboutMe;

		public MultipartFile getProfilePhoto() {
			return profilePhoto;
		}

		public void setProfilePhoto(MultipartFile profilePhoto) {
			this.profilePhoto = profilePhoto;
		}

		public String[] getCuisines() {
			return cuisines;
		}

		public void setCuisines(String[] cuisines) {
			this.cuisines = cuisines;
		}

		public String getAboutMe() {
			return aboutMe;
		}

		public void setAboutMe(String aboutMe) {
			this.aboutMe = aboutMe;
		}
		
		public UserFile getUserProfilePhoto() {
			return userProfilePhoto;
		}
		
		public void initialize(User user) {
			this.cuisines = StringUtils.split(user.getCuisines(), ",");
			this.aboutMe = user.getAboutMe();
			
			if(user.getProfilePic()!=null) {
				this.userProfilePhoto = user.getProfilePic();
			}
		}
		
		
	}
