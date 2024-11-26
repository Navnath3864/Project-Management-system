package com.org.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.product.model.Product;
import com.org.product.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	public ProductService productService;

	@RequestMapping("/")
	public String adminLogin() {
		return "login";
	}

	@RequestMapping("/adminview")
	public String adminView() {
		return "adminView";
	}

	@RequestMapping("/addproduct")
	public String addProduct() {
		return "addProduct";
	}

	@RequestMapping("/saveproduct")
	public String saveProduct(@ModelAttribute Product p, Model m) {
		System.out.println(p);
		productService.saveProduct(p);
		m.addAttribute("data", p);
		return "adminView";
	}

	@RequestMapping("/viewproduct")
	public String viewProduct(Model m) {
		System.out.println("viewProduct method start");
		Iterable<Product> productList = productService.viewProduct();
		System.out.println(productList);
		m.addAttribute("data", productList);
		return "viewProduct";
	}

	@RequestMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("productId") int productId, Model m) {
		System.out.println("delete product :" + productId);
		Iterable<Product> productList=productService.deleteProduct(productId);
		m.addAttribute("data", productList);
		return "viewProduct";
	}
	
	@RequestMapping("/editproduct")
	public String editProduct(@RequestParam("productId") int productId, Model m) {
		System.out.println("edit product :" + productId);
		Product product=productService.editProduct(productId);
		System.out.println(product);
		m.addAttribute("data", product);
		return "updateProduct";
	}

}
