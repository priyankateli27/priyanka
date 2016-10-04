package com.niit.shoppingcartbackend.dao;

import com.niit.shoppingcartbackend.model.Account;

public interface AccountDAO {
	public Account get(String id);
	public boolean trasfer(String id, int amount);
	public void saveOrUpdate(Account account);
	public boolean trasfer(String userID, Object totalAmount);


}
