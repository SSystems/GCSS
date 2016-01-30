package com.globacomp.ssystem.c4m.security.authentication.impl;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.AuthenticationUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.globacomp.ssystem.c4m.security.authentication.UserAuthService;
import com.globacomp.ssystem.c4m.web.WebUser;

public class UserAuthServiceImpl implements UserAuthService, UserDetailsService, AuthenticationUserDetailsService{

	@Override
	public UserDetails loadUserDetails(Authentication arg0)
			throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDetails loadUserByUsername(String arg0)
			throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WebUser loadByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
