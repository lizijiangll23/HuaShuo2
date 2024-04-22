package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ming
 */
@WebServlet("/Rear-End/jsp/Ming")
public class Ming extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ming[] = request.getParameterValues("keywords");
		 String[] parts = ming[0].split(",");
	        // 创建一个 List 集合来存储字符串
	    List<String> numberList = new ArrayList<>();
	    for (String part : parts) {
                numberList.add(part); // 使用 trim() 去除任何前后空白字符
        }
		com.zktr.dao.yonhuDAO yon = new com.zktr.dao.yonhuDAO();
		java.util.List<com.zktr.dao.YonHu> list = yon.ming(numberList);
		request.getSession().setAttribute("list", list);
		request.getRequestDispatcher("yonhu.jsp").forward(request, response);
	}

}
