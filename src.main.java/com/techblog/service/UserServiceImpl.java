package com.techblog.service;

import com.techblog.dao.UserDAO;
import com.techblog.dao.UserDAOImpl;
import com.techblog.model.User;

public class UserServiceImpl implements UserService{

	private UserDAO userDAO = new UserDAOImpl();	
	
	@Override
	public void insertUser(User user) throws Exception{
		userDAO.inserUser(user);		
	}

	@Override
	public User authenticate(String username, String password) throws Exception {
		return userDAO.findUserByEmailAndPasswod(username, password);		
	}

}
