package com.globacomp.ssystem.c4m.data.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;

import com.globacomp.common.model.Model;
import com.globacomp.ssystem.c4m.data.dao.ApplicationRepository;

public abstract class AbstractApplicationRepository<T extends Model>
		implements 	ApplicationRepository<T> {
	
	@PersistenceContext
	protected EntityManager entityManager;
	
	protected SimpleJpaRepository<T, String> simpleJpaRepository;
	
	protected Class<T> entityClass;
	
	@Override
	public List<T> findAll() {
		return simpleJpaRepository.findAll();
	}

	@Override
	public List<T> findAll(Sort sort) {
		return simpleJpaRepository.findAll(sort);
	}

	@Override
	public List<T> findAll(Iterable<String> ids) {
		return simpleJpaRepository.findAll(ids);
	}

	@Override
	public <S extends T> List<S> save(Iterable<S> entities) {
		return simpleJpaRepository.save(entities);
	}

	@Override
	public void flush() {
		simpleJpaRepository.flush();
	}

	@Override
	public <S extends T> S saveAndFlush(S entity) {
		return simpleJpaRepository.saveAndFlush(entity);
	}

	@Override
	public void deleteInBatch(Iterable<T> entities) {
		simpleJpaRepository.deleteInBatch(entities);
	}

	@Override
	public void deleteAllInBatch() {
		simpleJpaRepository.deleteAllInBatch();
	}

	@Override
	public T getOne(String id) {
		return simpleJpaRepository.getOne(id);
	}

	@Override
	public Page<T> findAll(Pageable pageable) {
		return simpleJpaRepository.findAll(pageable);
	}

	@Override
	public <S extends T> S save(S entity) {
		return simpleJpaRepository.save(entity);
	}

	@Override
	public T findOne(String id) {
		return simpleJpaRepository.findOne(id);
	}

	@Override
	public boolean exists(String id) {
		return simpleJpaRepository.exists(id);
	}

	@Override
	public long count() {
		return simpleJpaRepository.count();
	}

	@Override
	public void delete(String id) {
		simpleJpaRepository.delete(id);
	}

	@Override
	public void delete(T entity) {
		simpleJpaRepository.delete(entity); 
	}

	@Override
	public void delete(Iterable<? extends T> entities) {
		simpleJpaRepository.delete(entities);
	}

	@Override
	public void deleteAll() {
		simpleJpaRepository.deleteAll();
	}

	@SuppressWarnings("unchecked")
	@PostConstruct void init() {

		@SuppressWarnings("rawtypes")
		Class<? extends AbstractApplicationRepository> applicationRepositoryClass = getClass();
		ParameterizedType parameterizedType = (ParameterizedType) applicationRepositoryClass.getGenericSuperclass();
		this.entityClass = (Class<T>) parameterizedType.getActualTypeArguments()[0];
		simpleJpaRepository = new SimpleJpaRepository<T, String>(entityClass, entityManager);
	}
	
}
