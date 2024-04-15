package com.zktr.Servlet;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class SsServlet
 */
@WebServlet("/SsServlet")
@MultipartConfig()
public class SsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part = request.getPart("photo");
		
		String dis = part.getHeader("content-disposition");
		String fileName = dis.split(";")[2].split("=")[1].replaceAll("\"", "");
		
		int pot = fileName.lastIndexOf(".");
		String ext = fileName.substring(pot);
		
		String rndName = UUID.randomUUID().toString().toUpperCase();
		String lastName = rndName + ext;
		String root = this.getServletContext().getRealPath("");
		
		File images = new File(root,"images");
		if (!images.exists()) {
			images.mkdirs();
		}
		System.out.println(lastName);
	}

}
