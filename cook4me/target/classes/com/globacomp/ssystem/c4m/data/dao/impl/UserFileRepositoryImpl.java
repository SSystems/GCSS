package com.globacomp.ssystem.c4m.data.dao.impl;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.data.dao.UserFileRepository;
import com.globacomp.ssystem.data.model.UserFile;

@Repository("userFileRepository")
public class UserFileRepositoryImpl extends AbstractApplicationRepository<UserFile> implements UserFileRepository {

}
