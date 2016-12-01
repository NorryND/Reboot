package com.niit.DAO;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.Supplier;

    @EnableTransactionManagement
    @Repository("supplierDAO")
	public class SupplierDAOImpl implements SupplierDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		public SupplierDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@SuppressWarnings("unchecked")
		@Transactional
		public List<Supplier> list() {
			return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
		}

		@Transactional
		public Supplier get(String id) {
			return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, id);
		}

		@Transactional
		public void add(Supplier supplier) {
			sessionFactory.getCurrentSession().save(supplier);
			
		}
		
		@Transactional
		public void update(Supplier supplier) {
		
			sessionFactory.getCurrentSession().update(supplier);
			
		}

		@Transactional
		public void delete(String id) 
		{
			Supplier s = new Supplier();
			s.setId(id);
			sessionFactory.getCurrentSession().delete(s);
			
			
    }
    }
    
  

		

		
		
		
	

