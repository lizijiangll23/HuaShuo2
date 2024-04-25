package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.Shang;

/**
 * Servlet implementation class ShangZhao
 */
@WebServlet("/Rear-End/jsp/ShangZhao")
public class ShangZhao extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String name = "c.cname = '"+request.getParameter("name")+"'";
		java.util.List<com.zktr.dao.Shang> io = shang.mohu(name);
		java.util.List<com.zktr.dao.leibie> lei = shang.leibei();
		java.util.List<String> tu = shang.tup(name);
		request.getSession().setAttribute("io", io);
		request.getSession().setAttribute("lei", lei);
		request.getSession().setAttribute("tu", tu);
		for(String ii:tu) {
			System.out.println(ii);
		}
		request.getRequestDispatcher("ShangPi.jsp").forward(request, response);
	}

}
