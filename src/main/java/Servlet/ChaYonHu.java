package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.GuanLiYuan;

/**
 * Servlet implementation class ChaYonHu
 */
@WebServlet("/Rear-End/jsp/ChaYonHu")
public class ChaYonHu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.yonhuDAO yonhu = new com.zktr.dao.yonhuDAO();
		java.util.List<com.zktr.dao.YonHu> list = yonhu.chaxun();
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("yonhu.jsp").forward(request, response);
	}

}
