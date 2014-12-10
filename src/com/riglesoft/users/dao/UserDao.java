package com.riglesoft.users.dao;

import com.riglesoft.users.model.User;

public interface UserDao {

	
	User findByUserName(String username);

}