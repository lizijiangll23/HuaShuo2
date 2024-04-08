package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class que
 */
@WebServlet("/Rear-End/jsp/que")
public class que extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.GuanLiDAO guan = new com.zktr.dao.GuanLiDAO();
		String id = request.getParameter("gon");
		String name = request.getParameter("name");
		String zhang = request.getParameter("zhang");
		String mi = request.getParameter("mi");
		String to = request.getParameter("xuan");
		String mi_1 = request.getParameter("mi_1");
		if(mi_1.equals(mi_1)) {
			int sid = Integer.parseInt(id);
			System.out.println(sid);
			guan.xin(sid, name, zhang, mi,to);
			request.setAttribute("chen", "添加成功");
			request.getRequestDispatcher("guanli.jsp").forward(request, response);
		}else {
			request.setAttribute("chen", "添加失败");
			response.sendRedirect("guanli.jsp");
		}
	}

}
