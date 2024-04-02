<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<link rel="stylesheet" href="../css/PeopleCenter.css"/>

<style>
	*{
		padding: 0px;
		margin: 0px;
	}
	a{
		text-decoration: none;
		color: #666666;
	}
	li{
		list-style: none;
	}
	
</style>
<script src="../js/jquery-3.5.1.min.js"></script>

</script>
<body>
	<%@ include file="head.jsp" %>
	<!-- 个人中心主体部分 -->
		<div id="body">
			<div id="center">
				<div id="c-head">
					<!-- 当前选择位置 -->
					<span><a href="../../mhf/html/首页.jsp" id="a-title">首页</a></span>
					<span>></span>
					<span class="now">个人中心</span><!-- !!!通过点击获取 -->
				</div>
				<!-- 内容 -->
				<div id="c-center">
					<div id="c-box">
						<!-- 左边 -->
						<div id="center-left">
							<div id="left_info">
								<!-- 订单管理 -->
								<div id="order-manager">
									<h2 class="order-text1">订单管理</h2>
									<ul class="order-menu">
										<li><a href="order/c_order.jsp" id="myorder">我的订单</a></li>
										<li><a href="order/c_salce.jsp" id="salce_mannager">售后管理</a></li>
										<li><a href="order/c_comment.jsp" id="comment_mannager">评价管理</a></li>
									</ul>
								</div>
								<!-- 我的账户 -->
								<div id="my-account">
									<h2 class="order-text2">我的账户</h2>
									<ul class="order-menu">
										<li><a href="count/c_activity.jsp" id="myactivty">我的活动</a></li>
										<li><a href="count/c_coupon.jsp" id="mycoupon">我的优惠券</a></li>
										<li><a href="count/c_bring.jsp" id="bringcoupon">领券中心</a></li>
										<li><a href="count/c_love.jsp" id="mylove">我的收藏/到货通知</a></li>
									</ul>
								</div>
								<!-- 个人信息管理 -->
								<div id="message-manager">
									<h2 class="order-text3">个人信息管理</h2>
									<ul class="order-menu">
										<li><a href="manager/c_massage.jsp" id="message">个人信息</a></li>
										<li><a href="manager/c_safe.jsp" id="safecenter">安全中心</a></li>
										<li><a href="manager/c_adderss.jsp" id="adderss">收货地址</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 右边 -->
						<div id="center-right">
							<!-- 个人中心 -->
							<div id="c_center">
								<div id="c_hello">
									<!-- 问候 -->
									<div id="head">
										<img src="../imgs/惠.jpg"/> <!-- !!!头像 -->
									</div>
									<div id="hello">
										<div id="hello_name">
											<span id="name">你好,XXX</span>
										</div>
										<div id="hello_welcome">
											<p>欢迎来到华硕商城!</p>
										</div>
									</div>
								</div>
								
								<div id="c_info">
									<!-- 快速查看订单情况 -->
									<ul id="menber_list">
										<li class="list list1">
											<div class="list_name">待支付的订单：<span>0</span></div> <!-- ！！！连接查询 -->
											<div class="list_link"><a href="#" id="link_order">查看待支付的订单 </a>></div>  
										</li>
										<li class="list list2">
											<div class="list_name">待收货的订单：<span>0</span></div>
											<div class="list_link"><a href="#">查看待收货的订单 </a>></div>
										</li>
										<li class="list list3">
											<div class="list_name">待评价的订单：<span>0</span></div>
											<div class="list_link"><a href="#">查看待评价的订单 </a>></div>
										</li>
										<li class="list list4">
											<div class="list_name">收藏的商品：<span>1</span></div>
											<div class="list_link"><a href="#">查看收藏的商品 </a>></div>
										</li>
									</ul>
									
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	<%@include file="footer.jsp" %>
</body>

</html>