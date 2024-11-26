package com.org.product.service;

import com.org.product.model.Product;


public interface ProductService {

	public void saveProduct(Product p);

	public Iterable<Product> viewProduct();

	public Iterable<Product> deleteProduct(int productId);

	public Product editProduct(int productId);

	

	

}
