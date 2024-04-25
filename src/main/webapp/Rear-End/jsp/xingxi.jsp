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
#jud{
width: 100%;
height: 100%;
margin-top: 40px;
}
#toxiang_1{
width: 200px;
height: 200px;
overflow: hidden;
border-radius: 50%;
margin: 0px auto;
}
#p{
font-size: 20px;
text-align: center;
margin-top: 10px;
}
#sstu{
 width: 100%; /* 图片宽度填满 div 元素 */
    height: auto; /* 根据图片比例自动调整高度 */
    display: block; /* 让图片成为块级元素，使宽度属性生效 */
}
</style>
<body>
<div id = "jud"> 
<c:forEach items="${list}" var="a">
	<div id="toxiang_1"><img src="${a.head }" id = "sstu"></div>
	<p id="p">ID:${a.uid}</p>
	<p id="p">${a.uname}</p>
	<p id="p">${a.account}</p>
	</c:forEach>
	</div>
</body>
<script>

</script>
</html>