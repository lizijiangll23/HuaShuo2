package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.GuanLiYuan;

import java.util.List;

/**
 * Servlet implementation class GuanLi
 */
@WebServlet("/Rear-End/jsp/GuanLi")
public class GuanLi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.GuanLiDAO guan = new com.zktr.dao.GuanLiDAO();
		Object ad_id = (int)guan.bian()+1;
		request.getSession().setAttribute("id", "00"+ad_id);
		java.util.List<GuanLiYuan> list = guan.cha();
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("guanli.jsp").forward(request, response);;
		
	}

}
