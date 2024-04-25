package Servlet;

import com.zktr.dao.administratorsDao;
import com.zktr.entiy.HsAdministrators;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


/**
 * Servlet implementation class administratorsServlet
 */
@WebServlet("/administratorsServlet")
public class administratorsServlet extends BaseServlet {
	// 管理员dao
	administratorsDao admDao = new administratorsDao();

	// 查询所有后台人员
	public void selectAll(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException {
		HttpSession session = request.getSession();
		List<HsAdministrators> list = admDao.selectAll();
		session.setAttribute("administrators", list);
	}

	// 登录
	public void dengLu(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		HttpSession session = request.getSession();
		String name = request.getParameter("adm_Name");
		String pass = request.getParameter("adm_Pass");
		int i = 0;
		if (admDao.determine(name, pass)) {
			session.setAttribute("adm_Name", name);
			session.setAttribute("adm_Pass", pass);
			i = 1;
		}
		String x = "({'row':" + i;
		x = x + "})";
		System.out.println("name"+name+"pas"+pass);
		System.out.println(x+"1234");
		response.getWriter().write(x);
	}
	// 登录
	public void dengLuu(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		HttpSession session = request.getSession();
		String name = request.getParameter("adm_Name");
		int i = 0;
		if (admDao.determinee(name)) {
			session.setAttribute("adm_Name", name);
			i = 1;
		}
		String x = "({'row':" + i;
		x = x + "})";
		
		response.getWriter().write(x);
	}

	// 编辑个人信息
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("adm_Name");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		int row = admDao.updateAdm(name, pass, id);
		String x = "({'row':" + row;
		x = x + "})";
		response.getWriter().write(x);
	}

	// 退出
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect(request.getContextPath() + "/ldz/dengLuu.jsp");
	}

}
