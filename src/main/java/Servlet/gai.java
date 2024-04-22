package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class gai
 */
@WebServlet("/Rear-End/jsp/gai")
public class gai extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gon = request.getParameter("ggon");
		String mi = request.getParameter("gmi");
		String mi_1 = request.getParameter("gmi_1");
		String to = "../imgs/"+request.getParameter("gainame");
		com.zktr.dao.GuanLiDAO guan = new com.zktr.dao.GuanLiDAO();
			System.out.println(gon+"编号");
			System.out.println(guan.mima(gon)+"原密码");
			if(mi.equals(guan.mima(gon))) {
				guan.xiugai(mi_1,to , gon);
				System.out.println("密码正确");
			}else {
				System.out.println("密码错误");
			}
			
			request.getRequestDispatcher("guanli.jsp").forward(request, response);
	}

}
