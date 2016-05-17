package com.globacomp.ssystem.c4m.service;

import com.globacomp.ssystem.data.model.inventory.Product;

public interface ProductService extends ApplicationService {

	Product findById(String productId);
}
