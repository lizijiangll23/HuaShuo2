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
									<a href="#" class="inlineBlock">仅惠123</a>
									<span style="display: inline-block;color: #ccc;font-size: 14px;vertical-align: middle;margin: 0 -4px 1px;">|</span>
									<a href="" class="inlineBlock">退出</a>
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
				<div id="footer" class="footer">
					<div id="footer-service">
						<div id="service">
							<div class="page">
								<ul class="clearfix">
									<li class="zhiy">
										<img src="../../imgs/guanfzhiying.png">
										官方直营
									</li>
									<li class="yiwai">
										<img src="../../imgs/yiwai.png">
										笔记本意外险
									</li>
									<li class="baoyou">
										<img src="../../imgs/baoyou.png">
										全场包邮
									</li>
									<li class="wuyou">
										<img src="../../imgs/wuyou.png">
										7天无忧退
									</li>
									<li class="huabei">
										<img src="../../imgs/huabei.png">
										支付宝花呗分期
									</li>
								</ul>
							</div>
						</div>
					</div>
					
					<div id="footer-helper">
						<div id="helper">
							<div class="page clearfix">
								<div class="helper-item">
									<dl >
										<dt class="content-title">
											<a href="#">公司介绍</a>
										</dt>
										<dd>
											<a href="#">华硕承诺</a>
										</dd>
										<dd>
											<a href="#">交易条款</a>
										</dd>
										<dd>
											<a href="#">特别提醒</a>
										</dd>
										<dd>
											<a href="#">加入我们</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#">购物指南</a>
										</dt>
										<dd>
											<a href="#">订单说明</a>
										</dd>
										<dd>
											<a href="#">会员注册</a>
										</dd>
										<dd>
											<a href="#">会员账户安全与信息</a>
										</dd>
										<dd>
											<a href="#">购物流程</a>
										</dd>
										<dd>
											<a href="#">积分使用说明</a>
										</dd>
										<dd>
											<a href="#">优惠券使用说明</a>
										</dd>
										<dd>
											<a href="#">常见问题</a>
										</dd>
										<dd>
											<a href="#">华硕商城服务协议说明 </a>
										</dd>
										<dd>
											<a href="#">授权服务店服务说明</a>
										</dd>
										<dd>
											<a href="#">授权服务店服务说明</a>
										</dd>
										<dd>
											<a href="#">以旧换新</a>
										</dd>
										<dd>
											<a href="#">预约规则</a>
										</dd>
										<dd>
											<a href="#">预售规则</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#">配送与付款</a>
										</dt>
										<dd>
											<a href="#">发货与签收规范</a>
										</dd>
										<dd>
											<a href="#">配送运费说明</a>
										</dd>
										<dd>
											<a href="#">配送常见问题</a>
										</dd>
										<dd>
											<a href="#">配送异常</a>
										</dd>
										<dd>
											<a href="#">支付常见问题</a>
										</dd>
										<dd>
											<a href="#">发票说明</a>
										</dd>
										<dd>
											<a href="#">蚂蚁花呗常见问题</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#">服务与支持</a>
										</dt>
										<dd>
											<a href="#">华硕服务中心查询</a>
										</dd>
										<dd>
											<a href="#">华硕授权实体门店查询</a>
										</dd>
										<dd>
											<a href="#">华硕智汇家体验店</a>
										</dd>
										<dd>
											<a href="#">中国RoHS合格评定标识</a>
										</dd>
										<dd>
											<a href="#">华硕笔记本保修政策说明</a>
										</dd>
										<dd>
											<a href="#">ROG玩家国度授权体验店</a>
										</dd>
										<dd>
											<a href="#">参与调研</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item" style="width: 270px;text-align: center;margin-right: 0;">
									<p class="ewm-title">400-091-9520</p>
									<p class="ewm-subtitle">专属服务热线</p>
									<img class="ewm-img" src="../../imgs/ewm.png">
									<p class="ewm-but">扫码进入小程序</p>
								</div>
							</div>
						</div>
					</div>
					
					<div id="help" class="help">
						<div id="help-text">
							<p>&nbsp;</p>
							<p>有任何购物问题请联系商城客服 | 电话：400-091-9520</p>
							<p>
								<a href="">营业执照：12000002202112290026</a>
								&nbsp;|
								<a href="">沪ICP备11025349号-3</a>
								&nbsp; │ ASUSTeK Computer Inc. All Rights Reserved.
							</p>
							<div style="margin:0 auto; padding:20px 0;text-align: center;">
								<p class="footer_txt">
									<a href="">ASUS使用条款</a>
									<a href="">隐私政策</a>
									<a href="">隐私说明</a>
									<img src="//static.asus.com.cn/static/store/images/735f16509d9a54d5ddade073f133e7dcf2c0a486.png?1499224546#h">
									<a href="">沪公网安备 31011202002313号</a>
								</p>
								
							</div>
						</div>
					</div>
					
				</div>
	</body>
	<script src="../../js/jquery-3.5.1.min.js"></script>
	<script src="../../js/PeopleCenter.js"></script>
	<script>
		
	</script>
</html>