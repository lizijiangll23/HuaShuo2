package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Shang
 */
@WebServlet("/Rear-End/jsp/Shang")
public class Shang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		java.util.List<com.zktr.dao.Shang> list = shang.cha();
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("ShangPi.jsp").forward(request, response);
	}

}
