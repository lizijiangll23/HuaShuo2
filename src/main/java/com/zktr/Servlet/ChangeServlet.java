package com.zktr.Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
 * Servlet implementation class ChangeServlet
 */
@WebServlet("/ChangeServlet")
public class ChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hs_addressesDAO hdao = new Hs_addressesDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
		int uid = user.getUid();
		List<Hs_addresses> list = hdao.serach(uid);
		request.getSession().setAttribute("list", list);
		// 获取地址数量
        int addressCount = list.size();
        System.out.println("数量:"+addressCount);
        // 构建包含地址数量的Map
        Map<String, Integer> resultMap = new HashMap<>();
        resultMap.put("addressCount", addressCount);

        // 将Map转换为JSON字符串
        Gson gson = new Gson();
        String jsonAddressCount = gson.toJson(resultMap);

        // 将JSON字符串发送回前端
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonAddressCount);
	}

}
