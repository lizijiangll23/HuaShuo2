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
        response.setContentType("application/json"); // 设置响应内容类型为JSON
        response.setCharacterEncoding("UTF-8");
        
        String acc = request.getParameter("acc");
        List<spdoucut> list = sp.spsjcx(acc);

        // 将产品信息列表转换为JSON格式

        JSONArray gson = new JSONArray();
        String json = gson.toJSONString(list);

        // 将JSON数据发送回客户端
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }
}
