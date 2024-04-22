package com.zktr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_orderDAO;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class SubmitOrderServlet
 */
@WebServlet("/SubmitOrderServlet")
public class SubmitOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_orderDAO odao = new Hs_orderDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
        int uid = user.getUid();
		 // 获取订单数量
	    int numOfOrders = Integer.valueOf(request.getParameter("a")); // 假设使用imagePath1参数的长度作为订单数量
	    int a = 0;
	    for (int i = 0; i < numOfOrders; i++) {
	        // 根据索引获取带有索引的参数值
			 String ophoto = request.getParameter("imagePath" + i); 
			 String details = request.getParameter("details" + i);
			 String uprice = request.getParameter("uprice" + i);
			 int counts = Integer.valueOf(request.getParameter("counts" + i)); 
			 // 假设subtotal是包含了"￥"符号的字符串
			 String subtotal = request.getParameter("subtotal" + i);

			 // 去除 "￥" 符号
			 subtotal = subtotal.replace("￥", "");

			 // 提取纯数字部分
			 String pureNumeric = subtotal.substring(subtotal.indexOf("￥") + 1);
			 
			 System.out.println("图片路径:"+ophoto+"详情："+details+"单价:"+uprice+"数量:"+counts+"小计:"+pureNumeric);
	        
			 a = odao.addOrderMassager(details, pureNumeric,uid,ophoto,counts);
	    }
	    
	    //更改跳转位置
		if (a>0) {
			response.sendRedirect("PersonalCenter/jsp/order/c_order.jsp");
		}else {
			response.sendRedirect("Front/jsp/gouwuche.jsp");
		}
		
    
	}

}
