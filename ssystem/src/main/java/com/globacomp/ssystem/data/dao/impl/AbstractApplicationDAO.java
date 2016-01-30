package com.globacomp.ssystem.data.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.Parameter;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.dao.DataAccessException;

import com.globacomp.common.model.Createable;
import com.globacomp.common.model.Model;
import com.globacomp.common.model.Modifiable;
import com.globacomp.common.model.Updateable;
import com.globacomp.ssystem.common.Configuration;
import com.globacomp.ssystem.data.dao.ApplicationDAO;

public abstract class AbstractApplicationDAO<T extends Model> implements
		ApplicationDAO<T> {

	public static final Logger logger = Logger
			.getLogger(AbstractApplicationDAO.class.getName());

	@PersistenceContext
	protected EntityManager entityManager;

	protected Class<T> entityClass;

	@SuppressWarnings("unchecked")
	public AbstractApplicationDAO() {

		@SuppressWarnings("rawtypes")
		Class<? extends AbstractApplicationDAO> applicationDAOClass = getClass();
		Type genericSuperclass = applicationDAOClass.getGenericSuperclass();

		ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
		Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
		Type type = actualTypeArguments[0];
		this.entityClass = (Class<T>) type;
	}

	public List<T> findAll() throws DataAccessException {

		String entityClassName = entityClass.getSimpleName();
		String entityClassAlias = entityClassName.toLowerCase()+"1";
		StringBuilder stb = new StringBuilder();
		stb.append("SELECT ");
		stb.append(entityClassAlias);
		stb.append(" FROM ");
		stb.append(entityClassName);
		stb.append(" ");
		stb.append(entityClassAlias);
		stb.append(" WHERE recordStatus = :recordStatus ");
		String queryString = stb.toString();
		TypedQuery<T> query = entityManager.createQuery(queryString,
				entityClass);
		query.setParameter("recordStatus", (byte) 1);
		List<T> employees = query.getResultList();

		return employees;
	}

	public T findById(String id) throws DataAccessException {

		return this.entityManager.find(entityClass, id);
	}

	public List<T> findByName(String queryString, String name)
			throws DataAccessException {

		TypedQuery<T> query = entityManager.createQuery(queryString,
				entityClass);
		query.setParameter("recordStatus", (byte) 1);
		query.setParameter("Name", name);
		List<T> list = query.getResultList();

		return list;
	}

	@SuppressWarnings("unchecked")
	public T create(Createable model) throws DataAccessException {
		
		this.entityManager.persist(model);
		this.entityManager.flush();

		return (T) model;
	}

	@SuppressWarnings("unchecked")
	public T update(Updateable model) throws DataAccessException {

		this.entityManager.merge(model);
		this.entityManager.flush();

		return (T) model;
	}

	public void deactivate(Modifiable entity) throws DataAccessException {

		entity.setRecordStatus(Configuration.STATUS.DELETED.getStatus());
		this.entityManager.merge(entity);
	}

	public void persist(T entity) throws DataAccessException {

		this.entityManager.persist(entity);
		this.entityManager.flush();
	}

	public T merge(T entity) throws DataAccessException {

		this.entityManager.merge(entity);
		this.entityManager.flush();

		return (T) entity;
	}

	public void refresh(T entity) throws DataAccessException {

		this.entityManager.refresh(entity);
		this.entityManager.flush();

	}

	public void delete(T entity) throws DataAccessException {

		this.entityManager.remove(entity);
		this.entityManager.flush();

	}
	
	
	@Override
	public List<T> findByIds(String[] ids) {

		StringBuilder stb = getSelectSQL();
		stb.append(" and ");
		stb.append(" id in :a");
		String queryString = stb.toString();
		TypedQuery<T> query = entityManager.createQuery(queryString,
				entityClass);
		query.setParameter("recordStatus", (byte) 1);
		query.setParameter("a", Arrays.asList(ids));
		List<T> results = query.getResultList();
		
		System.out.println(queryString);
		System.out.println(results.size());
		//System.out.println(StringUtils.oi);
		return results;
	}
	@Override
	public List<T> findByQueryList(String queryString,
			Map<String, Object> paramatersMap) {
		
		TypedQuery<T> query = entityManager.createQuery(queryString,
				entityClass);
		
		for (Parameter parameter : query.getParameters()) {
			Object paramValue = paramatersMap.get(parameter.getName());
			if(paramValue == null)
				throw new IllegalStateException("Query Parameters not found: "+parameter.getName());
			query.setParameter(parameter, paramValue);
		}
		return query.getResultList();
	}
	
	@Override
	public T findByQueryOne(String queryString,
			Map<String, Object> paramatersMap) {
		// TODO Auto-generated method stub
		TypedQuery<T> query = entityManager.createQuery(queryString,
				entityClass);
		
		for (Parameter parameter : query.getParameters()) {
			Object paramValue = paramatersMap.get(parameter.getName());
			if(paramValue == null)
				throw new IllegalStateException("Query Parameters not found: "+parameter.getName());
			query.setParameter(parameter, paramValue);
		}
		return query.getSingleResult();
	}
	
	protected StringBuilder getSelectSQL() {
		
		String entityClassName = entityClass.getSimpleName();
		String entityClassAlias = entityClassName.toLowerCase()+"1";
		StringBuilder stb = new StringBuilder();
		stb.append("SELECT ");
		stb.append(entityClassAlias);
		stb.append(" FROM ");
		stb.append(entityClassName);
		stb.append(" ");
		stb.append(entityClassAlias);
		stb.append(" WHERE recordStatus = :recordStatus ");
		
		return stb;
	}
	
}