package Servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 创建一个BaseServlet类 Servlet implementation class BaseServlet
 */
@WebServlet("/BaseServlet")
public class BaseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 设置字符集
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/hrml;setchar=utf-8");
        try {
            // 获取请求的业务方法名称
            String op = request.getParameter("op");
            System.out.println("方法："+op);
            // 获取指定类的字节码对象【业务处理的servlet对象】
            // ?是代表 子servlet 不知道是谁继承自己
            Class<? extends BaseServlet> obj = this.getClass();
            // 通过类的字节码 得到方法的字节码对象【业务处理的方法】
            Method method = obj.getMethod(op, HttpServletRequest.class, HttpServletResponse.class);
            //执行方法
            method.invoke(this,request, response);

        }  catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }



}