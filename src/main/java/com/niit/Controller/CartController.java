package com.niit.Controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CartDAO;
import com.niit.Models.Cart;



	@Controller
	public class CartController {

		@Autowired
		private CartDAO cartDAO;
		
		
		

		
		@RequestMapping(value="updateCart", method=RequestMethod.POST)
		
		public String updateCart(Cart cart){
			cartDAO.update(cart);
			return "redirect:getAllCart";
			
		}
			

		@RequestMapping("addCart")
		public ModelAndView addCart(Cart cart,@RequestParam("id")String id,@RequestParam("name")String name) {
            
		    cart.setUid(name);
			cart.setPid(id);
			cart.setQuantity(1);
			cart.getPprice();
		double total=0;

			cartDAO.add(cart);
			List<Cart> list=cartDAO.list(name);
			for(Cart c:list)
			{
				double sum=0;
				sum=sum+(c.getQuantity()*c.getPprice());
				total=sum;
				
			}
			cart.setGtotal(total);
			ModelAndView mv=new ModelAndView("cart");
			mv.addObject("cart", list);
		    return mv;

		 }
		
		
		@RequestMapping(value="deleteCart", method=RequestMethod.GET)
		public ModelAndView deleteCart(Cart cart,@RequestParam("id")String id,@RequestParam("name")String name) {
			
			cartDAO.delete(id);
			List<Cart> List=cartDAO.list(name);
			ModelAndView mv=new ModelAndView("cart");
			mv.addObject("cart", List);
		    return mv;
		 }
			
		@RequestMapping(value="getAllCart", method=RequestMethod.GET)
		public ModelAndView getAllCart(@RequestParam("name")String name) {
		   List<Cart> List=cartDAO.list(name);
			ModelAndView mv = new ModelAndView("cart");
			mv.addObject("cart", List);

			return mv;
		}
		

	}



