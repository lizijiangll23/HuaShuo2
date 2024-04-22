package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShunXu
 */
@WebServlet("/Rear-End/jsp/ShunXu")
public class ShunXu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.LunDAO lun = new com.zktr.dao.LunDAO();
		String shun = request.getParameter("src");
		String xuhao = request.getParameter("xuhao");
		System.out.println(shun+"aa");
		System.out.println(xuhao+"bb");
		lun.shunxu(xuhao,shun);
		// 获取目标Servlet的URL
        String targetServletUrl = "LunTu"; // 替换成目标Servlet的URL

        // 执行转发
        request.getRequestDispatcher(targetServletUrl).forward(request, response);

	}

}
