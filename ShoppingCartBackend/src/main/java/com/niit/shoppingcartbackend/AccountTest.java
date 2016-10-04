package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.AccountDAO;
import com.niit.shoppingcartbackend.model.Account;

public class AccountTest {
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		context.refresh();
		
		AccountDAO accountDAO= (AccountDAO) context.getBean("accountDAO");
		Account account= (Account) context.getBean("account");
		
		account.setUserID("A102");
		account.setAccountNumber("AXYZ102");
		account.setBalance(45000);
		
		accountDAO.saveOrUpdate(account);
	System.out.println("Record Inserted Successfully");
		
	}
}
