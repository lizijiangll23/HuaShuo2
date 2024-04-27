package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class hsanpei
 */
@WebServlet("/Rear-End/jsp/hsanpei")
public class hsanpei extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang =new com.zktr.dao.ShangDAO();
		String name = request.getParameter("name");
		String m = request.getParameter("m");
		System.out.println(name+","+m);
		shang.peishan(name, m);
		 String targetServletUrl = "peizhij"; // 替换成目标Servlet的URL
	        // 执行转发
			request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
