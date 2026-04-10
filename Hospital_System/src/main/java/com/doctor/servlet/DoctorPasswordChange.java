package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.Dbconnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctChangePassord")
public class DoctorPasswordChange extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid = Integer.parseInt(req.getParameter("uid"));
		String oldPassword = req.getParameter("oldPassword");
		String newPassword = req.getParameter("newPassword");

		DoctorDao dao = new DoctorDao(Dbconnect.getConn());
		HttpSession session = req.getSession();

		if (dao.checkoldpassword(uid, oldPassword)) {
			if (dao.changePassword(uid, newPassword)) {
				session.setAttribute("succMsg", "Password Change Sucessfully");
				resp.sendRedirect("doctor/edit_profile.jsp");
			} else {
				session.setAttribute("erroMsg", "something Wrong on Server");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
		} else {
			session.setAttribute("erroMsg", "old Password Incorrect");
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
	}

}
