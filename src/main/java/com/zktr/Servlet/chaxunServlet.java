package com.zktr.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.alibaba.fastjson2.JSON; // 修改导入路径
import com.alibaba.fastjson2.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.SpinDAO;
import com.zktr.entiy.spdoucut;

@WebServlet(urlPatterns = "/Frout/jsp/chaxun")
public class chaxunServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    SpinDAO sp = new SpinDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String va = request.getParameter("灵耀");
        List<spdoucut> list = sp.spsjcx(va);
        System.out.println(va);
        JSONArray gson = new JSONArray();
        String app = gson.toJSONString(list);
        
        response.setContentType("application/json");
        
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write(new String(app.getBytes("UTF-8"), "UTF-8"));
    }
}
