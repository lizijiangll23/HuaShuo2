<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/ShangPi.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id = "lan">
	<div id = "suo"><input/></div>
	<div id = "da">
	<table id="product-table">
  <tr>
    <th>商品名称</th>
    <th>类别</th>
    <th>子类别</th>
    <th>图片链接</th>
    <th>状态</th>
    <th>上架时间</th>
  </tr>
  	<c:forEach items="${list}" var="u">
  <tr>
    <td>${u.name}</td>
    <td>${u.liebie}</td>
    <td>${u.zibie}</td>
    <td>${u.tu}</td>
    <td>${u.zhuan}</td>
    <td>${u.date}</td>
  </tr>
	</c:forEach>
</table>
	</div>
	</div>
</body>
<script src="../js/ce.js"></script>
</html>