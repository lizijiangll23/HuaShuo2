package com.zktr.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_users_messageDAO;
import com.zktr.dao.RndNumber;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class LodinguserServlet
 */
@WebServlet("/LodinguserServlet")
public class LodinguserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RndNumber rnd = new RndNumber();
	Hs_users_messageDAO msdao = new Hs_users_messageDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 验证码登录
		String lodingphone = request.getParameter("lodingphone");
		String code = request.getParameter("code");
		
		String upass = "";
		String head = "imgs/惠.jpg";
		String email = "";
		
		
		//密码
		String phoneorname = request.getParameter("phoneorname");
		String password = request.getParameter("password");
		List<Hs_users_message> list = msdao.serach(lodingphone);
		if (lodingphone!="") {
			if (list.size()>0) {
				request.getSession().setAttribute("user", list.get(0)); 
				response.sendRedirect("PersonalCenter/jsp/PeopleCenter.jsp");
			}else {
				if (msdao.regUser(upass, head, email, lodingphone)>0) {
					List<Hs_users_message> list2 = msdao.serach(lodingphone);
					request.getSession().setAttribute("user", list2.get(0)); 
					response.sendRedirect("PersonalCenter/jsp/PeopleCenter.jsp");
				}
				else {
					
				}
			}
		}else {
			
		}
		
	}

}
