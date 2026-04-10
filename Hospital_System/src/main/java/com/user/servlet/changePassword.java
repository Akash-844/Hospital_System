package com.user.servlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.Dbconnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/userChangePassword")
public class changePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid = Integer.parseInt(req.getParameter("uid"));
		String oldPassword = req.getParameter("oldPassword");
		String newPassword = req.getParameter("newPassword");

		UserDao dao = new UserDao(Dbconnect.getConn());
		HttpSession session = req.getSession();

		if (dao.checkoldpassword(uid, oldPassword)) {
			if (dao.changePassword(uid, newPassword)) {
				session.setAttribute("succMsg", "Password Change Sucessfully");
				resp.sendRedirect("change_password.jsp");
			} else {
				session.setAttribute("erroMsg", "something Wrong on Server");
				resp.sendRedirect("change_password.jsp");
			}
		} else {
			session.setAttribute("erroMsg", "old Password Incorrect");
			resp.sendRedirect("change_password.jsp");
		}
	}

}
