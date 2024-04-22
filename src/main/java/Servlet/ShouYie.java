package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShouYie
 */
@WebServlet("/Rear-End/jsp/ShouYie")
public class ShouYie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.Din din = new com.zktr.dao.Din();
		java.util.List<com.zktr.dao.DinDAO> dindan = din.cha();
		java.util.List<com.zktr.dao.denglu> rizhi = din.rizhi();
		request.getSession().setAttribute("rizhi", rizhi);
		request.getSession().setAttribute("dindan", dindan);
		request.getRequestDispatcher("NewFile.jsp").forward(request, response);
	}

}
