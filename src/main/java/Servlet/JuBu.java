package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JuBu
 */
@WebServlet("/Rear-End/jsp/JuBu")
public class JuBu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.yonhuDAO yon = new com.zktr.dao.yonhuDAO();
		String id = request.getParameter("userId");
		java.util.List<com.zktr.dao.YonHu> list = yon.jubu(id);
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("xingxi.jsp").forward(request, response);
	}

}
