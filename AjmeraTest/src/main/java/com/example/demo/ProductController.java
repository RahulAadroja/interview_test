package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entity.Category;
import com.example.demo.entity.Product;
import com.example.demo.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/")
	public String getAllProduct(Model model ) {
		
		List<Product> list = productService.getAllProduct();
		
		model.addAttribute("productList", list);
		
		return "productList";
	}
	
	@RequestMapping("categoty/{id}")
	public List<Category> getCategotyById(@PathVariable Long id) {
		
		List<Category> categories = productService.getProductById(id).getCategory();
		
		return categories;
	}
	
	@RequestMapping("search")
	public List<Product> getSearchData(@RequestParam("text") String text) {
		
		List<Product> list = productService.getSearchProduct(text);
		
		return list;
	}

}
