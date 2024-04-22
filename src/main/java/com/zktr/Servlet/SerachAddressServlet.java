package com.zktr.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.zktr.dao.Hs_addressesDAO;
import com.zktr.entiy.Hs_addresses;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class SerachAddressServlet
 */
@WebServlet("/SerachAddressServlet")
public class SerachAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_addressesDAO hdao = new Hs_addressesDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		List<Hs_addresses> list = hdao.serach(uid);
		// 将list转换为JSON字符串
        String json = new Gson().toJson(list);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
		
	}

}
