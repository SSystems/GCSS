package com.globacomp.ssystem.service;

import com.globacomp.ssystem.data.model.User;

public interface UserService extends ApplicationService {

	User findByUsername(String username);
}
