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
		
		user.setId("102");
		user.setName("amir");
		user.setPassword("amir");
		user.setMobile(986478322);
		user.setEmail("amir@gmail.com");
		user.setAddress("Ratnagiri");
		
		
		userDAO.saveOrUpdate(user);
	System.out.println("Record Inserted Successfully");
		
	}
}
