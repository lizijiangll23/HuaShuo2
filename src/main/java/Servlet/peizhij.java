package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class peizhij
 */
@WebServlet("/Rear-End/jsp/peizhij")
public class peizhij extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String name = request.getParameter("name");
		java.util.List<String> list = shang.pei(name);
		System.out.println(list);
		request.getSession().setAttribute("list", list);
		request.getSession().setAttribute("name", name);
		request.getRequestDispatcher("peizhi.jsp").forward(request, response);
	}

}
