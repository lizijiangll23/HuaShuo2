<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width: 100%">
<span class="close-button" onclick="hideModal()">&times;</span>
<table id="product-table">
  <tr>
    <th>商品名称</th>
    <th>配置</th>
    <th>修改</th>
    <th>操作</th>
  </tr>
  	<c:forEach items="${list}" var="u">
  <tr>
    <td>${name}</td>
    <td>${u}</td>
    <td><input/></td>
   <td><button onclick="shan('${name}', '${u}')">删除</button><button>修改</button></td>

  </tr>
	</c:forEach>
	</table>

</div>
</body>

</html>