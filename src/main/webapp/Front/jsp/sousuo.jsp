<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
			html {
			  scroll-behavior: smooth;
			}
			*{
				margin: 0px;
			}
			body{
				transform-origin: top left;
				overflow-x: hidden;
			}
			
			a{
				text-decoration: none;
			}
			li{
				list-style: none;
			}
			#shangpin {
			  margin: auto;
			  height: 2020px;
			  background-color: #eee;
			  margin-top: 30px;
			}
			
			#shangp-1 {
			  margin:auto;
			  width: 984px;
			  margin-top: 20px;
			}

			#p1{
				position: relative;
				font-size: 20px;
				color: black;
				line-height: 54px;
				padding-left: 32px;
				
			}
			#p1 a{
				color: black;
				text-decoration: none;
				float: right;
			}
			#p1 a:hover{
				color: aqua;
			}
			#spin-1{
				width: 984px;
				height: 600px;
				margin: auto;
			}
			#shangp-1 div div{
				background-color: #FFFFFF;
				width: 233px;
				height: 290px;
				float: left;
				margin-bottom: 20px;
				margin-left: 12px;
			}
			#tp{
				width: 204px;
				height: 204px;
				margin-left: 14.5px;
			}
			#p-1,#p-2,#p-3{
				width: 233px;
				text-align: center;
				margin-top: 6px;
			}
			#p-1{
				
				line-height: 20px;
				height: 20px;
				color: black;
				font-size: 16px;
			}
			#p-2{
				line-height: 14px;
				height: 14px;
				font-size: 14px;
				color: darkgray;
			}
			#p-3{
				line-height: 22.5px;
				color: red;
				height: 22.5px;
			}
			.serachIcon{
				border: none;
			}
			#shangp-1 div div:hover{
				box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
			}
	
</style>
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

		<script type="text/javascript">
		$(function() {
		
		var sc = $('input[name="sc"]').val();
		console.log(sc);
		// 发送GET请求到服务器端
		$.getJSON("chaxun", { value: sc }, function(data) {
		    for (var i = 0; i < data.length; i++) {
		    	console.log(data[i])
		        var product = data[i];
		        var newDiv = $("<div>");
		        var img = $("<img>").attr("src", product.imagePath).attr("id", "tp");
		        newDiv.append(img);
		        var p1 = $("<p>").attr("id", "p-1").text(product.name);
		        newDiv.append(p1);
		        var p2 = $("<p>").attr("id", "p-2").text(product.config.substring(0, product.config.indexOf(" ", product.config.indexOf(" ") + 1)));
		        newDiv.append(p2);
		        var p3 = $("<p>").attr("id", "p-3").text("￥" + product.price);
		        newDiv.append(p3);
		        $("#spin-1").append(newDiv);
		      }
		    });
		  }); 
		</script>

		<link rel="stylesheet" href="../css/PeopleCenter.css"/>
		<link rel="stylesheet" href="../css/acc.css"/>

</head>
<body>
		<!-- 页首 -->
			<!-- 导航栏 -->
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
								<a href="../../Front/jsp/Loding.jsp" class="inlineBlock">退出</a>
							</span>
							
							<span>|</span>
							<a href="" id="imp">
								<!-- !!!跳转消息 -->
								<font onclick="$(function(){alert("跳转消息")})" style="display: inline-block;outline: none;">
									消息
								</font>
							</a>
							
							<span>|</span>
							<a href="order/c_order.jsp" id="imp1">我的订单</a>
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
								<img src="../imgs/logo.png" class="logo">
							</a>
							<a href="" class="inlineBlock">
								<img src="../imgs/10.gif" class="ten">
							</a>
						</div>
						<div class="inlineBlock menu">
							<a href="" class="inlineBlock menuItem">
								<img src="../imgs/smallten.png" class="inlineBlock icon">
								<span class="inlineBlock txt">华硕电脑官网</span>
							</a>
							<a href="" class="inlineBlock menuItem">
								<img src="../imgs/smallten.png" class="inlineBlock icon">
								<span class="inlineBlock txt">ROG电竞馆</span>
							</a>
							<a href="" class="inlineBlock menuItem">
								<img src="../imgs/nian.png" class="inlineBlock icon">
								<span class="inlineBlock txt">a豆智能馆</span>
							</a>
							<a href="" class="inlineBlock menuItem">
								<img src="../imgs/qing.png" class="inlineBlock icon">
								<span class="inlineBlock txt">中小企业采购</span>
							</a>
						</div>
						<div class="inlineBlock serachbox">
							<form action="sousuo"  method="get" >
							<div class="serach">
									<input type="text" class="box" name="sc" value="${acc}">
									<input type="submit" value=" " class="serachIcon"></input>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		<div id="shangpin">
		    <div>
		        <div id="shangp-1">
		            <div id="spin-1">
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
										<img src="../imgs/guanfzhiying.png">
										官方直营
									</li>
									<li class="yiwai">
										<img src="../imgs/yiwai.png">
										笔记本意外险
									</li>
									<li class="baoyou">
										<img src="../imgs/baoyou.png">
										全场包邮
									</li>
									<li class="wuyou">
										<img src="../imgs/wuyou.png">
										7天无忧退
									</li>
									<li class="huabei">
										<img src="../imgs/huabei.png">
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
											<a href="#" id="ztys">公司介绍</a>
										</dt>
										<dd>
											<a href="#" id="ztys">华硕承诺</a>
										</dd>
										<dd>
											<a href="#" id="ztys">交易条款</a>
										</dd>
										<dd>
											<a href="#" id="ztys">特别提醒</a>
										</dd>
										<dd>
											<a href="#" id="ztys">加入我们</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#" id="ztys">购物指南</a>
										</dt>
										<dd>
											<a href="#" id="ztys">订单说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">会员注册</a>
										</dd>
										<dd>
											<a href="#" id="ztys">会员账户安全与信息</a>
										</dd>
										<dd>
											<a href="#" id="ztys">购物流程</a>
										</dd>
										<dd>
											<a href="#" id="ztys">积分使用说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">优惠券使用说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">常见问题</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕商城服务协议说明 </a>
										</dd>
										<dd>
											<a href="#" id="ztys">授权服务店服务说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">授权服务店服务说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">以旧换新</a>
										</dd>
										<dd>
											<a href="#" id="ztys">预约规则</a>
										</dd>
										<dd>
											<a href="#" id="ztys">预售规则</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#" id="ztys">配送与付款</a>
										</dt>
										<dd>
											<a href="#" id="ztys">发货与签收规范</a>
										</dd>
										<dd>
											<a href="#" id="ztys">配送运费说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">配送常见问题</a>
										</dd>
										<dd>
											<a href="#" id="ztys">配送异常</a>
										</dd>
										<dd>
											<a href="#" id="ztys">支付常见问题</a>
										</dd>
										<dd>
											<a href="#" id="ztys">发票说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">蚂蚁花呗常见问题</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#" id="ztys">服务与支持</a>
										</dt>
										<dd>
											<a href="#" id="ztys">华硕服务中心查询</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕授权实体门店查询</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕智汇家体验店</a>
										</dd>
										<dd>
											<a href="#" id="ztys">中国RoHS合格评定标识</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕笔记本保修政策说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">ROG玩家国度授权体验店</a>
										</dd>
										<dd>
											<a href="#" id="ztys">参与调研</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item" style="width: 270px;text-align: center;margin-right: 0;">
									<p class="ewm-title">400-091-9520</p>
									<p class="ewm-subtitle">专属服务热线</p>
									<img class="ewm-img" src="../imgs/ewm.png">
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
</html>