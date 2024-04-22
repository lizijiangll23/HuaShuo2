<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

#toxiang_1{
width: 200px;
height: 200px;
background-color: pink;
border-radius: 50%;
margin: 0px auto;

}
</style>
<body>
<c:forEach items="${list}" var="a">
	<div id="toxiang_1"><img src="${a.head }"></div>
	<p>ID:${a.uid}</p>
	<p>${a.uname}</p>
	<p>${a.account}</p>
	</c:forEach>
</body>
<script>

</script>
</html>