package com.zztr.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zztr.dao.UserDAO;
import com.zztr.entity.User;

@WebServlet("/view/userlist")
public class UserListServlet extends HttpServlet {
	private UserDAO userDAO = new UserDAO();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> list = userDAO.queryAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("userlist.jsp")
			.forward(request, response);
	}
}
