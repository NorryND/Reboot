package com.niit.Controller;




	import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.DAO.CategoryDAO;
import com.niit.Models.Category;



	@Controller
	public class CategoryController {

		@Autowired
		private CategoryDAO categoryDAO;
		
		@RequestMapping(value="editCategory/{category.id}", method=RequestMethod.GET)
		public String editCategory(@PathVariable("category.id") String id, Map<String, Object> map){
		    Category category=categoryDAO.get(id);
		    map.put("category", category);
		    return "editCategory";
		}

		
		@RequestMapping(value="updateCategory", method=RequestMethod.POST)
		
		public String updateCategory(Category category,RedirectAttributes rea){
			categoryDAO.update(category);
			rea.addFlashAttribute("update", "Category Updated Successfully");
			return "redirect:getAllCategory";
			
		}
			

		@RequestMapping("addCategory")
		public String addCategory(@Valid @ModelAttribute Category category,BindingResult result,RedirectAttributes rea) {
			if(result.hasErrors())
			{
				return "category";
			}
			categoryDAO.add(category);
			rea.addFlashAttribute("cadd", "Category Added Successfully");
		  return "redirect:Category";
		 }
		
		
		@RequestMapping(value="deleteCategory/{category.id}", method=RequestMethod.GET)
		public String deleteCategory(@PathVariable("category.id") String id,RedirectAttributes rea) {
			
			categoryDAO.delete(id);
			rea.addFlashAttribute("delete", "Category Deleted Successfully");
		    return "redirect:/getAllCategory";
		 }
			
		@RequestMapping("/getAllCategory")
		public ModelAndView getAllCategory() {
			
			List<Category> List = categoryDAO.list();
			
			ModelAndView mv = new ModelAndView("categorylist");
			mv.addObject("categorylist", List);

			return mv;
		}
		

	}



