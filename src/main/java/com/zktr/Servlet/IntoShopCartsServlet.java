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
 * Servlet implementation class IntoShopCartsServlet
 */
@WebServlet("/IntoShopCartsServlet")
public class IntoShopCartsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_shoppingDAO sdao = new Hs_shoppingDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
        int uid = user.getUid();
        
		String[] gides = request.getParameterValues("gid");
		if (gides != null) {
		  for (String gids : gides) {
			 int gid = Integer.valueOf(gids);
			 sdao.updateShopStatus(uid, gid);
		  }
		  response.sendRedirect("AgainLodeOrderMassageServlet");
		}
	}

}
