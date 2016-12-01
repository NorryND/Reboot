package com.niit.DAO;

import java.util.List;

import com.niit.Models.Category;

public interface CategoryDAO {
	
	public List<Category> list();

	public Category get(String id);	
	
	public void add(Category category);
	
	public void update(Category category);

	public void delete(String id);

}
