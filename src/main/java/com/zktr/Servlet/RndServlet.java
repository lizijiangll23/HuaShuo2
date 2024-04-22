package com.zktr.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RndServlet
 */
@WebServlet("/RndServlet")
public class RndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // 生成随机数
        int randomNumber = generateValidateCode();

        // 将随机数转换为字符串
        String validateCode = String.valueOf(randomNumber);

        // 设置响应内容类型为文本
        response.setContentType("text/plain");

        // 将生成的随机数作为响应返回
        PrintWriter out = response.getWriter();
        out.print(validateCode);
        out.flush();
	}
	private int generateValidateCode() {
        Random random = new Random();
        int randomNumber = random.nextInt(900000) + 100000; // 生成100000到999999之间的随机数
        return randomNumber;
    }
}
