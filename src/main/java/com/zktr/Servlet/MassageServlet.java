package com.zktr.Servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.zktr.dao.Hs_users_messageDAO;
import com.zktr.entiy.Hs_users_message;


/**
 * Servlet implementation class MassageServlet
 */
@WebServlet("/PersonalCenter/jsp/manager/MassageServlet")
@MultipartConfig()
public class MassageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    Hs_users_messageDAO hdao = new Hs_users_messageDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String uname = request.getParameter("user_name");
        String sex = request.getParameter("sex");
        String year = request.getParameter("year");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String email = request.getParameter("email");
        String licenseChecked = request.getParameter("check");
        Date birthday = null;
        String no = "";

        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String birthdays = year + "-" + month + "-" + day;
            birthday = sdf.parse(birthdays);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        if (uname == null || uname.isEmpty() || sex == null || sex.isEmpty() || year == null || year.isEmpty()
                || month == null || month.isEmpty() || day == null || day.isEmpty() || email == null || email.isEmpty()
                || birthday == null) {
            no = "no";
            request.getSession().setAttribute("no", no);
            response.sendRedirect("c_massage.jsp");
            return;
        }
        
        if (licenseChecked == null || !licenseChecked.equals("on")) {
            // 复选框未被选中
            // 执行相应的逻辑
            no = "check";
            request.getSession().setAttribute("no", no);
            response.sendRedirect("c_massage.jsp");
            return;
        }

        // 邮箱格式正则表达式
        String emailRegex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);

        // 判断邮箱格式是否正确
        if (!matcher.matches()) {
        	no = "email";
        	request.getSession().setAttribute("no", no);
            response.sendRedirect("c_massage.jsp");
            return;
        }

        Hs_users_message user = (Hs_users_message) request.getSession().getAttribute("user");
        int uid = user.getUid();

        Part part = request.getPart("photo");
        String fileName = part.getSubmittedFileName();
        String ext = "";

        if (fileName != null && !fileName.isEmpty()) {
            int dotIndex = fileName.lastIndexOf(".");
            if (dotIndex != -1) {
                ext = fileName.substring(dotIndex);
            }
        }

        String rndName = UUID.randomUUID().toString().toUpperCase();
        String lastName = rndName + ext;
        String root = this.getServletContext().getRealPath("");
        File images = new File(root, "images");

        if (!images.exists()) {
            images.mkdirs();
        }

        if (ext.isEmpty()) {
            if (!user.getHead().endsWith(".png")) {
                // 路径没有后缀且不以 ".png" 结尾，添加 ".png"
                user.setHead(user.getHead() + ".png");
            }
            System.out.println("加载完路径:" + user.getHead());
        }

        System.out.println("没加载没上传的路径:"+user.getHead());
        if (part != null && part.getSize() > 0) {
            if (hdao.changeCountMassage(uname, lastName, email, birthday, sex, uid) > 0) {
                String photo = root + "/images/" + lastName;
                part.write(photo);
                request.getSession().setAttribute("photo", lastName);
                System.out.println("修改数据库的1："+user.getHead());
                no = "yes";
            	request.getSession().setAttribute("no", no);
                response.sendRedirect("../../../Front/jsp/Loding.jsp");
            } else {
            	no = "no";
            	request.getSession().setAttribute("no", no);
                response.sendRedirect("c_massage.jsp");
            }
            
        }else {
            if (hdao.changeCountMassage(uname, user.getHead(), email, birthday, sex, uid) > 0) {
                System.out.println("修改数据库的2："+user.getHead());
                no = "yes";
            	request.getSession().setAttribute("no", no);
                response.sendRedirect("../../../Front/jsp/Loding.jsp");
            } else {
            	no = "no";
            	request.getSession().setAttribute("no", no);
                response.sendRedirect("c_massage.jsp");
            }
        }
    }
}
