
package com.niit.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.Payment;

    @EnableTransactionManagement
    @Repository("paymentDAO")
	public class PaymentDAOImpl implements PaymentDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		public PaymentDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@Transactional
		public void add(Payment payment) {
			sessionFactory.getCurrentSession().save(payment);
			
		}
		

    }
    
  

		

		
		
		
	

