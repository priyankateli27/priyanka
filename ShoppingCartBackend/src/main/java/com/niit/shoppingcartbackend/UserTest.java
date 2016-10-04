package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.User;

public class UserTest {
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		context.refresh();
		
		UserDAO userDAO= (UserDAO) context.getBean("userDAO");
		User user= (User) context.getBean("user");
		
		user.setId("104");
		user.setName("amita");
		user.setPassword("amita");
		user.setMobile(986478322);
		user.setEmail("amita@gmail.com");
		user.setAddress("Mumbai");
		
		
		userDAO.saveOrUpdate(user);
	System.out.println("Record Inserted Successfully");
		
	}
}
