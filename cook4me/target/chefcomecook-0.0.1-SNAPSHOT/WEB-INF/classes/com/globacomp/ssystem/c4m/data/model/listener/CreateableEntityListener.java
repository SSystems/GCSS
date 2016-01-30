package com.globacomp.ssystem.c4m.data.model.listener;

import java.util.Date;

import javax.persistence.PrePersist;

import com.globacomp.common.model.Createable;
import com.globacomp.ssystem.c4m.web.WebUser;

public class CreateableEntityListener {

	public CreateableEntityListener() {
	}

	@PrePersist
	public void onPrePersist(final Createable entity) {

		WebUser user = WebUser.getUser();
		String createdBy = user.getId();

		entity.setCreationDate(new Date());
		entity.setCreatedBy("system");
	}
}
