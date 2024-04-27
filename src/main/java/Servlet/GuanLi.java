package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.GuanLiYuan;
import com.zktr.dao.YonHu;

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
		String curpagestring = request.getParameter("curpage");
		String pagesizestring = request.getParameter("pagesize");
		int curpage=0;
		int pagesize=0;
		if(curpagestring == null && pagesizestring == null) {
			curpage=1;
			pagesize=10;
	    }else {
	    	curpage= Integer.parseInt(curpagestring);
			pagesize= Integer.parseInt(pagesizestring);
	    }
		java.util.Map<String,Object> map = guan.cha(curpage,pagesize);
		java.util.List<GuanLiYuan> list = (List<GuanLiYuan>) map.get("list");
		request.getSession().setAttribute("total", map.get("total"));
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("guanli.jsp").forward(request, response);
		
	}

}
