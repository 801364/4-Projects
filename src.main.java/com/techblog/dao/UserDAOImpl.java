package com.techblog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.techblog.model.User;
import com.techblog.util.DBUtil;
import com.techblog.util.SQLHelper;

public class UserDAOImpl implements UserDAO {

	private Connection connection = DBUtil.getConnection();

	@Override
	public void inserUser(User user) throws Exception {
		try (PreparedStatement psmt = connection.prepareStatement(SQLHelper.INSERT_USER)) {
			psmt.setString(1, user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getGender());
			psmt.setString(5, user.getAbout());

			int row = psmt.executeUpdate();

			if (row == 1) {
				System.out.println("User data inserted Successfully!");
			}

		} catch (Exception e) {
			throw e;
		}
	}

	@Override
	public User findUserByEmailAndPasswod(String email, String password) throws Exception {
		User user = null;
		
		try (PreparedStatement psmt = connection.prepareStatement(SQLHelper.FIND_USER_BY_EMAIL_AND_PASSWORD)) {
			psmt.setString(1, email);
			psmt.setString(2, password);

			ResultSet rs = psmt.executeQuery();

			if (rs == null) {
				return user;
			} else if (rs.next()) {
                 user = new User();
                 user.setId(rs.getInt("id"));
                 user.setName(rs.getString("name"));
                 user.setEmail(rs.getString("email"));
                 user.setPassword(rs.getString("password"));
                 user.setGender(rs.getString("gender"));
                 user.setAbout(rs.getString("about"));
                 user.setRdate(rs.getTimestamp("rdate"));
                 user.setProfile(rs.getString("profile"));
			}

		} catch (Exception e) {
			throw e;
		}
		return user;
	}
}
