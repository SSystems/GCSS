package com.globacomp.ssystem.c4m.web.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.globacomp.ssystem.c4m.service.ServiceProviderService;
import com.globacomp.ssystem.c4m.service.UserDishService;
import com.globacomp.ssystem.c4m.web.WebUser;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderBasicDetailsForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderMyDishesForm;
import com.globacomp.ssystem.c4m.web.mvc.form.ServiceProviderW9Form;
import com.globacomp.ssystem.data.model.User;
import com.globacomp.ssystem.data.model.UserDish;
import com.globacomp.ssystem.data.model.UserFile;

@Controller
@RequestMapping("/serviceprovider")
public class ServiceProviderController {

	@Autowired
	private ServiceProviderService serviceProviderService;
	
	@Autowired
	private UserDishService userDishService;
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String _new(@ModelAttribute ServiceProviderForm serviceProviderForm, ModelMap map, HttpServletRequest request) {
		System.out.println("ServiceProviderController: _new");
		return "serviceprovider/onboard";
	}
	
	@RequestMapping(value="/onboard", method=RequestMethod.POST)
	public String onboard(@Valid @ModelAttribute ServiceProviderForm serviceProviderForm, 
						  BindingResult bindingResult,
						  ModelMap map, 
						  HttpServletRequest request) {
		
		System.out.println("ServiceProviderController: onboard");
		
		if(bindingResult.hasErrors()) {
			System.out.println("ServiceProviderForm has errors");
			for (ObjectError objectError : bindingResult.getAllErrors()) {
				System.out.println(objectError.getObjectName()+":"+objectError.getDefaultMessage());
			}
			return null;
		}
		
		if(!serviceProviderForm.getPassword().equals(serviceProviderForm.getConfirmPassword())){
			map.addAttribute("errorMessage", "Passwords do not match");
			return null;
		}
		
		else {
			System.out.println("No Binding Errors");
			serviceProviderService.onboard(serviceProviderForm);
			return "redirect:/serviceprovider/welcome_onboard";
		}
		
		
	}
	
	@RequestMapping(value="/welcome_onboard")
	public String welcomeOnboard(HttpServletRequest request, ModelMap model) {
		System.out.println("ServiceProviderController:_welcomeOnboard");
		model.addAttribute("email", request.getAttribute("email"));
		return "serviceprovider/welcome_onboard";
	}
	
	@RequestMapping(value="/profile/edit")
	public String editProfile(HttpServletRequest request) {
		return "redirect:basic_details/edit";
	}
	@RequestMapping(value="/profile/basic_details/edit")
	public String editBasicDetails(@ModelAttribute ServiceProviderBasicDetailsForm serviceProviderBasicDetailsForm, ModelMap model,
									HttpServletRequest request, HttpSession session) throws Exception {
		System.out.println("In Edit 1");
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null)
			throw new Exception("No User in Session");
		
		User user = serviceProviderService.findByUsername(webUser.getUsername());
		
		serviceProviderBasicDetailsForm.initialize(user);
		String[] cuisines = new String[]{"Mexican","Indian","French","Italian"};
		
		model.addAttribute("cuisines", cuisines);
		return "serviceprovider/edit_basic_details";
	}
	
	@RequestMapping(value="/profile/basic_details/save", method=RequestMethod.POST)
	public String saveBasicDetails(@ModelAttribute ServiceProviderBasicDetailsForm serviceProviderBasicDetailsForm, 
										ModelMap model,
										HttpServletRequest request, 
										HttpSession session
										) {
		String username = "";
		
		WebUser webUser = WebUser.getUser(session);
		if(webUser != null) 
			username = webUser.getUsername();
		User user = null;
		
		if(!StringUtils.isBlank(username)) {
			user = serviceProviderService.update(username, serviceProviderBasicDetailsForm);
			model.put("message", "Profile Updated");
		}
			
		return "forward:edit";
	}
	
	@RequestMapping(value={"/profile/dp","/downloadFile"})
	public ResponseEntity<byte[]> downloadUserFile(@RequestParam(value="userFileId", required=true) String userFileId) {
		 System.out.println("In getProfilePhoto userFileId:"+userFileId);
		 
		 final HttpHeaders headers = new HttpHeaders();
		 
		 UserFile userFile = serviceProviderService.findUserFile(userFileId);
		 
		 if(userFile == null)
			 return null;
		 
		 headers.setContentType(MediaType.parseMediaType(userFile.getFileType()));
		 ResponseEntity<byte[]> responseEntity = new ResponseEntity<byte[]>(userFile.getContent(),headers,HttpStatus.CREATED);
		 return responseEntity;
	}
	
	@RequestMapping(value="/profile/my_dishes/edit")
	public String editMyDishes(@ModelAttribute ServiceProviderMyDishesForm serviceProviderMyDishesForm, ModelMap model,
									@RequestParam(value="dish", required=false) String dishId, HttpServletRequest request, 
									HttpSession session) throws Exception {
		
		System.out.println("In Edit 2");
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null)
			throw new Exception("No User in Session");
		
		User user = serviceProviderService.findByUsername(webUser.getUsername());
		
		if(!StringUtils.isBlank(dishId)) {
			UserDish userDish = userDishService.findUserDish(dishId, webUser.getUsername());
			if(userDish != null) {
				serviceProviderMyDishesForm.initialize(userDish);
			}
		}
		
		if(user != null && user.getUserDishes()!=null) {
			model.addAttribute("userDishes", user.getUserDishes());
		}
		//System.out.println("UserDishes Size:"+user.getUserDishes().size());
		return "serviceprovider/edit_my_dishes";
	}
	
	@RequestMapping(value="/profile/my_dishes/save")
	public String saveMyDishes(@ModelAttribute @Valid ServiceProviderMyDishesForm serviceProviderMyDishesForm, 
										BindingResult bindingResult, ModelMap model,
										HttpServletRequest request, HttpSession session
										) throws Exception {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("errorMessage", "Error Occurred");
			return "serviceprovider/edit_my_dishes";
		}
			
		
		String username = "";
		
		WebUser webUser = WebUser.getUser(session);
		if(webUser != null) 
			username = webUser.getUsername();
		
		if(!StringUtils.isBlank(username)) {
			serviceProviderService.update(username, serviceProviderMyDishesForm);
			model.put("message", "Profile Updated");
		}
		
		model.addAttribute("userDishes", userDishService.findUserDishes(username));
		return "serviceprovider/edit_my_dishes";
	}
	
	@RequestMapping(value="/profile/my_dishes/remove")
	public String removeDish(@RequestParam(value="dish", required=true) String dishId ,ModelMap model, 
									HttpSession session) throws Exception {
		
		if(StringUtils.isBlank(dishId)) {
			model.addAttribute("errorMessage", "Dish not fount");
			return "forward:edit";
		}
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser==null) {
			model.addAttribute("errorMessage", "Invalid Session");
			return "forward:/login";
		}
		
		UserDish userDish = userDishService.findUserDish(dishId, webUser.getUsername());
		
		if(userDish == null){
			model.addAttribute("errorMessage", "Dish not fount");
			return "forward:edit";		
		}
		
		userDishService.remove(userDish);
		model.addAttribute("message", "Dish removed successfully");
		
		return "forward:edit";
		
	}
	
	@RequestMapping(value="/myprofile")
	public String myProfile(ModelMap model, HttpSession session) {
		System.out.println("In My Profile");
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) {
			return "redirect:/login";
		}
		
		User user = serviceProviderService.findByUsername(webUser.getUsername());
		
		ServiceProviderBasicDetailsForm basicDetails = new ServiceProviderBasicDetailsForm();
		basicDetails.initialize(user);
		
		model.addAttribute("user",user);
		return "serviceprovider/myprofile";
	}
	
	@RequestMapping("/W9_form")
	public String w9Form(@ModelAttribute ServiceProviderW9Form serviceProviderW9Form, ModelMap model, HttpSession session) {
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) {
			model.addAttribute("errorMessage", "You must login to the system");
			return "forward:/login";
		}
		
		User user = serviceProviderService.findByUsername(webUser.getUsername());
		
		if(user.getUserW9Form()!=null) {
			serviceProviderW9Form.initialiaze(user.getUserW9Form());
		}
		
		return "serviceprovider/W9Form";
	}
	
	@RequestMapping("/W9_form/upload")
	public String upload_W9Form(@ModelAttribute ServiceProviderW9Form serviceProviderW9Form, ModelMap model, HttpSession session) {
		
		WebUser webUser = WebUser.getUser(session);
		
		if(webUser == null) {
			model.addAttribute("errorMessage", "You must login to the system");
			return "forward:/login";
		}
		
		
		if(serviceProviderW9Form.getW9MultipartFile().isEmpty()) {
			model.addAttribute("errorMessage", "Form cannot be empty");
			return "serviceprovider/W9Form";
		}
		
		serviceProviderService.uploadW9Form(webUser.getUsername() , serviceProviderW9Form);
		model.addAttribute("message", "Form uploaded successfully");
		
		return "serviceprovider/W9Form";
	}
}
