package com.niit.apple;

public class LoginDAO {

	public boolean isValidUser(String userId, String password) 
	{
		// TODO Auto-generated method stub

		if(userId.equals(password)){
			return true;
		}
		else{
			return false;
		}
	}
}
