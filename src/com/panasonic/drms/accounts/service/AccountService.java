package com.panasonic.drms.accounts.service;

import com.panasonic.drms.accounts.dao.UserAccountDAO;
import com.panasonic.drms.accounts.model.UserAccount;
import java.util.List;



public class AccountService {
	UserAccountDAO accountDAO;
	public List<UserAccount> getUserList()
	{		  	
		List<UserAccount> userList = accountDAO.getUserList();
		return userList;
	}
	
	/*
	 * Method Name: Create User
	 * Parameters:
	 */
	public String createUser(UserAccount uAccount){
		
		String userName = accountDAO.createUser(uAccount);
		
		return userName;
	}
	
	public UserAccountDAO getUserAccountDAO() {
		return accountDAO;
	}
	public void setUserAccountDAO(UserAccountDAO userAccountDAO) {
		this.accountDAO = userAccountDAO;
	}	
}

