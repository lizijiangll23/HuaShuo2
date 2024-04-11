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
	    
	 	
	   
	});
	
	
	 function onme(){
		var a = document.querySelector(".yzm");
		a.src = "PhoneCode.jsp?" + new Date().getTime();
	}
</script>
</html>