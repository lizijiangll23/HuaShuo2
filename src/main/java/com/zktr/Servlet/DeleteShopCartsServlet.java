package com.zktr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_shoppingDAO;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class DeleteShopCartsServlet
 */
@WebServlet("/DeleteShopCartsServlet")
public class DeleteShopCartsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_shoppingDAO sdao = new Hs_shoppingDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		
		int gid = Integer.valueOf(request.getParameter("gid"));
		if (sdao.deleteShopCarts(gid, uid)>0) {
			response.sendRedirect("AgainLodeShopServlet");
		}else {
			String noo = "no";
			request.getSession().setAttribute("noo", noo);
			response.sendRedirect("Front/jsp/gouwuche.jsp");
		}
		
	}

}
