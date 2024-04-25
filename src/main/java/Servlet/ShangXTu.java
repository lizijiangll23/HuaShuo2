package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShangXTu
 */
@WebServlet("/Rear-End/jsp/ShangXTu")
public class ShangXTu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String name = request.getParameter("name");
		String lujing = request.getParameter("src");
		shang.shan(lujing, name);
		String names = "c.cname = '"+name+"'";
		java.util.List<com.zktr.dao.Shang> io = shang.mohu(names);
		java.util.List<com.zktr.dao.leibie> lei = shang.leibei();
		java.util.List<String> tu = shang.tup(names);
		request.getSession().setAttribute("io", io);
		request.getSession().setAttribute("lei", lei);
		request.getSession().setAttribute("tu", tu);
		for(String ii:tu) {
			System.out.println(ii);
		}
		request.getRequestDispatcher("ShangPi.jsp").forward(request, response);
	}

}
