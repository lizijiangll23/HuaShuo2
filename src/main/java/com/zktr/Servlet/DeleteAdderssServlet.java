package com.zktr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_addressesDAO;
import com.zktr.dao.Hs_users_messageDAO;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class DeleteAdderssServlet
 */
@WebServlet("/DeleteAdderssServlet")
public class DeleteAdderssServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_addressesDAO hdao = new Hs_addressesDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		String aids = request.getParameter("aid");
		int aid = Integer.valueOf(aids);
		
		if (hdao.deleteAdderss(uid,aid)>0) {
			response.sendRedirect("LodeUserServlet");
		}else {
			response.sendRedirect("PersonalCenter/jsp/PeopleCenter.jsp");
		}
			
	}

}
