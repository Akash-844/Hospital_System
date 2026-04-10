package com.user.servlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.Dbconnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			User u = new User(fullName, email, password);

			UserDao dao = new UserDao(Dbconnect.getConn());

			HttpSession session = req.getSession();

			boolean f = dao.Register(u);
			if (f) {

				session.setAttribute("sucMsg", "Register Succesfull");
				resp.sendRedirect("signup.jsp");
			} else {
				session.setAttribute("ErrorMsg", "Somthing went Wrong");
				resp.sendRedirect("signup.jsp");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
