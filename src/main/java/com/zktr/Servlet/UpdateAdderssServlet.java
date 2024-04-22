package com.zktr.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Hs_addressesDAO;
import com.zktr.entiy.Hs_addresses;
import com.zktr.entiy.Hs_users_message;

/**
 * Servlet implementation class UpdateAdderssServlet
 */
@WebServlet("/UpdateAdderssServlet")
public class UpdateAdderssServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  Hs_addressesDAO hdao = new Hs_addressesDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int aid = Integer.valueOf(request.getParameter("aid"));
		String aname = request.getParameter("address_name");
		
		StringBuffer sb = new StringBuffer();

        String sheng = request.getParameter("sheng");
        String city = request.getParameter("city");
        String qu = request.getParameter("qu");
        String address = request.getParameter("address");

        address = address.replaceAll(sheng, "").replaceAll(city, "").replaceAll(qu, "");
        address = sb.append(sheng).append(city).append(qu).toString() + address;

        String aphone = request.getParameter("phone");
        
        Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
        int uid = user.getUid();

        List<Hs_addresses> list = hdao.serach(uid);

        String licenseChecked = request.getParameter("check");
        System.out.println("uid:" + uid);
        
        if (licenseChecked == null || !licenseChecked.equals("on")) {
            // 未选中则直接添加地址
            String def = "0";
            // 判断是否有数据或超过10条地址
            if (list.size() >= 0 && list.size() <= 9) {
                if (hdao.updateAddress(aname, aphone, address, def, uid ,aid) > 0) {
                	request.getSession().setAttribute("list", list);
                    response.sendRedirect("LodeUserServlet");
                } else {
                    response.sendRedirect("../PeopleCenter.jsp");
                }
            } else {
            	String no = "more";
                request.getSession().setAttribute("no", no);
                response.sendRedirect("c_adderss.jsp");
            }

        } else {
            String def = "1";
            // 判断是否有数据或超过10条地址
            if (list.size() >= 0 && list.size() <= 9) {
                hdao.updatedef(uid);
                if (hdao.updateAddress(aname, aphone, address, def, uid ,aid) > 0) {
                	request.getSession().setAttribute("list", list);
                    response.sendRedirect("LodeUserServlet");
                } else {
                    response.sendRedirect("../PeopleCenter.jsp");
                }
            } else {
            	String no = "more";
                request.getSession().setAttribute("no", no);
                response.sendRedirect("c_adderss.jsp");
            }
        }
	}

}
