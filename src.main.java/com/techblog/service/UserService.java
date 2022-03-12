package com.techblog.service;

import com.techblog.model.User;

public interface UserService {
	public void insertUser(User user) throws Exception;

	public User authenticate(String username, String password) throws Exception;
}
