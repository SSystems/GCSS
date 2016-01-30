package com.globacomp.ssystem.data.model.listener;

import javax.persistence.PrePersist;

import com.globacomp.common.model.Modifiable;
import com.globacomp.ssystem.common.Configuration;

public class ModifiableEntityListener {

	public ModifiableEntityListener() {
	}

	@PrePersist
	public void onPrePersist(final Modifiable entity) {

			entity.setRecordStatus(Configuration.STATUS.ACTIVE.getStatus());
	}
}
