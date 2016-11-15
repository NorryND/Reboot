package com.niit.Controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.Models.Product;;


@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="editProduct/{product.id}", method=RequestMethod.GET)
	public String editProduct(@PathVariable("product.id") String id, Map<String, Object> map){
	    Product product=productDAO.get(id);
	    map.put("product", product);
	    return "editProduct";
	}
	
	@RequestMapping(value="updateProduct", method=RequestMethod.POST)
	
	public String updateProduct(Product product){
		productDAO.update(product);
		return "redirect:getAllProduct";
		
	}
	

	@RequestMapping(value="details/{product.id}", method=RequestMethod.GET)
	public String details(@PathVariable("product.id") String id, Map<String, Object> map )
	{
	      Product product=productDAO.get(id);
	      map.put("product", product);
	     
		      return "productdetails";
		      
    }	
				
		

	@RequestMapping("addProduct")
	public String addProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file) 
	{   
		
		productDAO.add(product);
			
		if(!product.getFile().isEmpty())
			{
				try
				{
					File dir= new File("C:/Users/Norwin Dcruz/Desktop/NIIT/Reboot/src/main/webapp/upload");
					if (!dir.exists())
						dir.mkdirs();
	
					// Create the file on server
					File serverFile = new File(dir, product.getName() + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(	new FileOutputStream(serverFile));
					stream.write(product.getFile().getBytes());
					stream.close();
	
	
					System.out.println("Upload");
				 } catch (Exception e) 
				{
					System.out.println("You failed to upload " + " => " + e.getMessage());
		        }
		    } 
			else 
			{
				System.out.println("You failed to upload  because the file was empty.");
			}
		return "redirect:Product";
	 }
		

	@RequestMapping(value="deleteProduct/{product.id}", method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("product.id") String id) {
		categoryDAO.delete(id);
		productDAO.delete(id);
	    return "redirect:/getAllProduct";
	 }
	

	
	@RequestMapping("/getAllProduct")
	public ModelAndView getAllProducts() {
		
		List<Product> List = productDAO.list();
		
		ModelAndView mv = new ModelAndView("productlist");
		mv.addObject("productlist", List);

		return mv;
	}
	

}

