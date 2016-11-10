package com.niit.DAO;



import java.util.List;

import com.niit.Models.Contact;

public interface ContactDAO
{
		
	    public List<Contact> list();

	    public Contact get(String id);
	
		public void add(Contact contact);
		
		public void delete(String id);
	
		
}
