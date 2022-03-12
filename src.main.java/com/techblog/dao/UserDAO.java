package com.techblog.dao;

import com.techblog.model.User;

public interface UserDAO {
	
	public void inserUser(User user) throws Exception ;
	
	public User findUserByEmailAndPasswod(String email, String password) throws Exception ;

}
