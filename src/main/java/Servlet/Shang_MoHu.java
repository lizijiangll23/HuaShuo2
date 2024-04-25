package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Shang_MoHu
 */
@WebServlet("/Rear-End/jsp/Shang_MoHu")
public class Shang_MoHu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tiao =request.getParameter("tiao");
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		List<com.zktr.dao.Shang> list = shang.mohu(tiao);
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("ShangPi.jsp").forward(request, response);
	}

}
