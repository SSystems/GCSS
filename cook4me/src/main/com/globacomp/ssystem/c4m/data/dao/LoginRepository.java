package com.globacomp.ssystem.c4m.data.dao;

import com.globacomp.ssystem.data.model.Login;

public interface LoginRepository extends ApplicationRepository<Login>{
	
	Login findByUsername(String username);
	
	Login findByLogin(Login login);

}
