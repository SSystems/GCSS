package com.globacomp.ssystem.c4m.service;

import java.util.List;

import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderBasicDetailsForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderMyDishesForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderW9Form;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.UserDish;
import com.globacomp.ssystem.data.model.UserFile;

public interface ServiceProviderService extends ApplicationService {

	User findById(String userId);
	
	UserFile getUserProfilePhoto(String userId);
	
	void onboard(ServiceProviderForm serviceProviderForm);
	
	User update(String username, ServiceProviderBasicDetailsForm basicDetails);
	
	UserDish update(String username, ServiceProviderMyDishesForm myDishes);
	
	User findByUsername(String username);
	
	UserFile findUserFile(String userFileId);
	
	UserFile uploadW9Form(String username, ServiceProviderW9Form serviceProviderW9Form);
	
	List<User> findAllServiceProviders(int top);
	
}
