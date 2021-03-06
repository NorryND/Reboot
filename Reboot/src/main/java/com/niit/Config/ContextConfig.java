package com.niit.Config;


import org.apache.commons.dbcp2.BasicDataSource;


import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.niit.DAO.BillingDAO;
import com.niit.DAO.BillingDAOImpl;
import com.niit.DAO.CartDAO;
import com.niit.DAO.CartDAOImpl;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.CategoryDAOImpl;
import com.niit.DAO.ContactDAO;
import com.niit.DAO.ContactDAOImpl;
import com.niit.DAO.PaymentDAO;
import com.niit.DAO.PaymentDAOImpl;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.ProductDAOImpl;
import com.niit.DAO.SupplierDAO;
import com.niit.DAO.SupplierDAOImpl;
import com.niit.DAO.UserDAO;
import com.niit.DAO.UserDAOImpl;
import com.niit.Models.Billing;
import com.niit.Models.Cart;
import com.niit.Models.Category;
import com.niit.Models.Contact;
import com.niit.Models.Payment;
import com.niit.Models.Product;
import com.niit.Models.Supplier;
//import com.niit.Services.ProductService;
//import com.niit.Services.ProductServiceImpl;
import com.niit.Models.User;


@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan("com.niit.*")

public class ContextConfig {

    
    @Bean(name = "dataSource")
    public DataSource getDataSource()
    {
    	BasicDataSource dataSource = new BasicDataSource();
    	dataSource.setDriverClassName("org.h2.Driver");
    	dataSource.setUrl("jdbc:h2:tcp://localhost/~/Reboot");
    	dataSource.setUsername("sa");
    	dataSource.setPassword("");
    	return dataSource;
    }
    
   
    
    @Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
	  SessionFactory sessionFactoryFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactoryFactory);

		return transactionManager;
	}
    
    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.format_sql", "true");
    	properties.put("hibernate.use_sql_comments", "true");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	properties.put("hibernate.hbm2ddl.auto","update");
    	return properties;
    }
    
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionFactoryBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionFactoryBuilder.addProperties(getHibernateProperties());
    	sessionFactoryBuilder.addAnnotatedClass(Product.class);
    	sessionFactoryBuilder.addAnnotatedClass(Category.class);
    	sessionFactoryBuilder.addAnnotatedClass(Supplier.class);
    	sessionFactoryBuilder.addAnnotatedClass(User.class);
    	sessionFactoryBuilder.addAnnotatedClass(Contact.class);
    	sessionFactoryBuilder.addAnnotatedClass(Cart.class);
    	sessionFactoryBuilder.addAnnotatedClass(Billing.class);
    	sessionFactoryBuilder.addAnnotatedClass(Payment.class);
    	return sessionFactoryBuilder.buildSessionFactory();
    }
     
    @Autowired
    @Bean(name = "productDAO")
    public ProductDAO getProductDAO(SessionFactory sessionFactory) {
    	return new ProductDAOImpl();
    }
    
    @Autowired
    @Bean(name = "categoryDAO")
    public CategoryDAO getCategoryDAO(SessionFactory sessionFactory) {
    	return new CategoryDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "supplierDAO")
    public SupplierDAO getSupplierDAO(SessionFactory sessionFactory) {
    	return new SupplierDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "userDAO")
    public UserDAO getUserDAO(SessionFactory sessionFactory) {
    	return new UserDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "contactDAO")
    public ContactDAO getContactDAO(SessionFactory sessionFactory) {
    	return new ContactDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "cartDAO")
    public CartDAO getCartDAO(SessionFactory sessionFactory) {
    	return new CartDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "billingDAO")
    public BillingDAO getBillingDAO(SessionFactory sessionFactory) {
    	return new BillingDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "paymentDAO")
    public PaymentDAO getPaymentDAO(SessionFactory sessionFactory) {
    	return new PaymentDAOImpl(sessionFactory);
    }  
    


}

