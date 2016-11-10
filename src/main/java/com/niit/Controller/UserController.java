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

import com.niit.DAO.UserDAO;
import com.niit.Models.User;;


@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value="editUser/{user.username}", method=RequestMethod.GET)
	public String editUser(@PathVariable("user.username") String id, Map<String, Object> map){
		User user=userDAO.get(id);
	    map.put("user", user);
	    return "editUser";
	}
	
	@RequestMapping(value="updateUser", method=RequestMethod.POST)
	
	public String updateUser(User user){
		userDAO.update(user);
		return "redirect:getAllUser";
		
	}

	@RequestMapping("addUser")
	public String addUser(@ModelAttribute User user) {
		user.setRoles("ROLE_USER");
		userDAO.add(user);
		
	  return "redirect:/";
	 }
		
	
	@RequestMapping(value="deleteUser/{user.username}", method=RequestMethod.GET)
	public String deleteUser(@PathVariable("user.username") String id) {
		
		userDAO.delete(id);
	    return "redirect:/getAllUser";
	 }
	

	
	@RequestMapping("/getAllUser")
	public ModelAndView getAllUsers() {
		
		List<User> List = userDAO.list();
		
		ModelAndView mv = new ModelAndView("userlist");
		mv.addObject("userlist", List);

		return mv;
	}
	

}

