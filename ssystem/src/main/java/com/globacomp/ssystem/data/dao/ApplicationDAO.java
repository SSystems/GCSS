package com.globacomp.ssystem.data.dao;

import java.util.List;
import java.util.Map;

import com.globacomp.common.model.Createable;
import com.globacomp.common.model.Model;
import com.globacomp.common.model.Modifiable;
import com.globacomp.common.model.Updateable;

public interface ApplicationDAO<T extends Model> {

	 List<T> findAll();

	 List<T> findByName(String queryString, String name);
	 
	 T findByQueryOne(String queryString, Map<String, Object> paramatersMap);
	 
	 List<T> findByQueryList(String queryString, Map<String, Object> paramatersMap);
	 
	 T findById(String id);

	 T create(Createable model);

	 T update(Updateable model);

	 void deactivate(Modifiable entity);

	 void persist(T entity);

	 T merge(T entity);

	 void refresh(T entity);

	 void delete(T entity);
	 
	 List<T> findByIds(String[] ids);
}
