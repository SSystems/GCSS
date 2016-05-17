package com.globacomp.ssystem.c4m.data.dao.impl;

import org.springframework.stereotype.Repository;

import com.globacomp.ssystem.c4m.data.dao.ProductRepository;
import com.globacomp.ssystem.data.model.inventory.Product;

@Repository("productRepository")
public class ProductRepositoryImpl extends AbstractApplicationRepository<Product> implements ProductRepository {

	
}
