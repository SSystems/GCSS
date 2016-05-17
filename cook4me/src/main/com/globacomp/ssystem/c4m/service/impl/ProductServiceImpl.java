package com.globacomp.ssystem.c4m.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globacomp.ssystem.c4m.data.dao.ProductRepository;
import com.globacomp.ssystem.c4m.service.ProductService;
import com.globacomp.ssystem.data.model.inventory.Product;

@Service("productService")
public class ProductServiceImpl extends AbstractApplicationService implements ProductService{

	@Autowired
	private ProductRepository productRepository;

	@Override
	public Product findById(String productId) {
		return productRepository.findOne(productId);
	}

	
}
