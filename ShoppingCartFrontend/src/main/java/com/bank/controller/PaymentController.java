package com.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.AccountDAO;
import com.niit.shoppingcartbackend.dao.CartDAO;



@Controller
public class PaymentController {

	@Autowired(required = true)
	private CartDAO cartDAO;

	@Autowired(required = true)
	private AccountDAO accountDAO;
	
	@RequestMapping("product/get/{id}")
	public String addToCart(@PathVariable("userID") String userID, Model model) {

		Object totalAmount = cartDAO.getTotalAmount(userID);
			ModelAndView mv = new ModelAndView();
			String message;
			if( accountDAO.trasfer(userID, totalAmount))
			{
				message = "Successfully done the transaction";
				
			}
			else
			{
				message = "Sorry,  not able to do the transaction now. Please try after some time.";
			}
			mv.addObject("trsactionMessage", message);
			return "redirect:/home";
			//return "redirect:/uploadFile";

		
		
	}

	
}
