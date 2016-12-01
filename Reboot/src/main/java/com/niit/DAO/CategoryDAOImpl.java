
package com.niit.DAO;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.Category;

    @EnableTransactionManagement
    @Repository("categoryDAO")
	public class CategoryDAOImpl implements CategoryDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		public CategoryDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
		}

		@SuppressWarnings("unchecked")
		@Transactional
		public List<Category> list() {
			return sessionFactory.getCurrentSession().createQuery("from Category").list();
		}

		@Transactional
		public Category get(String id) {
			return (Category) sessionFactory.getCurrentSession().get(Category.class, id);
		}

		@Transactional
		public void add(Category category) {
			sessionFactory.getCurrentSession().save(category);
			
		}
		
		@Transactional
		public void update(Category category) {
		
			sessionFactory.getCurrentSession().update(category);
			
		}

		@Transactional
		public void delete(String id) 
		{
			Category c = new Category();
			c.setId(id);
			sessionFactory.getCurrentSession().delete(c);
			
			
    }
    }
    
  

		

		
		
		
	

