package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LunTu
 */
@WebServlet("/Rear-End/jsp/LunTu")
public class LunTu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.LunDAO lun = new com.zktr.dao.LunDAO();
		List<com.zktr.dao.Lun> list = lun.cha();
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("LunBo.jsp").forward(request, response);
	}

}
