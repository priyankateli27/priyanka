package com.niit.shoppingcartbackend;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbackend.dao.SupplierDAO;
import com.niit.shoppingcartbackend.model.Category;
import com.niit.shoppingcartbackend.model.Supplier;

public class SupplierTest {
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcartbackend");
		context.refresh();
		
		SupplierDAO supplierDAO= (SupplierDAO) context.getBean("supplierDAO");
		Supplier supplier= (Supplier) context.getBean("supplier");
		
		supplier.setId("SUP105");
		supplier.setName("SUPName105");
		supplier.setAddress("SUPDesc105");
		
		supplierDAO.saveOrUpdate(supplier);
	System.out.println("successfully record inserted");
	
	
	System.out.println("No of supplier" + supplierDAO.list().size());
		
	}
}
