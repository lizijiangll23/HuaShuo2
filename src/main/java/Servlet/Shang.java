package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Shang
 */
@WebServlet("/Rear-End/jsp/Shang")
public class Shang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String curpagestring = request.getParameter("curpage");
		String pagesizestring = request.getParameter("pagesize");
		int curpage=0;
		int pagesize=0;
		if(curpagestring == null && pagesizestring == null) {
			curpage=1;
			pagesize=9;
	    }else {
	    	curpage= Integer.parseInt(curpagestring);
			pagesize= Integer.parseInt(pagesizestring);
	    }
		java.util.Map<String,Object> map = shang.cha(curpage,pagesize);
		java.util.List<Shang> list = (List<Shang>) map.get("list");
		request.getSession().setAttribute("list", list);
		request.getSession().setAttribute("total", map.get("total"));
		request.getRequestDispatcher("ShangPi.jsp").forward(request, response);
	}

}
