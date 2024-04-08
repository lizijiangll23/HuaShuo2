package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuanLiShan
 */
@WebServlet("/GuanLiShan2")
public class GuanLiShan2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.zktr.dao.GuanLiDAO guan = new com.zktr.dao.GuanLiDAO();
		int sid = Integer.parseInt(request.getParameter("id"));
		System.out.println(sid);
		guan.shan(sid);
		response.sendRedirect("Rear-End/jsp/guanli.jsp");
	}

}
