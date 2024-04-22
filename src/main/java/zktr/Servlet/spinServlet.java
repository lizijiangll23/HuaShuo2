package zktr.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import com.alibaba.fastjson2.JSONArray;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zktr.dao.SpinDAO;
import zktr.entiy.spdoucut;

@WebServlet(urlPatterns = "/Front/jsp/sping")
public class spinServlet extends HttpServlet {
    private SpinDAO sp = new SpinDAO();
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        
        List<spdoucut> list = sp.spsjcx("灵耀");
        
        JSONArray gson = new JSONArray();
        String app = gson.toJSONString(list);
        
        response.setContentType("application/json");
        
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write(new String(app.getBytes("UTF-8"), "UTF-8"));

    }
}
