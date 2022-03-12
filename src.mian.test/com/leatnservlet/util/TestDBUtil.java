package com.leatnservlet.util;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;

import org.junit.jupiter.api.Test;

import com.product.util.DBUtil;

public class TestDBUtil {

	@Test
	public void testGetConnection() {
		Connection conn = DBUtil.getConnection();
		assertNotNull(conn);
	}
}
