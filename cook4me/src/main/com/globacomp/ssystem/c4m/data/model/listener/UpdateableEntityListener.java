package com.globacomp.ssystem.c4m.data.model.listener;

import java.util.Date;

import javax.persistence.PreUpdate;

import com.globacomp.common.model.Updateable;
import com.globacomp.ssystem.c4m.web.WebUser;

public class UpdateableEntityListener {

	public UpdateableEntityListener() {
	}

	@PreUpdate
	public void onPreUpdate(final Updateable entity) {

		WebUser user = WebUser.getUser();
		String lastUpdateBy = user.getId();

		entity.setLastUpdateDate(new Date());
		entity.setLastUpdateBy(lastUpdateBy);
	}
}
