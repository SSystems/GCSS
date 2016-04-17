package com.globacomp.ssystem.c4m.service.impl;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.xml.bind.annotation.adapters.HexBinaryAdapter;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import com.globacomp.ssystem.c4m.data.dao.UserDishRepository;
import com.globacomp.ssystem.c4m.data.dao.UserFileRepository;
import com.globacomp.ssystem.c4m.data.dao.UserRepository;
import com.globacomp.ssystem.c4m.data.dao.UserVerificationRepository;
import com.globacomp.ssystem.c4m.mail.EmailTemplateService;
import com.globacomp.ssystem.c4m.service.ServiceProviderService;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderBasicDetailsForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderMyDishesForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderW9Form;
import com.globacomp.ssystem.data.model.Address;
import com.globacomp.ssystem.data.model.Login;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.UserDish;
import com.globacomp.ssystem.data.model.UserFile;
import com.globacomp.ssystem.data.model.UserVerification;

@Service("serviceProviderService")
public class ServiceProviderServiceImpl extends AbstractApplicationService implements ServiceProviderService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserVerificationRepository userVerificationRepository;
	
	@Autowired
	private UserDishRepository userDishRepository;
	
	@Autowired
	private EmailTemplateService emailTemplateService;
	
	@Autowired
	private UserFileRepository userFileRepository;
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void onboard(ServiceProviderForm serviceProviderForm) {
		
		User user = new User();
		user.setFirstName(serviceProviderForm.getName());
		user.setEmail(serviceProviderForm.getEmail());
		user.setUserType("SERVICE_PROVIDER");
		Login login = new Login();
		
		login.setPassword(serviceProviderForm.getPassword());
		login.setUsername(serviceProviderForm.getEmail());
		login.setUser(user);
		
		user.setLogin(login);
		
		Address address = new Address();
		address.setAddressLine1(serviceProviderForm.getAddress1());
		address.setAddressLine2(serviceProviderForm.getAddress2());
		address.setZipcode(serviceProviderForm.getPincode());
		address.setTelephoneNumber(serviceProviderForm.getMobileNumber());
		address.setUser(user);
		
		user.getUserAddresses().add(address);
		
		userRepository.save(user);
		
		UserVerification verification = new UserVerification();
		verification.setUser(user);
		String md5 = (new HexBinaryAdapter()).marshal(DigestUtils.md5Digest(user.getId().getBytes()));
		
		verification.setEmailVerificationCode(md5);
		Date date = DateUtils.addDays(new Date(), 30);
		verification.setEmailValidTill(date);
		
		userVerificationRepository.save(verification);
		
		emailTemplateService.sendOnbordEmail(verification);
	}

	@Override
	@Transactional
	public User update(String username, ServiceProviderBasicDetailsForm basicDetails) {

		User user = findByUsername(username);
		System.out.println(user);
		if(user == null)
			return null;
		
		user.setAboutMe(basicDetails.getAboutMe());
		user.setCuisines(StringUtils.join(basicDetails.getCuisines(),","));
		
		if(!basicDetails.getProfilePhoto().isEmpty()){
			if(user.getProfilePic() == null)
				user.setProfilePic(new UserFile());
			
			try {
				user.getProfilePic().setContent(basicDetails.getProfilePhoto().getBytes());
				user.getProfilePic().setFileType(basicDetails.getProfilePhoto().getContentType());
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		user = userRepository.save(user);
		
		return user;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
		
	}

	@Override
	@Transactional
	public UserDish update(String username, ServiceProviderMyDishesForm myDishes) {
		User user = findByUsername(username);
		System.out.println(user);
		
		if(user == null)
			return null;
		
		UserDish userDish = null;
		
		if(!StringUtils.isBlank(myDishes.getId())){
			userDish = userDishRepository.findOne(myDishes.getId());
		}
		
		if(userDish == null)
			userDish = new UserDish();
		
		myDishes.prepareUserDish(userDish);
		userDish.setUser(user);
		
		userDish = userDishRepository.save(userDish);
		
		return userDish;
	}

	@Override
	public User findById(String userId) {
		return userRepository.findOne(userId);
	}

	@Override
	@Transactional
	public UserFile getUserProfilePhoto(String userId) {
		User user = findById(userId);
		
		if(user!=null)
			return user.getProfilePic();
		
		return null;
	}

	@Override
	public UserFile findUserFile(String userFileId) {
		return userFileRepository.findOne(userFileId);
	}

	@Override
	@Transactional
	public UserFile uploadW9Form(String username,
			ServiceProviderW9Form serviceProviderW9Form) {
		
		UserFile userFile = serviceProviderW9Form.prepareUserFile();
		
		User user = userRepository.findByUsername(username);
		
		user.setUserW9Form(userFile);
		
		user = userRepository.save(user);
		
		return user.getUserW9Form();
	}

	@Override
	public List<User> findAllServiceProviders(int top) {
		// TODO Auto-generated method stub
		return null;
	}


}
