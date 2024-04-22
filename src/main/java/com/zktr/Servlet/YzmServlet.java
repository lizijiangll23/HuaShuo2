package com.zktr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.aliyun.Yzm;
import com.zktr.dao.RndNumber;

/**
 * Servlet implementation class YzmServlet
 */
@WebServlet("/YzmServlet")
public class YzmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Yzm yzm = new Yzm();
	RndNumber rnd = new RndNumber();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone = request.getParameter("phone");
		try {
//			yzm.sendMessage(phone);
			String code = rnd.generateValidateCode();
			System.out.println(code);
			request.getSession().setAttribute("code", code);
			response.sendRedirect("PersonalCenter/jsp/manager/setPass.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
