<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ page isELIgnored="false" %> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
<link rel="stylesheet" href="../../css/PeopleCenter.css"/>
<link rel="stylesheet" href="../../css/c_phoneMessage.css"/>
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
	.getcode{
		background-color: #00a8ff;
	    margin-left: 3px;
	    margin-right: 3px;
	    color: #fff;
	    display: inline-block;
	    white-space: nowrap;
	    vertical-align: middle;
	    width: 116px;
	    height: 37px;
	    padding:0 10px;
	}
	.writecode{
		width: 260px;
	    height: 36px;
	    
	}
	.form-item-normal{
		overflow: hidden;
	    font-size: 116.66667%;
	}
	.yesbtn{
		width: 270px;
	    height:40px;
		font-size: 100%;
		outline: none;
	    color: #fff;
	    border: 0 none;
	    padding: 0;
	    background: #00a8ff;
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
						<!-- 手机验证 -->
						<div id="c_phoneMessage">
							<div id="phone_title">
								<h2>身份验证</h2>
							</div>
							<div id="verify_steps">
								<table width="100%">
									<tr>
										<td class="step-item action">
											<span>
												<p class="xu">
													<img src="../../imgs/xu1.png">
													<i class="sp">身份验证</i>
												</p>
											</span>
										</td>
										<td class="icon">
											<img class="jian" src="../../imgs/jian.png">
										</td>
										<td class="step-item">
											<span>
												<p class="xu">
													<img src="../../imgs/xu2.png">
													<i class="sp">设置手机信息</i>
												</p>
											</span>
										</td>
										<td class="icon">
											<img class="jian" src="../../imgs/jian.png">
										</td>
										<td class="step-item">
											<span>
												<p class="xu">
													<img src="../../imgs/xu3.png">
													<i class="sp">完成</i>
												</p>
											</span>
										</td>
									</tr>
								</table>
							</div>
							<div id="verify_content">
								<form action="#" method="post">
									<div class="msg">为保障您的账户安全，请先验证您的身份</div>
									
									<ul>
										<li class="form-item">
											<label class="form-label">选择验证方式：</label>
											<span class="form-act">
												<label class="form-sub-label">
													<input type="radio" value="mobile" checked="checked" required>
													手机验证
												</label>
											</span>
										</li>
										<li class="form-item">
											<label class="form-label"><span style="color:red;">*</span>验证码：</label>
											<span class="form-act">
												<label class="form-sub-label">
													<input type="text" name="yzm" placeholder="验证码" class="phonecode" maxlength="4" required>
													<img class="yzm" src="PhoneCode.jsp" onclick="onme()" style="cursor:pointer;">
												</label>
											</span>
										
										</li>
										<li class="form-item">
											<label class="form-label">手机号码：</label>
											<span class="form-act">
												<label class="form-sub-label">
													<span class="changephone" id="phone-number">${user.phone}</span>
													<a class="getcode" style="cursor:pointer;">
														<span>
															<span class="send">获取验证码</span>
														</span>
													</a>
												</label>
											</span>
										</li>
										<li class="form-item">
											<label class="form-label">填写验证码：</label>
											<span class="form-act">
												<label class="form-sub-label">
													<input type="text" class="writecode" name="code" maxlength="6" required>
												</label>
											</span>
										</li>
										<li class="form-item-normal">
											<span class="form-act">
												<input type="submit" class="yesbtn" style="cursor:pointer;">
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
<script src="../../js/jquery-3.5.1.min.js"></script>
<script src="../../js/PeopleCenter.js"></script>
<script>
	
	$(function(){
		// 在页面加载完成时调用获取验证码的函数
	    getCode();
	    // 获取手机号
	    var phoneNumber = $("#phone-number").html();
	
	    // 将手机号中间部分替换成****
	    var maskedNumber = phoneNumber.replace(/(\d{3})\d{4}(\d{4})/, "$1****$2");
	
	    // 打印替换后的手机号
	    $("#phone-number").html(maskedNumber);
	    
		var code = "";
		var sendcode = "";
	    
	    $(".getcode").click(function(){
	    	// 获取phonecode的值
	        var phonecode = $(".phonecode").val();
	    	
	        if(phonecode == code){
	        	// 如果倒计时未开始且倒计时秒数为初始值60，则执行后续操作
		        if (!isCountdownActive && countdownSeconds === 10) {
		            // 调用发送验证码的函数
		            sendVerificationCode();
		        }
	        }else{
	        	alert("验证码错误!");
	        }
	    });
	    
	 	// 在全局定义倒计时秒数和倒计时状态
	    var countdownSeconds = 10;
	    var isCountdownActive = false;
	    // 发送验证码的函数
	    function sendVerificationCode() {
	        var phoneNumber = $("#phone-number").html();
	        
	        // 发送获取验证码的请求
	        $.ajax({
	            url: "../../../RndServlet",
	            method: "POST",
	            data: {phone: phoneNumber},
	            beforeSend: function() {
	                // 禁用获取验证码按钮
	                $(".getcode").prop("disabled", true);
	             	// 设置倒计时状态为激活
	                isCountdownActive = true;
	            },
	            success: function(response) {
	                // 获取验证码成功后，在控制台输出随机数
	                alert(response);
	                sendcode = response;
	                // 在此处执行倒计时逻辑
	                startCountdown();
	            },
	            error: function() {
	                // 获取验证码失败时的处理
	                console.log("获取验证码失败");
	                // 启用获取验证码按钮
	                $(".getcode").prop("disabled", false);
	            }
	        });
	    }
	    
	    $(".yzm").click(function() {
	    	getCode();
	    });
	    
	 	// 获取验证码的函数
	    function getCode() {
	        $.ajax({
	            url: "saveCode.jsp",
	            method: "GET",
	            success: function(response) {
	                var htmlCode = response;  // 假设获取到完整的HTML代码保存在response中
	                var regex = /<body>\s*([\s\S]*?)\s*<\/body>/;
	                var match = htmlCode.match(regex);
	                if (match && match.length > 1) {
	                    var yzm = match[1].trim();
	                    code = yzm; // 更新code变量的值
	                } else {
	                    console.log("未找到验证码");
	                }
	            },
	            error: function() {
	                console.log("获取HTML代码失败");
	            }
	        });
	    }
	    
	    // 倒计时函数
	    function startCountdown() {
	        // 设置初始倒计时文本
	        $(".send").text(countdownSeconds + "秒后重新发送");
	    
	        // 创建定时器，每秒更新倒计时文本
	        var countdownTimer = setInterval(function() {
	            countdownSeconds--;
	            // 更新倒计时文本
	            $(".send").text(countdownSeconds + "秒后重新发送");
	    
	            // 倒计时结束
	            if (countdownSeconds == 0) {
	                // 清除定时器
	                clearInterval(countdownTimer);
	                // 重置倒计时文本
	                $(".send").text("获取验证码");
	                // 重置倒计时秒数
	                countdownSeconds = 10;
	                // 设置倒计时状态为非激活
	                isCountdownActive = false;
	                // 启用获取验证码按钮
	                $(".getcode").prop("disabled", false);
	            }
	        }, 1000);
	    }
	    
	    //点击登录按钮事件处理程序
	    $(".yesbtn").click(function(event){
    	  // 阻止表单的默认提交行为
       	  event.preventDefault();


	      // 获取用户输入的验证码
	      var userInputCode = $(".writecode").val();
	      // 获取发送的验证码
	      var sentCode = sendcode;
	      
	      var phonecode = $(".phonecode").val();
	      // 检查用户输入的验证码是否正确
	      if (userInputCode !== sentCode || phonecode == "") {
	       alert("验证码或内容填写不完整!");
	       $(".yzm")[0].click();
	       getCode();
	       return; // 若验证码不正确，不执行后续操作
	      }else{
	    	  window.location.href = "PhoneCode2.jsp";
	      }
	      
	      
	    });
	    
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
	
	
	 function onme(){
		var a = document.querySelector(".yzm");
		a.src = "PhoneCode.jsp?" + new Date().getTime();
	}
</script>
</html>