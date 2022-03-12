package com.product.service;

import com.product.dao.ProductDAO;
import com.product.dao.ProductDAOImpl;
import com.product.model.Product;

public class ProductServiceImpl implements ProductService {

	ProductDAO productDAO = new ProductDAOImpl();

	@Override
	public int inserProduct(Product product) {
		return productDAO.insert(product);
	}

}
