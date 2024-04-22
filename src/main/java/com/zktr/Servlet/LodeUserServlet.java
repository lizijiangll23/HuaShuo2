package com.zktr.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_addressesDAO;
import com.zktr.entiy.Hs_addresses;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class LodeUserServlet
 */
@WebServlet("/LodeUserServlet")
public class LodeUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_addressesDAO hdao = new Hs_addressesDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		List<Hs_addresses> list = hdao.serach(uid);
		String yes = "yes";
		request.getSession().setAttribute("list", list);
		request.getSession().setAttribute("yes", yes);
		response.sendRedirect("PersonalCenter/jsp/manager/c_adderss.jsp");
	}

}
