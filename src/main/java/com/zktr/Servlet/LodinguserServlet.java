package com.zktr.Servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_addressesDAO;
import com.zktr.dao.Hs_shoppingDAO;
import com.zktr.dao.Hs_users_messageDAO;
import com.zktr.dao.RndNumber;
import com.zktr.entiy.Hs_addresses;
import com.zktr.entiy.Hs_shopping;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class LodinguserServlet
 */
@WebServlet("/LodinguserServlet")
public class LodinguserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RndNumber rnd = new RndNumber();
	Hs_users_messageDAO msdao = new Hs_users_messageDAO();
	Hs_addressesDAO hdao = new Hs_addressesDAO();
	Hs_shoppingDAO sdao = new Hs_shoppingDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 验证码登录
		String lodingphone = request.getParameter("lodingphone");
		String code = request.getParameter("code");
		
		String upass = "";
		String head = "惠.jpg";
		String email = "";
		Date date = Date.valueOf("2024-4-11");
		String sex = "暂无";
		
		//密码
		String phoneorname = request.getParameter("phoneorname");
		String password = request.getParameter("password");
		
		List<Hs_users_message> list = msdao.serach(lodingphone);
		List<Hs_users_message> passlist = msdao.serach(password,phoneorname);
		if (lodingphone!="") {
			if (list.size()>0) {
				String no = "";
				request.getSession().setAttribute("user", list.get(0)); 
				response.sendRedirect("PersonalCenter/jsp/PeopleCenter.jsp");
			}else {
				if (msdao.regUser(upass, head, email, lodingphone,date,sex)>0) {
					String no = "";
					List<Hs_users_message> list2 = msdao.serach(lodingphone);
					request.getSession().setAttribute("user", list2.get(0)); 
					
					Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
					int uid = user.getUid();
					List<Hs_addresses> lists = hdao.serach(uid);
					request.getSession().setAttribute("list",lists);
					
					List<Hs_shopping> shop = sdao.serach(uid);
					request.getSession().setAttribute("shop",shop);
					
					response.sendRedirect("PersonalCenter/jsp/PeopleCenter.jsp");
				}
				else {
					response.sendRedirect("Front/jsp/Loding.jsp");
				}
			}
		}else {
			if (passlist.size()>0) {
				String no = "";
				request.getSession().setAttribute("user",passlist.get(0));
				
				Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
				int uid = user.getUid();
				List<Hs_addresses> lists = hdao.serach(uid);
				request.getSession().setAttribute("list",lists);
				
				List<Hs_shopping> shop = sdao.serach(uid);
				request.getSession().setAttribute("shop",shop);
				
				
				response.sendRedirect("PersonalCenter/jsp/PeopleCenter.jsp");
			}else {
				String no = "no";
				request.getSession().setAttribute("no",no);
				response.sendRedirect("Front/jsp/Loding.jsp");
			}
		}
		
	}

}
