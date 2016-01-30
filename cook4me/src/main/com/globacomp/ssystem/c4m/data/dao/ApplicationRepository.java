package com.globacomp.ssystem.c4m.data.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import com.globacomp.common.model.Model;

@NoRepositoryBean
public interface ApplicationRepository<T extends Model> extends JpaRepository<T, String>{

}
