package com.niit.DAO;

import java.util.List;

import com.niit.Models.Product;

public interface ProductDAO {


	public List<Product> list();

	public Product get(String id);	
	
	public void add(Product product);
	
	public void update(Product product);

	public void delete(String id);


}

