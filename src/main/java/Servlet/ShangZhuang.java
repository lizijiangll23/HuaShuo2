package Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShangZhuang
 */
@WebServlet("/Rear-End/jsp/ShangZhuang")
public class ShangZhuang extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		com.zktr.dao.ShangDAO shang = new com.zktr.dao.ShangDAO();
		String zhuang = request.getParameter("zhuang");
		String selectedProductNames[] = request.getParameterValues("selectedProductNames");
        // 使用 split 方法按逗号分割字符串
        String[] names = selectedProductNames[0].split(",");

        // 创建一个 List 集合来存储字符串
        List<String> numberList = new ArrayList<>();

        // 遍历字符串数组，将每个元素添加到 List 中
        for (String part : names) {
            // 检查 part 是否为空或者全是空格
            if (part != null && !part.trim().isEmpty()) {
                numberList.add(part.trim()); // 使用 trim() 去除任何前后空白字符
            }
        }

        for (String ii : numberList) {
            shang.xiugai(zhuang, ii);
        }
        String targetServletUrl = "Shang"; // 替换成目标Servlet的URL
        // 执行转发
		request.getRequestDispatcher(targetServletUrl).forward(request, response);
	}

}
