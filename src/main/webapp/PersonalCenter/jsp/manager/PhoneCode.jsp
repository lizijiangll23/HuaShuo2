<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Graphics"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Color"%>
<%@page import="java.util.Random"%>
<%@page import="javax.imageio.ImageIO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
    	
    	private String getRandomMath(){
    		StringBuffer sb = new StringBuffer();
    		Random rnd = new Random();
    		for(int i=0;i<4;i++){
    			sb.append(rnd.nextInt(10));
    		}
    		return sb.toString();
    	}
    %>
    <%
		//设置响应类型为图片
		response.setContentType("image/png");
		//创建一张空白图片
		BufferedImage bi = new BufferedImage(80,40,BufferedImage.TYPE_INT_RGB);
		//获取画笔
		Graphics g = bi.getGraphics();
		//字体
		g.setFont(new Font("宋体",Font.BOLD,20));
		//接收
		String yz = getRandomMath();
		//背景颜色
		g.setColor(new Color(211,222,223));
		//画矩形
		g.fillRect(0, 0, 80, 40);
		//文字颜色
		g.setColor(new Color(0,0,0));
		//画文字
		g.drawString(yz, 20, 25);
		g.setColor(Color.red);
		for(int i=0;i<=4;i++){
			
			Random rnd = new Random();
			int x1 = rnd.nextInt(80);
			int x2 = rnd.nextInt(80);
			int y1 = rnd.nextInt(40);
			int y2 = rnd.nextInt(40);
			g.drawLine(x1, y1, x2, y2);
		}
		//保存
		session.setAttribute("yzm", yz);
		
		//输出到浏览器
		ImageIO.write(bi, "png", response.getOutputStream());
		//释放资源
		g.dispose();
		out.clear();
		out = pageContext.pushBody();
	%>
</body>
</html>