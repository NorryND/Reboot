package com.niit.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.User;

    @EnableTransactionManagement
    @Repository("userDAO")
	public class UserDAOImpl implements UserDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		public UserDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@SuppressWarnings("unchecked")
		@Transactional
		public List<User> list() {
			return sessionFactory.getCurrentSession().createQuery("from User").list();
		}

		@Transactional
		public User get(String username) {
			return (User) sessionFactory.getCurrentSession().get(User.class, username);
		}

		@Transactional
		public void add(User user) {
			
			sessionFactory.getCurrentSession().save(user);
			
		}
		
		@Transactional
		public void update(User user) {
		
			sessionFactory.getCurrentSession().update(user);
			
		}

		@Transactional
		public void delete(String username) 
		{
			User p = new User();
			p.setUsername(username);
			sessionFactory.getCurrentSession().delete(p);
			
			
    }
    }
    
  

		

		
		
		
	

