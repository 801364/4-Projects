package com.techblog.util;

public class SQLHelper {

public static final String INSERT_USER = "INSERT INTO user (`name`, `email`, `password`, `gender`, `about`) VALUES (?,?,?,?,?)";	
public static final String FIND_USER_BY_EMAIL_AND_PASSWORD = "select * from user where email = ? and password = ?";	
	
}
