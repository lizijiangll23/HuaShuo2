<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="../../css/PeopleCenter.css"/>
	
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
		.serachIcon{
			border:none;
		}
	</style>
	<body>
		<!-- 导航栏 -->
				<div class="header">
					<div class="topBar clearfix">
						<div class="containerWidth">
							<div class="leftbox">
								<a href="">华硕官网</a>
								<span>|</span>
								<a href="">商城首页</a>
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
								<a href="c_order.jsp" id="imp1">我的订单</a>
								<div class="inlineBlock carts">
									<a href="../../../Front/jsp/gouwuche.jsp" class="minicart-text">
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
								<a href="" class="inlineBlock">
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
								<div class="serach">
									<input type="text" class="box">
									<span class="serachIcon"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
		<!-- 个人中心主体部分 -->
		<div id="body">
			<div id="center">
				<div id="c-head">
					<!-- 当前选择位置 -->
					<span><a href="../PeopleCenter.jsp" id="a-title">个人中心</a></span>
					<span>></span>
					<span class="now">评价管理</span><!-- !!!通过点击获取 -->
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
										<li><a href="c_order.jsp" id="myorder">我的订单</a></li>
										<li><a href="c_salce.jsp" id="salce_mannager">售后管理</a></li>
										<li><a href="#" id="comment_mannager" style="color: #00a8ff;">评价管理</a></li>
									</ul>
								</div>
								<!-- 我的账户 -->
								<div id="my-account">
									<h2 class="order-text2">我的账户</h2>
									<ul class="order-menu">
										<li><a href="../count/c_activity.jsp" id="myactivty">我的活动</a></li>
										<li><a href="../count/c_coupon.jsp" id="mycoupon">我的优惠券</a></li>
										<li><a href="../count/c_bring.jsp" id="bringcoupon">领券中心</a></li>
										<li><a href="../count/c_love.jsp" id="mylove">我的收藏/到货通知</a></li>
									</ul>
								</div>
								<!-- 个人信息管理 -->
								<div id="message-manager">
									<h2 class="order-text3">个人信息管理</h2>
									<ul class="order-menu">
										<li><a href="../manager/c_massage.jsp" id="message">个人信息</a></li>
										<li><a href="../manager/c_safe.jsp" id="safecenter">安全中心</a></li>
										<li><a href="../manager/c_adderss.jsp" id="adderss">收货地址</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 右边 -->
						<div id="center-right">
							<!-- 评价管理 -->
							<div id="c_comment">
								<div id="comment_title">
									<h2>评价管理</h2>
								</div>
								<div id="comment_tag">
									<a href="c_comment.jsp" id="comment_wait" >待评价商品</a>
									<span>|</span>
									<a href="#" id="my_comment" style="color: aqua;">我的评价</a>
								</div>
								<!-- !!!评价 -->
								<div id="comment_list">
									<ul></ul>
								</div>
							</div>
						</div>
						<div id="jilu">
							<p>
								总计
								<span style="color:#e4393c;">0</span> <!-- !!!传参 -->
								个记录
							</p>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- 页尾 -->
		<%@include file="footer.jsp" %>	
	</body>
<script type="text/javascript" src="../../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    // 发送异步请求获取已有收货地址数量
    $.ajax({
    	url: "../../../ShopServlet",
      type: "POST",
      dataType: "json",
      success: function(response) {
        // 处理后端返回的数据
        var addressCount = response.addressCount; // 假设后端返回的数据中有一个名为addressCount的字段表示地址数量
        $(".number").text(addressCount); // 将地址数量更新到页面上
        
      },
      error: function(jqXHR, textStatus, errorThrown) {
        console.log("请求失败：" + textStatus + "，" + errorThrown);
      }
    });
  });
</script>
</html>