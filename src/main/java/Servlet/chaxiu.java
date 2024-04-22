package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.GuanLiYuan;

/**
 * Servlet implementation class chaxiu
 */
@WebServlet("/Rear-End/jsp/chaxiu")
public class chaxiu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		com.zktr.dao.GuanLiDAO guan = new com.zktr.dao.GuanLiDAO();
		java.util.List<GuanLiYuan> list = guan.chadan(id);
		request.getSession().setAttribute("slist", list);
		request.getRequestDispatcher("guanli.jsp").forward(request, response);
	}

}
