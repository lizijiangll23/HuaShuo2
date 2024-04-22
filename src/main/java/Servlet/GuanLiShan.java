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
@WebServlet("/Rear-End/jsp/GuanLiShan")
public class GuanLiShan extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.zktr.dao.GuanLiDAO guan = new com.zktr.dao.GuanLiDAO();
		int sid = Integer.parseInt(request.getParameter("adId"));
		guan.shan(sid);
		String targetServletUrl = "GuanLi"; // 替换成目标Servlet的URL
        // 执行转发
		request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
