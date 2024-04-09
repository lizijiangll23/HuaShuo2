package com.zktr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_users_messageDAO;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class SetPassServlet
 */
@WebServlet("/SetPassServlet")
public class SetPassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_users_messageDAO hsdao = new Hs_users_messageDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mycode = request.getParameter("code");
		String pass = request.getParameter("pass");
		String yespass = request.getParameter("yespass");
		String pd = "";
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		
		
		String code =  (String) request.getSession().getAttribute("code");
		
		if (code.equals(mycode)) {
			if (pass.equals(yespass)) {
				if (hsdao.update(yespass, uid)>0) {
					pd = "成功";
					request.getSession().setAttribute("pd", pd);
					response.sendRedirect("PersonalCenter/jsp/manager/setPass.jsp");
				}
			} else {
				pd = "失败";
				request.getSession().setAttribute("pd", pd);
				response.sendRedirect("PersonalCenter/jsp/manager/setPass.jsp");
			}
		} else {
			pd = "失败";
			request.getSession().setAttribute("pd", pd);
			response.sendRedirect("PersonalCenter/jsp/manager/setPass.jsp");
		}
	}

}
