package com.niit.Controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.ContactDAO;
import com.niit.Models.Contact;


@Controller
public class ContactController {

	@Autowired
	private ContactDAO contactDAO;
			

	@RequestMapping("addContact")
	public String addProduct(@ModelAttribute Contact contact) {
		contactDAO.add(contact);
	  return "redirect:Contact";
	 }
	
	@RequestMapping(value="deleteContact/{contact.id}", method=RequestMethod.GET)
	public String deleteContact(@PathVariable("contact.id") String id) {
		
		contactDAO.delete(id);
	    return "redirect:/getAllContact";
	 }
	
	@RequestMapping(value="detail/{contact.id}", method=RequestMethod.GET)
	public String details(@PathVariable("contact.id") String id, Map<String, Object> map )
	{
	      Contact contact=contactDAO.get(id);
	      map.put("contact", contact);
	     
		      return "contactdetails";
		      
    }
	
	@RequestMapping("/getAllContact")
	public ModelAndView getAllContact() {
		
		List<Contact> List = contactDAO.list();
		
		ModelAndView mv = new ModelAndView("contactlist");
		mv.addObject("contactlist", List);

		return mv;
	}
	

}

