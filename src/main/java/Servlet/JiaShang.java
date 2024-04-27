package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JiaShang
 */
@WebServlet("/Rear-End/jsp/JiaShang")
public class JiaShang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.JiaShangDAO jai = new com.zktr.dao.JiaShangDAO();
		String name = request.getParameter("name");
		String xin = request.getParameter("xin");
		String peizhi = request.getParameter("peizhi");
		String fuwu = request.getParameter("fuwu");
		String src = request.getParameter("src");
		if(name != null) {
		
		jai.jiashang(name, xin);
		 String[] peizhis = peizhi.split(",");
	        for (String part : peizhis) {
	        	jai.peizhi(part, name);
	        }
	        String[] fuwus = fuwu.split(",");
	        for (String fw : fuwus) {
	        	jai.fuwu(fw, name);
	        }
	        String[] srcs = src.split(",");
	        for (String srcc : srcs) {
	        	jai.tup(srcc, name);
	        }
	    	name = null;
		}else {
			System.out.println("111");
		}
		String targetServletUrl = "spcha"; // 替换成目标Servlet的URL
        // 执行转发
		request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
