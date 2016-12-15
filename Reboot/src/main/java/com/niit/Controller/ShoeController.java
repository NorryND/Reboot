package com.niit.Controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.Models.Cart;
import com.niit.Models.Category;
import com.niit.Models.Contact;
import com.niit.Models.Product;
import com.niit.Models.Supplier;
import com.niit.Models.User;



@Controller
public class ShoeController
{
	
	@RequestMapping("/")
	public String homepage()
	     {		
		return "index";
         }
	
	@RequestMapping("/AboutUs")
	public String About()
	     {		
		return "aboutus";
         }
		
	@RequestMapping(value="/Login", method=RequestMethod.GET)
	public String login()
	     {		
		return "login";
         }
	
	@RequestMapping(value = "/Denied", method = RequestMethod.GET)
    public String loginerror(Model model) {
        model.addAttribute("error", "true");
        return "login";
    }
	
	@RequestMapping(value="/Register", method=RequestMethod.GET)
	public String register(Model model )
	     {		
		model.addAttribute("user", new User());
		return "register";
         }
	
	
	@RequestMapping("Validate")
	public String validate(Model model, HttpSession session,Principal principal)
	{
		String name=principal.getName();
	      model.addAttribute("successMessage", "You Have Sucessfully Login");
	      session.setAttribute("username", name);
		      return "index";      
    }
	
	@RequestMapping(value="/Product", method=RequestMethod.GET)
	public String product(Model model)
	     {		
		model.addAttribute("product", new Product());
		return "product";
         }
	
	@RequestMapping(value="/Category", method=RequestMethod.GET)
	public String category(Model model)
	     {		
		model.addAttribute("category", new Category());
		return "category";
         }
	
	@RequestMapping(value="/Contact", method=RequestMethod.GET)
	public String contact(Model model)
	     {	
		model.addAttribute("contact", new Contact());
		return "contact";
         }
	
	@RequestMapping(value="/Supplier", method=RequestMethod.GET)
	public String supplier(Model model)
	     {		
		model.addAttribute("supplier", new Supplier());
		return "supplier";
         }
	
	@RequestMapping(value="/Cart", method=RequestMethod.GET)
	public String cart(Model model)
	     {		
		model.addAttribute("cart", new Cart());
		return "cart";
         }
	
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
    public String logout(Model model, HttpSession session, RedirectAttributes re) {
		session.invalidate();
 //       re.addFlashAttribute("successlogout", "Logout Successful ");
        return "redirect:/";
    }	 

}
