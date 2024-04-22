package com.zktr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_users_messageDAO;

/**
 * Servlet implementation class LogOffServlet
 */
@WebServlet("/LogOffServlet")
public class LogOffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_users_messageDAO hdao = new Hs_users_messageDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone = request.getParameter("phoneNumber");
		if (hdao.LogOff(phone)>0) {
			response.sendRedirect("Front/jsp/Loding.jsp");
		} else {
			response.sendRedirect("PersonalCenter/jsp/manager/c_safe.jsp");
		}
	}

}
