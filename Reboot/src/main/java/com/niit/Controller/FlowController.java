package com.niit.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.niit.DAO.CartDAO;
import com.niit.DAO.ProductDAO;
import com.niit.Models.Billing;
import com.niit.Models.Cart;
import com.niit.Models.Payment;
import com.niit.Models.Product;

@Component
public class flowController {
	
	
	
	
	@Autowired
	private CartDAO cartDAO;
	
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	HttpSession sess;
	
	
	@Transactional
	public void add(Payment payment,Billing billing) {
		
		Session session=sessionFactory.getCurrentSession();
		Double total= (Double) sess.getAttribute("Total");
		String id=(String) sess.getAttribute("name");

		session.save(billing);
		payment.setTotal(total);
		payment.setUsername(id);
		payment.setBid(billing.getId());
		session.save(payment);
	    
		System.out.println(id);
		List<Cart> list=cartDAO.list(id);
		for(Cart c:list)
		{
			Session sess = sessionFactory.getCurrentSession();
			sess.delete(c);
		}

		
	}
		
	

}
