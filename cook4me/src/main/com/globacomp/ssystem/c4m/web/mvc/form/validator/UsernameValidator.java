package com.globacomp.ssystem.c4m.web.mvc.form.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.globacomp.ssystem.c4m.data.dao.LoginRepository;
import com.globacomp.ssystem.data.model.Login;

public class UsernameValidator implements ConstraintValidator<Username, String>{
	
	@Autowired
	private LoginRepository loginRepository;
	
	@Override
	public void initialize(Username arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValid(String username, ConstraintValidatorContext ctx) {
		// TODO Auto-generated method stub

		System.out.println(ctx.getDefaultConstraintMessageTemplate());
	
		Login login = null;
		
		if(!StringUtils.isBlank(username))
			login = loginRepository.findByUsername(username);
		
		if(login != null) {
//			ctx.disableDefaultConstraintViolation();
//			ctx.buildConstraintViolationWithTemplate("Username already exists");
			return false;
		}
			
		return true;
	}

}
