package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Dindancha
 */
@WebServlet("/Rear-End/jsp/Dindancha")
public class Dindancha extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.DinDanDAO ding = new com.zktr.dao.DinDanDAO();
		java.util.List<com.zktr.dao.DingDan> list = ding.cha();
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("shuju.jsp").forward(request, response);
	}

}
