package com.zktr.Servlet;

import java.io.IOException;
import java.util.List;

import com.alibaba.fastjson2.JSONArray;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.SpinDAO;
import com.zktr.entiy.spdoucut;

/**
 * Servlet implementation class sousuo
 */
@WebServlet(urlPatterns = "/Front/jsp/sousuo")
public class sousuoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//SpinDAO sp = new SpinDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    String a = request.getParameter("sc");

//	    List<spdoucut> list = sp.spsjcx(a);
//	    System.out.println(list);

	    request.setAttribute("acc", a); 

	    request.getRequestDispatcher("../../Front/jsp/sousuo.jsp").forward(request, response);
	}



}
