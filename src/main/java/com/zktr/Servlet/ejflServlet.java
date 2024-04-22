package com.zktr.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson2.JSONArray;
import com.zktr.dao.flei;
import com.zktr.entiy.zqb;

/**
 * Servlet implementation class ejflServlet
 */
@WebServlet(urlPatterns = "/Front/jsp/ejfl")
public class ejflServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text = request.getParameter("text"); // 获取发送来的文本
        flei fl = new flei();
        int id =fl.selectzfl(text);
        List<zqb> list = fl.selectqb(id);
		String array = JSONArray.toJSONString(list);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(array);
    }

}
