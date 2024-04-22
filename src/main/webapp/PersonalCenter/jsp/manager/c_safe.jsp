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
		<%@include file="head.jsp" %>
		<!-- 个人中心主体部分 -->
		<div id="body">
			<div id="center">
				<div id="c-head">
					<!-- 当前选择位置 -->
					<span><a href="../PeopleCenter.jsp" id="a-title">个人中心</a></span>
					<span>></span>
					<span class="now">安全中心</span><!-- !!!通过点击获取 -->
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
										<li><a href="../order/c_order.jsp" id="myorder">我的订单</a></li>
										<li><a href="../order/c_salce.jsp" id="salce_mannager">售后管理</a></li>
										<li><a href="../order/c_comment.jsp" id="comment_mannager">评价管理</a></li>
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
										<li><a href="c_massage.jsp" id="message">个人信息</a></li>
										<li><a href="#" id="safecenter" style="color: #00a8ff;">安全中心</a></li>
										<li><a href="c_adderss.jsp" id="adderss">收货地址</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 右边 -->
						<div id="center-right">
							<!-- 安全中心 -->
							<div id="c_safe">
								<div class="safe_title">
									<h2>安全中心</h2>
									<p>建议您开启全部安全设置，以保障账户及资金安全</p>
								</div>
								<div class="safe_mod">
									<!-- !!!跳转 -->
									<form action="" method="post" class="safe_content">
										<ul class="safe_list">
											<li style="width:100%;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;-ms-box-sizing:border-box;-o-box-sizing:border-box;">
												<span class="safe_infotitle">
													<img src="../../imgs/yes.png" class="icons">
													<b>登录密码</b>
												</span>
												<span class="safe_actions">
													<a href="setPass.jsp" class="btn safe_btn">
														<span>修&nbsp;&nbsp;&nbsp;&nbsp;改</span>
													</a>
												</span>
												<span class="safe_content">
													<em>请经常更换您的登录密码，且不要和其他账号共用一个密码	</em>
												</span>
											</li>
											<li>
												<span class="safe_infotitle">
													<img src="../../imgs/yes.png" class="icons">
													<b>手机验证</b>
												</span>
												<span class="safe_actions">
													<a href="phoneMessage.jsp" class="btn safe_btn">
														<span>修&nbsp;&nbsp;&nbsp;&nbsp;改</span>
													</a>
												</span>
												<span class="safe_content">
													<em>您的验证手机:${user.phone}</em>
												</span>
											</li>
											<li>
												<span class="safe_infotitle">
													<img src="../../imgs/tanhao.png" class="icons">
													<b>邮箱验证</b>
												</span>
												<span class="safe_actions">
													<a href="#" class="btn safe_btn">
														<span>立即验证</span>
													</a>
												</span>
												<span class="safe_content">
													<em>进行邮箱验证后，可进行快速找回账号密码和身份验证操作，保护您的账号安全</em>
												</span>
											</li>
											<li>
												<span class="safe_infotitle">
													<img src="../../imgs/tanhao.png" class="icons">
													<b>申请注销账号</b>
												</span>
												<span class="safe_actions">
													<a href="LogOffCount.jsp" class="btn safe_btn">
														<span>申请注销</span>
													</a>
												</span>
												<span class="safe_content">
													<em>如果您不再使用此账号，可以将其注销。账号成功注销后，其下所有服务、数据及隐私信息将会被删除并将无法恢复。</em>
												</span>
											</li>
										</ul>
									</form>
								</div>
							</div>
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