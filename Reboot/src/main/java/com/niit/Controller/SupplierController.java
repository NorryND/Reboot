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

import com.niit.DAO.SupplierDAO;
import com.niit.Models.Supplier;;


@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping(value="editSupplier/{supplier.id}", method=RequestMethod.GET)
	public String editSupplier(@PathVariable("supplier.id") String id, Map<String, Object> map){
		Supplier supplier=supplierDAO.get(id);
	    map.put("supplier", supplier);
	    return "editSupplier";
	}
	
	@RequestMapping(value="updateSupplier", method=RequestMethod.POST)
	
	public String updateSupplier(Supplier supplier){
		supplierDAO.update(supplier);
		return "redirect:getAllSupplier";
		
	}
		

	@RequestMapping("addSupplier")
	public String addSupplier(@Valid @ModelAttribute Supplier supplier,BindingResult result) {
		if (result.hasErrors())
				{
			return "supplier";
				}
		supplierDAO.add(supplier);
	  return "redirect:Supplier";
	 }
		
	
	@RequestMapping(value="deleteSupplier/{supplier.id}", method=RequestMethod.GET)
	public String deleteSupplier(@PathVariable("supplier.id") String id) {
		
		supplierDAO.delete(id);
	    return "redirect:/getAllSupplier";
	 }
	

	
	@RequestMapping("/getAllSupplier")
	public ModelAndView getAllSupplier() {
		
		List<Supplier> List = supplierDAO.list();
		
		ModelAndView mv = new ModelAndView("supplierlist");
		mv.addObject("supplierlist", List);

		return mv;
	}
	

}

