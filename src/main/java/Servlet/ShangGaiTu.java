package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShangGaiTu
 */
@WebServlet("/Rear-End/jsp/ShangGaiTu")
public class ShangGaiTu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String src = request.getParameter("src");
		String names = request.getParameter("name");
		 String[] parts = src.split(",");

	        // 创建一个 List 集合来存储字符串
	        List<String> numberList = new ArrayList<>();

	        // 遍历字符串数组，将每个元素添加到 List 中
	        for (String part : parts) {
	        	shang.xin("../imgs/"+part, names);
	           
	        }
	        String name = "c.cname = '"+names+"'";
			java.util.List<com.zktr.dao.Shang> io = shang.mohu(name);
			java.util.List<com.zktr.dao.leibie> lei = shang.leibei();
			java.util.List<String> tu = shang.tup(name);
			request.getSession().setAttribute("io", io);
			request.getSession().setAttribute("lei", lei);
			request.getSession().setAttribute("tu", tu);
			for(String ii:tu) {
				System.out.println(ii);
			}
			String targetServletUrl = "Shang"; // 替换成目标Servlet的URL
	        // 执行转发
			request.getRequestDispatcher(targetServletUrl).forward(request, response);
	       
	}

}
