package com.org.product.repository;



import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.org.product.model.Product;
@Repository
@EnableJpaRepositories
public interface ProductRepository extends CrudRepository<Product, Integer>{

	Product findProductByProductId(int productId);
	

}
