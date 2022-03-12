package com.techblog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techblog.util.Message;
import com.techblog.util.MessageHelper;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=  req.getSession(false);
		
		session.removeAttribute("user");
		

		Message message = new Message();
		MessageHelper.setMessage(message, "Logout Successful!", "success", "alert-success");
		session.setAttribute("message", message);

		resp.sendRedirect("login.jsp");
	}
}
