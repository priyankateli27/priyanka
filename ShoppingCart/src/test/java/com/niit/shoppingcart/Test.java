package com.niit.shoppingcart;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
public class Test {

	public static void main(String[] args) {
	
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		Category c= (Category) context.getBean("category");
		
		c.setId("101");
		c.setName("mobile");
		
		System.out.println(  c.getId());
		System.out.println(  c.getName());
		
				
		System.out.println("Category is created");
		
	}
}
