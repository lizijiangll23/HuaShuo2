package com.zktr.Servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson2.JSONArray;
import com.zktr.dao.flei;
import com.zktr.entiy.fenlei;

@WebServlet(urlPatterns = "/Front/jsp/fenlei")
public class erjiServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    flei fl = new flei();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        List<fenlei>  list = fl.select();
		String array = JSONArray.toJSONString(list);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(array);
    }
}
