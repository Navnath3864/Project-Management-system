package com.org.product.serviceImpl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;

import com.org.product.model.Product;
import com.org.product.repository.ProductRepository;
import com.org.product.service.ProductService;

import jakarta.transaction.Transactional;
@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	public ProductRepository productRepository;

	@Override
	public void saveProduct(Product p) {
		productRepository.save(p);
	}

	@Override
	public Iterable<Product> viewProduct() {
		Iterable<Product> productList=productRepository.findAll();
		return productList;
	}

	
	@Override
	public Iterable<Product> deleteProduct(int productId) {
		productRepository.deleteById(productId);
		return viewProduct();
	}

	@Override
	public Product editProduct(int productId) {
		Product product=productRepository.findProductByProductId(productId);
		return product;
	}
}
