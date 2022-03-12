package com.techblog.util;

import java.sql.Connection;
import java.sql.SQLException;

public class DBUtilTest {

	public static void main(String[] args) throws SQLException {
		Connection conn = DBUtil.getConnection();
		
		if(conn.isValid(0)) {
			System.out.println("Connection established Successfully");
		}

	}

}
