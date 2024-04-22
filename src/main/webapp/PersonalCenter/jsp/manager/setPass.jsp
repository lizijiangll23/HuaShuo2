<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" href="../../css/PeopleCenter.css"/>
	<link rel="stylesheet" href="../../css/c_spass.css"/>
	<style>
		*{
			padding: 0px;
			margin: 0px;
		}
		.serachIcon{
			border:none;
		}
		a{
			text-decoration: none;
			color: #666666;
		}
		li{
			list-style: none;
		}
		.bns{
			width: 88px;
		    height: 38px;
		    line-height: 38px;
		    text-align: center;
		    color: #fff;
		    font-size: 14px;
		    background: #00a8ff;
		    border-radius: 4px;
		    border: none;
		    margin-left: 332px;
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
							<!-- 修改密码 -->
							<div id="c_setPass">
								<div class="pass_title">
									<h2>修改密码</h2>
								</div>
								<div class="pass_menber">
									<div class="msg">
										获取验证码，输入
										<span>${user.phone}</span> <!-- !!!获取到手机号 -->
										收到的短信验证码
									</div>
									<form class="mod-content" action="../../../SetPassServlet" method="post">
										<div class="form-item">
											<label>验证码:</label>
											<div class="rightbox1" style="border:none;">
												<input type="text" name="code" maxlength="6" required>
												<div class="getcode">
													获取验证码
												</div>
											</div>
										</div>
										<div class="form-item">
											<label>新密码:</label>
											<div class="rightbox1" style="border:none;">
												<input type="password" name="pass" placeholder="请输入您的密码" class="ps1" required>
											</div>
										</div>
										<div class="form-item">
											<label>确认密码:</label>
											<div class="rightbox1" style="border:none;padding: 0px;margin-left: 15px;">
												<input type="password" name="yespass" placeholder="请再次输入您的密码" class="ps2" required>
											</div>
										</div>
										<button class="bns">确定</button>
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
	<script src="../../js/jquery-3.5.1.min.js"></script>
	<script src="../../js/PeopleCenter.js"></script>
	<script>
	$(function(){
	    // 获取手机号
	    var phoneNumber = $(".msg span").text();

	    // 将手机号中间部分替换成****
	    var maskedNumber = phoneNumber.replace(/(\d{3})\d{4}(\d{4})/, "$1****$2");

	    // 打印替换后的手机号
	    $(".msg span").html(maskedNumber);

	    // 点击获取验证码按钮
	    $(".getcode").click(function(){
	        var $getCodeBtn = $(this);

	        if ($getCodeBtn.hasClass("disabled")) {
	            return;
	        }
	        
			
	        var phone = phoneNumber;
	        window.location.href = "../../../YzmServlet?phone=" + phone;

	        $getCodeBtn.addClass("disabled"); // 添加禁用类名

	        // 保存倒计时时间到localStorage
	        var countdown = 10;
	        localStorage.setItem("countdown", countdown);

	        startCountdown(countdown, $getCodeBtn); // 开始倒计时
	    });

	    // 检查是否存在倒计时时间
	    var savedCountdown = localStorage.getItem("countdown");
	    if(savedCountdown && savedCountdown >= 0 && savedCountdown <= 60) {
	        var $getCodeBtn = $(".getcode");

	        // 如果倒计时时间大于0，则开始倒计时
	        if (savedCountdown > 0) {
	            $getCodeBtn.addClass("disabled"); // 添加禁用类名
	            startCountdown(savedCountdown, $getCodeBtn); // 继续倒计时
	        }
	        else {
	            localStorage.removeItem("countdown"); // 移除倒计时时间
	        }
	    }
	    
	    // 倒计时函数
	    function startCountdown(countdown, $getCodeBtn) {
	        $getCodeBtn.text(countdown + "秒后重新获取");

	        // 倒计时减1
	        countdown--;

	        // 倒计时结束
	        if (countdown < 0) {
	            localStorage.removeItem("countdown"); // 移除倒计时时间

	            $getCodeBtn.removeClass("disabled"); // 移除禁用类名
	            $getCodeBtn.text("获取验证码");
	            return;
	        }

	        // 每秒更新一次倒计时
	        setTimeout(function(){
	            startCountdown(countdown, $getCodeBtn);
	        }, 1000);
	    }
	    
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
	});
	</script>
	<script type="text/javascript">
	/* var pd = "${pd}";
	  
	  if (pd === "成功") {
		  alert("成功");
	  } else if (pd === "失败") {
		  alert("失败");
	  } */
	</script>
</html>