package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.CartDAO;
import com.niit.shoppingcartbackend.model.Cart;

public class CartTest {
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		context.refresh();
		
		CartDAO cartDAO= (CartDAO) context.getBean("cartDAO");
		Cart cart= (Cart) context.getBean("cart");
		
		cart.setUserId("C103");
		cart.setProductName("C103");
		cart.setPrice(2500);
		cart.setQuantity(70);
		cart.setStatus('N');
		cart.setTotal(70);
		
		cartDAO.saveOrUpdate(cart);
	System.out.println("Record Inserted Successfully");
		
	}
}
