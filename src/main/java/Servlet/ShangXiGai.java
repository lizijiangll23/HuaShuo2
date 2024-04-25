package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShangXiGai
 */
@WebServlet("/Rear-End/jsp/ShangXiGai")
public class ShangXiGai extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String cname = request.getParameter("cname");
		String yname = request.getParameter("yname");
		String xname = request.getParameter("xname");
		System.out.println(cname+"."+yname+"."+xname);
		shang.shangxigai(xname, cname, yname);
		String name = "c.cname = '"+xname+"'";
		java.util.List<com.zktr.dao.Shang> io = shang.mohu(name);
		java.util.List<com.zktr.dao.leibie> lei = shang.leibei();
		java.util.List<String> tu = shang.tup(name);
		request.getSession().setAttribute("io", io);
		request.getSession().setAttribute("lei", lei);
		request.getSession().setAttribute("tu", tu);
		for(String ii:tu) {
			System.out.println(ii);
		}
		String targetServletUrl = "Shang"; // 替换成目标Servlet的URL
        // 执行转发
		request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
