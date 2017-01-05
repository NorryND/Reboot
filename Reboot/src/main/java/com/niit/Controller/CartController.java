package com.niit.Controller;




import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.DAO.CartDAO;
import com.niit.DAO.ProductDAO;
import com.niit.Models.Cart;
import com.niit.Models.Product;



	@Controller
	public class CartController {

		@Autowired
		private CartDAO cartDAO;
		
		@Autowired
		private ProductDAO productDAO;
		
		@RequestMapping(value="updateCart", method=RequestMethod.GET)
		
		public ModelAndView updateCart(Cart cart,@RequestParam("quantity")int quantity,@RequestParam("name")String name,
				Model model,@RequestParam("cid")String id,HttpSession session){
			double total=0;
			int i=0;
			cartDAO.update(quantity,id);
			System.out.println(cart.getPid());
			List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
		
			List<Product> p=productDAO.list();
			   for(Product p1:p)
			   {   
				   System.out.println("Product ID=="+p1.getId());
				   System.out.println("Cart Product id=="+cart.getPid());
				   if(p1.getId().equals(cart.getPid()))
				   {
					   System.out.println("Hello");
		              System.out.println("Stock=="+cart.getPstock());
		              System.out.println("Quantity"+cart.getQuantity());
					  i=i+(cart.getPstock()-cart.getQuantity());
					  p1.setStock(i);
					  productDAO.update(p1);
					  System.out.println(i);
				   }
				   
			   }
			   
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			
			ModelAndView mv=new ModelAndView("cart");
			mv.addObject("cart", list);
		    return mv;
			
		}
			

		@RequestMapping("addCart")
		public String addCart(Cart cart,@RequestParam("id")String id,
				@RequestParam("name")String name,Model model,HttpSession session,RedirectAttributes rea) {
            double total=0;
            int i=0;
            int counter=0;
            
		    cart.setUid(name);
			cart.setPid(id);
			cart.getPprice();
			cart.setQuantity(1);
			cart.getPstock();
			
			List<Cart> List=cartDAO.list(name);
			for(Cart c:List)
			{
				if(c.getPid().equals(cart.getPid()))
				counter++;
				System.out.println(c.getPid());
				System.out.println(cart.getPid());
				System.out.println(counter);
	
			}
			if (counter>0)
			{
				rea.addFlashAttribute("exist", "Product Already exist in Cart");
				return "redirect:getAllProduct";
			}
            
			cartDAO.add(cart);
			List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
	
			List<Product> p=productDAO.list();
			   for(Product p1:p)
			   {   
				   System.out.println("Product ID=="+p1.getId());
				   System.out.println("Cart Product id=="+cart.getPid());
				   if(p1.getId().equals(cart.getPid()))
				   {
					   System.out.println("Hello");
		              System.out.println("Stock=="+cart.getPstock());
		              System.out.println("Quantity"+cart.getQuantity());
					  i=i+(cart.getPstock()-cart.getQuantity());
					  p1.setStock(i);
					  productDAO.update(p1);
					  System.out.println(i);
				   }
				   
			   }
			   
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			session.setAttribute("quantity", cart.getQuantity());
			System.out.println();
		   
			model.addAttribute("cart", list);
			
			return "cart";

		 }
		
		
		@RequestMapping(value="deleteCart", method=RequestMethod.GET)
		public ModelAndView deleteCart(Cart cart,@RequestParam("id")String id,
				@RequestParam("name")String name,@RequestParam("stock")int stock,
				@RequestParam("quantity")int quantity,@RequestParam("pid")String pid,
				Model model,HttpSession session) {
			double total=0;
			int i=0;
			List<Product> p=productDAO.list();
			   for(Product p1:p)
			   {   
				   System.out.println("Product ID=="+p1.getId());
				   System.out.println(pid);
				   if(p1.getId().equals(pid))
				   {
					   System.out.println("Hello");
		              System.out.println(stock);
		              System.out.println(quantity);
					  i=i+(stock+quantity);
					  p1.setStock(i);
					  productDAO.update(p1);
					  System.out.println(i);
				   }
				   
			   }
			   
			cartDAO.delete(id);
			List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
			
			
		
			
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			ModelAndView mv=new ModelAndView("cart");
			mv.addObject("cart", list);
		    return mv;
		 }
			
		@RequestMapping(value="getAllCart", method=RequestMethod.GET)
		public ModelAndView getAllCart(@RequestParam("name")String name,Model model,HttpSession session) {
			double total=0;
		   List<Cart> list=cartDAO.list(name);
		   for(Cart c:list)
			{
				total=total+(c.getPprice()*c.getQuantity());
				
				System.out.println(total);
				
			}
		
			session.setAttribute("Total",total);
			session.setAttribute("name", name);
			ModelAndView mv = new ModelAndView("cart");
			mv.addObject("cart", list);

			return mv;
		}
		

	}



