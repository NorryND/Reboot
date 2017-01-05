package com.niit.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Models.Cart;
import com.niit.Models.Product;
    
    @EnableTransactionManagement
    @Repository("productDAO")
	public class ProductDAOImpl implements ProductDAO {
		

		@Autowired
		private SessionFactory sessionFactory;
		
	

		@SuppressWarnings("unchecked")
		@Transactional
		public List<Product> list() {
			return sessionFactory.getCurrentSession().createQuery("from Product").list();
		}

		@Transactional
		public Product get(String id) {
			return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
		}

		@Transactional
		public void add(Product product) {
			
			sessionFactory.getCurrentSession().save(product);
			
		}
		
		@SuppressWarnings("unchecked")
		@Transactional
		public List<Product> getCategory(String category){
			Session session=sessionFactory.getCurrentSession();
			Criteria criteria=session.createCriteria(Product.class);
			criteria.add(Restrictions.eq("category", category));
			
			List<Product> List=criteria.list();
			return  List;
			
		}
		
		@Transactional
		public void update(Product product) {
		
			sessionFactory.getCurrentSession().update(product);
			
		}

		@Transactional
		public void delete(String id) 
		{
			Product p = new Product();
			p.setId(id);
			sessionFactory.getCurrentSession().delete(p);
			
			
    }

		
    }
    
  

		

		
		
		
	

