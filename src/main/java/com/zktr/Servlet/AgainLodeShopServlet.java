package com.zktr.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_shoppingDAO;
import com.zktr.entiy.Hs_shopping;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class AgainLodeShopServlet
 */
@WebServlet("/AgainLodeShopServlet")
public class AgainLodeShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_shoppingDAO sdao = new Hs_shoppingDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		List<Hs_shopping> shop = sdao.serach(uid);
		request.getSession().setAttribute("shop",shop);
		response.sendRedirect("Front/jsp/gouwuche.jsp");
	}

}
