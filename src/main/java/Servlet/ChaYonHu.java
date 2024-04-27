package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.GuanLiYuan;
import com.zktr.dao.YonHu;

/**
 * Servlet implementation class ChaYonHu
 */
@WebServlet("/Rear-End/jsp/ChaYonHu")
public class ChaYonHu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.yonhuDAO yonhu = new com.zktr.dao.yonhuDAO();
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
		java.util.Map<String,Object> map = yonhu.chaxun(curpage,pagesize);
		java.util.List<com.zktr.dao.YonHu> list = (List<YonHu>) map.get("list");
		request.getSession().setAttribute("list", list);
		request.getSession().setAttribute("total", map.get("total"));
		request.getRequestDispatcher("yonhu.jsp").forward(request, response);
	}

}
