package com.niit.DAO;

import java.util.List;


import com.niit.Models.User;

public interface UserDAO {


	public List<User> list();

	public User get(String username);
	
	public void add(User user);
	
	public void update(User user);

	public void delete(String username);


}

