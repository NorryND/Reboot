package com.niit.Controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.Models.Category;
import com.niit.Models.Product;;


@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	@RequestMapping(value="editProduct", method=RequestMethod.GET)
	public ModelAndView editProduct(@RequestParam("id") String id){
	    Product product=productDAO.get(id);
	    ModelAndView mv=new ModelAndView("editProduct");
	    mv.addObject("product", product);
	    return mv;
	}
	
	@RequestMapping(value="updateProduct", method=RequestMethod.POST)
	
	public String updateProduct(@Valid @ModelAttribute Product product, BindingResult result,Model model
			,RedirectAttributes rea){
		int counter=0;
		List<Product> list=productDAO.list();
		for(Product p:list)
		{
			if(p.getName().contains(product.getName()))
			counter++;
			System.out.println(p.getName());
			System.out.println(product.getName());
			System.out.println(counter);
		}
		
		if (result.hasErrors()){
			return "editProduct";
		}
		else if(counter!=0)
			{
				model.addAttribute("pmsg", "Product Already Exists");
				return "editProduct";
			}
		else if(product.getCategory().equalsIgnoreCase("Select a Category"))
		{
			model.addAttribute("uperror", "Enter Valid Category");
			return "editProduct";
		}
		 else if(!product.getFile().isEmpty())
			{
			productDAO.update(product);
				try
				{
					File dir= new File("C:/Users/Norwin Dcruz/Desktop/NIIT/Reboot/src/main/webapp/upload");
					if (!dir.exists())
						dir.mkdirs();
	
					// Create the file on server
					File serverFile = new File(dir, product.getName()+product.getId() + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(	new FileOutputStream(serverFile));
					stream.write(product.getFile().getBytes());
					stream.close();
	
	
					System.out.println("Upload");
					
					rea.addFlashAttribute("psuccess", "Product Update Successfully");
				 } catch (Exception e) 
				{
					System.out.println("You failed to upload " + " => " + e.getMessage());
		        }
		    }
		 
			else 
			{
				model.addAttribute("perror", "Empty file");
				System.out.println("You failed to upload  because the file was empty.");
				return "editProduct";
			
			}
		return "redirect:getAllProduct";
		
	}
	

	@RequestMapping(value="details", method=RequestMethod.GET)
	public String details(@RequestParam("id") String id, Map<String, Object> map,HttpSession session)
	{
	      Product product=productDAO.get(id);
	      session.setAttribute("stock", product.getStock());
	      System.out.println(product.getStock());
	      map.put("product", product);
	     
		      return "productdetails";
		      
    }	

	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute Product product, 
			Model model,BindingResult result,RedirectAttributes rea,HttpSession session) {   
		
		int counter=0;
		List<Product> list=productDAO.list();
		for(Product p:list)
		{
			if(p.getName().contains(product.getName()))
			counter++;
			System.out.println(p.getName());
			System.out.println(product.getName());
			System.out.println(counter);
		}
		if(result.hasErrors())
		{
			return "product";
		}
		if(product.getCategory().equalsIgnoreCase("Select a Category"))
		{
			model.addAttribute("pcat", "Enter Valid Category");
			return "product";
		}
		 if(counter!=0)
		{
			model.addAttribute("pmsg", "Product Already Exists");
			return "product";
		}
		 
		 else if(!product.getFile().isEmpty())
			{
			productDAO.add(product);
				try
				{
					File dir= new File("C:/Users/Norwin Dcruz/Desktop/NIIT/Reboot/src/main/webapp/upload");
					if (!dir.exists())
						dir.mkdirs();
	
					// Create the file on server
					File serverFile = new File(dir, product.getName()+product.getId() + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(	new FileOutputStream(serverFile));
					stream.write(product.getFile().getBytes());
					stream.close();
	
	
					System.out.println("Upload");
					rea.addFlashAttribute("psuccess", "Product Added Successfully");
				 } catch (Exception e) 
				{
					System.out.println("You failed to upload " + " => " + e.getMessage());
		        }
		    }
		 
			else 
			{
				rea.addFlashAttribute("perror", "Empty file");
				System.out.println("You failed to upload  because the file was empty.");
			
			}
		 
		return "redirect:Product";
		 
	}
	
	 
		

	@RequestMapping(value="deleteProduct", method=RequestMethod.GET)
	public String deleteProduct(@RequestParam("id") String id,RedirectAttributes rea) {
		productDAO.delete(id);
		rea.addFlashAttribute("delete", "Product Deleted Successfully");
	    return "redirect:/getAllProduct";
	 }
	
	@RequestMapping(value="pdata",method=RequestMethod.GET)
	public @ResponseBody List<Product> plist(){
		
		return productDAO.list();
		
	}
	
	@RequestMapping(value="cdata",method=RequestMethod.GET)
	public @ResponseBody List<Category> clist(){
		
		return categoryDAO.list();
		
	}
  
	
	@RequestMapping("/getAllProduct")
	public ModelAndView getAllProducts() {
	
		List<Product> List = productDAO.list();
		ModelAndView mv = new ModelAndView("productlist");
		mv.addObject("productlist", List);
		
		return mv;
	}
	
	@RequestMapping("/sports")
	public ModelAndView getAllSportsProducts(@RequestParam("category") String category) {
	
		List<Product> List = productDAO.getCategory(category);
		ModelAndView mv = new ModelAndView("productlist");
		mv.addObject("productlist", List);
		
		return mv;
	}
	@RequestMapping("/outdoor")
	public ModelAndView getAllOutdoorProducts(@RequestParam("category") String category) {
	
		List<Product> List = productDAO.getCategory(category);
		ModelAndView mv = new ModelAndView("productlist");
		mv.addObject("productlist", List);
		
		return mv;
	}
	@RequestMapping("/formal")
	public ModelAndView getAllFormalProducts(@RequestParam("category") String category) {
	
		List<Product> List = productDAO.getCategory(category);
		ModelAndView mv = new ModelAndView("productlist");
		mv.addObject("productlist", List);
		
		return mv;
	}
	@RequestMapping("/casual")
	public ModelAndView getAllCasualProducts(@RequestParam("category") String category) {
	
		List<Product> List = productDAO.getCategory(category);
		ModelAndView mv = new ModelAndView("productlist");
		mv.addObject("productlist", List);
		
		return mv;
	}
	
}

