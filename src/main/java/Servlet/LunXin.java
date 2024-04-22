package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LunXin
 */
@WebServlet("/Rear-End/jsp/LunXin")
public class LunXin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.LunDAO lun = new com.zktr.dao.LunDAO();
		String src = request.getParameter("src");
		lun.xin("../imgs/"+src);
		// 获取目标Servlet的URL
        String targetServletUrl = "LunTu"; // 替换成目标Servlet的URL

        // 执行转发
        request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
