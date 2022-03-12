package com.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.product.model.Product;
import com.product.util.DBUtil;
import com.product.util.SQLHelper;

public class ProductDAOImpl implements ProductDAO {

	private Connection connection = DBUtil.getConnection();

	@Override
	public int insert(Product product) {
		try {
			PreparedStatement ps = connection.prepareStatement(SQLHelper.PRODUCT_INSERT);

			ps.setString(1, product.getProductName());
			ps.setString(2, product.getProductDescription());
			ps.setDouble(3, product.getProductPrice());
			ps.setString(4, product.getProductVendor());

			int i = ps.executeUpdate();

			if (i == 1) {
				System.out.println("Product Inserted Successfully");
				return i;
			}			

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		System.out.println("Some issue with Insertion! Plese contact with System Administrator");
		return 0;

	}

}
