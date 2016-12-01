
package com.niit.DAO;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.Billing;

    @EnableTransactionManagement
    @Repository("billingDAO")
	public class BillingDAOImpl implements BillingDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		public BillingDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@SuppressWarnings("unchecked")
		@Transactional
		public List<Billing> list() {
			return sessionFactory.getCurrentSession().createQuery("from Billing").list();
		}

		@Transactional
		public Billing get(String id) {
			return (Billing) sessionFactory.getCurrentSession().get(Billing.class, id);
		}

		@Transactional
		public void add(Billing billing) {
			sessionFactory.getCurrentSession().save(billing);
			
		}
		
		@Transactional
		public void update(Billing billing) {
		
			sessionFactory.getCurrentSession().update(billing);
			
		}

		@Transactional
		public void delete(String id) 
		{
			Billing b = new Billing();
			b.setId(id);
			sessionFactory.getCurrentSession().delete(b);
			
			
    }
    }
    
  

		

		
		
		
	

