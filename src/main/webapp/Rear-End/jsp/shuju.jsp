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
table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
</style>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id = "lan">
	<div>
	<input id = "dan"><button onclick="mohu()">搜索</button>
	</div>
	 	<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>商品名称</th>
            <th>订单时间</th>
            <th>价格</th>
            <th>状态</th>
            <th>用户ID</th>
            <th>订单编号</th>
            <th>商品图片</th>
            <th>地址</th>
            <th>商品单价</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.oid}</td>
            <td>${u.odetail}</td>
            <td>${u.otime}</td>
            <td>${u.total}</td>
            <td>${u.sate}</td>
            <td>${u.uid}</td>
            <td>${u.onumber}</td>
            <td>${u.ophoto}</td>
            <td>${u.oaddress}</td>
            <td>${u.oprice}</td>
        </tr>
        </c:forEach>
    </tbody>
</table>
        
	</div>
</body>
<script>
function mohu() {
	var name = document.getElementById("dan").value;
	 window.location.href = "DindanMoHu?name="+name;
}
</script>
<script src="../js/ce.js"></script>
</html>