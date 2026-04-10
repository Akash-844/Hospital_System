package com.Admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.Dbconnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		DoctorDao dao = new DoctorDao(Dbconnect.getConn());
		HttpSession session = req.getSession();

		if (dao.deleteDoctor(id)) {
			session.setAttribute("succMsg", "Doctor Delete Sucessfully");
			resp.sendRedirect("admin/view_doctor.jsp");
		} else {
			session.setAttribute("errorMsg", "Somthing Went Wrong at Server");
			resp.sendRedirect("admin/view_doctor.jsp");
		}
	}

}
