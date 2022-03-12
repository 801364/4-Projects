package com.techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techblog.model.User;
import com.techblog.service.UserService;
import com.techblog.service.UserServiceImpl;
import com.techblog.util.Message;
import com.techblog.util.MessageHelper;

@WebServlet("/login")
@MultipartConfig
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	UserService userService = new UserServiceImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		try {
			User user = userService.authenticate(email, password);

			if (user != null) {
				session.setAttribute("user", user);
				pw.write("success");
			} else {
				Message message = new Message();
				MessageHelper.setMessage(message, "Username/password is invalid", "error",
						"alert-danger");
				session.setAttribute("message", message);
				pw.write("fail");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
