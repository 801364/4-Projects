package com.techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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

@WebServlet("/register")
@MultipartConfig
public class RegistrationController extends HttpServlet {

	private static final long serialVersionUID = 8609644738473528445L;

	UserService userService = new UserServiceImpl();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter printWriter = resp.getWriter();
		String tc = req.getParameter("tc");

		HttpSession session = req.getSession();

		if (tc == null) {
			Message message = new Message();
			MessageHelper.setMessage(message, "Please accept terms and condition", "error", "alert-danger");
			session.setAttribute("message", message);
			printWriter.println("Please accept terms and condition");
		} else {
			boolean isAnyError = false;
			String username = req.getParameter("username");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String gender = req.getParameter("gender");
			String about = req.getParameter("about");

			User user = new User();
			user.setName(username);
			user.setEmail(email);
			user.setPassword(password);
			user.setGender(gender);
			user.setAbout(about);

			try {
				userService.insertUser(user);

				Message message = new Message();
				MessageHelper.setMessage(message, "Registered Successfully", "success", "alert-success");
				session.setAttribute("message", message);
				printWriter.println("Done");

			} catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
				isAnyError = true;
			}

			if (isAnyError) {
				Message message = new Message();
				MessageHelper.setMessage(message, "Something went wrong! Please try again.", "error", "alert-danger");
				session.setAttribute("message", message);
				printWriter.println("Error");
			}
		}

	}
}
