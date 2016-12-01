package com.niit.DAO;

import java.util.List;


import com.niit.Models.Supplier;

public interface SupplierDAO {


	public List<Supplier> list();

	public Supplier get(String id);	
	
	public void add(Supplier supplier);
	
	public void update(Supplier supplier);

	public void delete(String id);


}

