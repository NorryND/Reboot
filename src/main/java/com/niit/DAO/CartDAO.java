package com.niit.DAO;

import java.util.List;

import com.niit.Models.Cart;

public interface CartDAO {
	
	public List<Cart> list(String uid);
	
	public void update(Cart cart);

	public void delete(String id);

	public void add(Cart cart);

}
