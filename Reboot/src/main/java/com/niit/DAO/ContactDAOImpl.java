package com.niit.DAO;


import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.Contact;

    @EnableTransactionManagement
    @Repository("contactDAO")
	public class ContactDAOImpl implements ContactDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
		public ContactDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@SuppressWarnings("unchecked")
		@Transactional
		public List<Contact> list() {
			return sessionFactory.getCurrentSession().createQuery("from Contact").list();
		}

		@Transactional
		public Contact get(String id) {
			return (Contact) sessionFactory.getCurrentSession().get(Contact.class, id);
		}

		
		@Transactional
		public void add(Contact contact) {
			sessionFactory.getCurrentSession().save(contact);
			
		}
		
		@Transactional
		public void delete(String id) 
		{
			Contact con = new Contact();
			con.setId(id);
			sessionFactory.getCurrentSession().delete(con);
			
			
        }
		


    }
    
  

		

		
		
		
	

