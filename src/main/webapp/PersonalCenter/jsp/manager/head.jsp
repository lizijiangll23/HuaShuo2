<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="header">
		<div class="topBar clearfix">
			<div class="containerWidth">
				<div class="leftbox">
					<a href="../../Front/jsp/shouye.jsp">华硕官网</a>
					<span>|</span>
					<a href="../../Front/jsp/shouye.jsp">商城首页</a>
					<span>|</span>
					<a href="">驱动下载</a>
					<span>|</span>
					<a href="">装机必备</a>
					<span>|</span>
					<a href="">以旧换新</a>
				</div>
				<div class="rightbox">
					<span style="display: inline-block;">
						<!-- !!!跳转登录或登录 -->
						<a href="#" class="inlineBlock">${user.uname}</a>
						<span style="display: inline-block;color: #ccc;font-size: 14px;vertical-align: middle;margin: 0 -4px 1px;">|</span>
						<a href="../../../Front/jsp/Loding.jsp" class="inlineBlock">退出</a>
					</span>
					
					<span>|</span>
					<a href="" id="imp">
						<!-- !!!跳转消息 -->
						<font onclick="$(function(){alert("跳转消息")})" style="display: inline-block;outline: none;">
							消息
						</font>
					</a>
					
					<span>|</span>
					<a href="../order/c_order.jsp" id="imp1">我的订单</a>
					<div class="inlineBlock carts">
						<a href="" class="minicart-text">
							<span class="inlineBlock">
								购物车
								<span>(</span>
								<b class="number">0</b>
								<span>)</span>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="topModule">
			<div class="containerWidth">
				<div class="inlineBlock logobox">
					<a href="../../Front/jsp/shouye.jsp" class="inlineBlock">
						<img src="../../imgs/logo.png" class="logo">
					</a>
					<a href="" class="inlineBlock">
						<img src="../../imgs/10.gif" class="ten">
					</a>
				</div>
				<div class="inlineBlock menu">
					<a href="" class="inlineBlock menuItem">
						<img src="../../imgs/smallten.png" class="inlineBlock icon">
						<span class="inlineBlock txt">华硕电脑官网</span>
					</a>
					<a href="" class="inlineBlock menuItem">
						<img src="../../imgs/smallten.png" class="inlineBlock icon">
						<span class="inlineBlock txt">ROG电竞馆</span>
					</a>
					<a href="" class="inlineBlock menuItem">
						<img src="../../imgs/nian.png" class="inlineBlock icon">
						<span class="inlineBlock txt">a豆智能馆</span>
					</a>
					<a href="" class="inlineBlock menuItem">
						<img src="../../imgs/qing.png" class="inlineBlock icon">
						<span class="inlineBlock txt">中小企业采购</span>
					</a>
				</div>
				<div class="inlineBlock serachbox">
					<form action="sousuo"  method="get" >
					<div class="serach">
							<input type="text" class="box" name="sc">
							<input type="submit" value=" " class="serachIcon"></input>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="../../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".carts").click(function(){
			window.location.href="../../../Front/jsp/gouwuche.jsp"
		})	
	})
</script>
</html>