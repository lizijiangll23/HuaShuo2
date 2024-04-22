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
		table{
			border-collapse: collapse;
		}
		i{
			font-style: normal;
		}
		.serachIcon{
			border:none;
		}
	</style>
	<body>
		<!-- 导航栏 -->
		<%@ include file="head.jsp" %>
		<!-- 个人中心主体部分 -->
		<div id="body">
			<div id="center">
				<div id="c-head">
					<!-- 当前选择位置 -->
					<span><a href="../PeopleCenter.jsp" id="a-title">个人中心</a></span>
					<span>></span>
					<span class="now">我的订单</span><!-- !!!通过点击获取 -->
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
										<li><a href="#" id="myorder" style="color: #00a8ff;">我的订单</a></li>
										<li><a href="c_salce.jsp" id="salce_mannager">售后管理</a></li>
										<li><a href="c_comment.jsp" id="comment_mannager">评价管理</a></li>
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
							<!-- 我的订单 -->
							<div id="c_order">
								<div id="order_title">
									<h2>我的订单</h2>
								</div>
								<div id="order_tags">
									<a href="c_order.jsp">全部订单</a>
									<span>|</span>
									<a href="daizhifu.jsp">待支付</a>
									<span>|</span>
									<a href="#" style="color: aqua;">待收货</a>
									<span>|</span>
									<a href="daifahuo.jsp">代发货</a>
									<span>|</span>
									<a href="yushou.jsp">预售</a>
								</div>
								<div id="order_menber">
									<table class="order_table">
										<thead>
											<tr>
												<th style="width: 565px;">订单明细</th>
												<th style="width: 115px;">订单金额</th>
												<th style="width: 115px;">订单状态</th>
												<th style="width: 115px;">操作</th>
											</tr>
										</thead>
									</table>
									<div id="info_table">
										<!-- !!!添加循环 -->
										<table style="width: 100%;" class="info_body">
									<!-- 		<tr>
												<th colspan="4">
													<span>
														订单时间:
														<i>2024-3-20 14:48:32</i>
													</span>
													<span>
														订单号:
														<i>12312335632</i>
													</span>
												</th>   !!!通过查询 
											</tr> -->
										</table>
									</div>
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