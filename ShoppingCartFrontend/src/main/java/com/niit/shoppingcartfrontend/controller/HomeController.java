package com.niit.shoppingcartfrontend.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.Category;
import com.niit.shoppingcartbackend.model.User;

@Controller
public class HomeController {
	
	Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	User user;

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private Category category;

	//     ${categoryList}
	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session) {
		log.debug("Starting of the method onLoad");
		ModelAndView mv = new ModelAndView("/home");
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());
		log.debug("Ending of the method onLoad");
		return mv;
	}
	
	@RequestMapping("/register")
	public String saveRegister()
	{
		return "register";
	}
	
	
  // ${successMessage}
	@RequestMapping("/register1")
	public ModelAndView registerUser(User user,BindingResult result)
	{
		String returnVal="register";
		ModelAndView model=null;
		if(result.hasErrors())
		{
			returnVal="register";
			model=new ModelAndView("register");
		}
		else
		{
			userDAO.saveOrUpdate(user);
			ModelAndView mv  = new ModelAndView("/home");
			mv.addObject("successMessage", "You are successfully register");
				
		}
		return model;
	}

	@RequestMapping("/registerHere")
	public ModelAndView registerHere() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("user", user);
		mv.addObject("isUserClickedRegisterHere", "true");
		return mv;
	}

	@RequestMapping("/loginHere")
	public ModelAndView loginHere() {
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedLoginHere", "true");
		return mv;
	}
	
	@RequestMapping("/notification")
	public ModelAndView notification() {
		ModelAndView mv = new ModelAndView("/notification");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedHelp", "true");
		return mv;
	}



}
