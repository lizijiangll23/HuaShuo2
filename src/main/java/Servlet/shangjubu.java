package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zktr.dao.GuanLiYuan;

/**
 * Servlet implementation class shangjubu
 */
@WebServlet("/Rear-End/jsp/shangjubu")
public class shangjubu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
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
		System.out.println(curpage+","+pagesize);
		java.util.Map<String,Object> map = shang.jubushua(curpage,pagesize);
		java.util.List<com.zktr.dao.Shangjubu> list = (List<com.zktr.dao.Shangjubu>) map.get("list");
		request.getSession().setAttribute("total", map.get("total"));
		request.getSession().setAttribute("lists", list);
		 String targetServletUrl = "spcha"; // 替换成目标Servlet的URL
	        // 执行转发
			request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
