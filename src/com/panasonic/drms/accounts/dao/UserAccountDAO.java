package com.panasonic.drms.accounts.dao;

import com.panasonic.drms.accounts.model.UserAccount;
import java.util.List;

public interface UserAccountDAO {
	public List<UserAccount> getUserList();
	public String createUser(UserAccount uAccount);
}
