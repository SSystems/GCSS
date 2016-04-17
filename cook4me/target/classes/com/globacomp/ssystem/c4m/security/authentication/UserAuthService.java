package com.globacomp.ssystem.c4m.security.authentication;

import com.globacomp.ssystem.c4m.web.WebUser;

public interface UserAuthService {

	WebUser loadByUsername(String username);
}
