<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<link rel="stylesheet" href="../../css/PeopleCenter.css"/>
<%@include file="head.jsp" %>
	<!-- 个人中心主体部分 -->
		<div id="body">
			<div id="center">
				<div id="c-head">
					<!-- 当前选择位置 -->
					<span><a href="../PeopleCenter.jsp" id="a-title">个人中心</a></span>
					<span>></span>
					<span class="now">个人信息</span><!-- !!!通过点击获取 -->
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
										<li><a href="#" id="message" style="color: #00a8ff">个人信息</a></li>
										<li><a href="c_safe.jsp" id="safecenter">安全中心</a></li>
										<li><a href="c_adderss.jsp" id="adderss">收货地址</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 右边 -->
						<div id="center-right">
							<!-- 个人信息 -->
							<div id="c_massage">
								<div id="massage_title">
									<h2>个人信息</h2>
									<p>| 请尽量完整填写您的个人信息，方便店家与您联系。</p>
								</div>
								<div id="massage_info">
									<!-- !!!表单 -->
									<form action="MassageServlet" method="post" id="myCheckbox" enctype="multipart/form-data">
										<ul>
											<li class="form-item" style="width: 145px;margin-top: 0px;">
												<span class="form-act" style="margin: 0;">
													<img src="../../../images/${user.head}" class="img_box">
													<div id="addpic_div" class="avator_uploader">
														<div class="addpic">
															<a href="" class="btn changehead">更改头像</a>
															<input type="file" name="photo" id="avatar" style="display:none;">
														</div>
													</div>
												</span>
											</li>
										</ul>
										<ul style="width: 600px;display: flex;flex-direction: column;" id="massage_ul">
											<li class="form-item">
												<label class="form_label">用户名:</label>
												<span class="form-act" style="margin: 0px;">
													<!-- !!!传值 -->
													<input type="text" class="x_input username" value="${user.uname}" name="user_name" placeholder="请输入">
												</span>
											</li>
											<li class="form-item">
												<label class="form_label">性别:</label>
												<span class="form-act">
													<span class="form_radio">
														<input type="radio" id="man" class="radio" name="sex" value="男" checked>
														男
													</span>
													<span class="form_radio">
														<input type="radio" id="woman" class="radio" name="sex" value="女">
														女
													</span>
												</span>
											</li>
											<li class="form-item">
												<label class="form_label">生日:</label>
												<span class="form-act">
													<select name="year" id="year" class="bir-sel"></select>年
													<select name="month" id="month" class="bir-sel"></select>月
													<select name="day" id="day" class="bir-sel"></select>日
												</span>
											</li>
											<li class="form-item">
												<label class="form_label">邮箱:</label>
												<span class="form-act">
													<input type="text" class="x_input useremail" value="" name="email" placeholder="请输入">
												</span>
											</li>
											<li class="form-item">
												<span>
													<input type="checkbox" id="license" data-caution="请阅读并同意使用条款等" name="check">
													<label class="form-sub-label" style="font-size: 14px;">
														<span>我同意</span>
														<a href="#" class="lnklike" style="color: #00a8ff;">《服务须知》</a>
														 及
														<a href="#" class="lnklike"  style="color: #00a8ff;">
															《活动规则》
														</a>
														<span>，如有疑问请联系客服。</span>
													</label>
												</span>
											</li>
											<li class="form-item">
												<input type="submit" class="btn btn-caution" value="保存"> 
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
<script>
$(function() {
	  // 获取生日字符串
	  var birthday = "${user.birthday}";

	  // 根据"-"分割生日字符串
	  var birthdayArray = birthday.split("-");

	  // 将分割后的数值赋给相应的下拉框
	  var yearSelect = $("#year");
	  var monthSelect = $("#month");
	  var daySelect = $("#day");

	  // 设置年份下拉框的值
	  var currentYear = new Date().getFullYear(); // 当前年份
	  var startYear = currentYear - 100; // 起始年份为当前年份的前100年
	  for (var i = currentYear; i >= startYear; i--) {
	    yearSelect.append("<option value='" + i + "'>" + i + "</option>");
	  }
	  yearSelect.val(birthdayArray[0]); // 年份

	  // 设置月份下拉框的值
	  for (var j = 1; j <= 12; j++) {
	    var monthValue = j < 10 ? "0" + j : j; // 格式化月份值，保证为两位数
	    monthSelect.append("<option value='" + monthValue + "'>" + monthValue + "</option>");
	  }
	  monthSelect.val(birthdayArray[1]); // 月份

	  // 设置日期下拉框的值
	  var year = parseInt(birthdayArray[0]);
	  var month = parseInt(birthdayArray[1]);
	  var maxDay = 0;
	  if (month === 2) {
	    // 闰年判断：能被4整除但不能被100整除，或者能被400整除的年份是闰年
	    if ((year % 4 === 0 && year % 100 !== 0) || year % 400 === 0) {
	      maxDay = 29; // 闰年2月份有29天
	    } else {
	      maxDay = 28; // 平年2月份有28天
	    }
	  } else if (month === 4 || month === 6 || month === 9 || month === 11) {
	    maxDay = 30; // 4、6、9、11月份有30天
	  } else {
	    maxDay = 31; // 其他月份有31天
	  }
	  for (var k = 1; k <= maxDay; k++) {
	    var dayValue = k < 10 ? "0" + k : k; // 格式化日期值，保证为两位数
	    daySelect.append("<option value='" + dayValue + "'>" + dayValue + "</option>");
	  }
	  daySelect.val(birthdayArray[2]); // 日期

	  // 获取性别
	  var sex = "${user.sex}";
	  var maleRadio = $("#man");
	  var femaleRadio = $("#woman");
	  
	  
	  // 根据性别选择单选框
	  if (sex == "男") {
	    maleRadio.prop("checked", true);
	  } else if (sex == "女") {
	    femaleRadio.prop("checked", true);
	  }
	});

	$(function() {
	  // 点击更改头像按钮时触发事件
	  $(".changehead").on("click", function(e) {
	    e.preventDefault();
	    // 触发隐藏的文件上传框的点击事件
	    $("#avatar").click();
	  });
	});

	var no = "${no}";
	if (no == "no") {
	  alert("请填写完整信息!");
	  no = "";
	} else if (no == "check") {
	  alert("请同意使用条款!");
	  no = "";
	} else if (no == "email") {
	  alert("邮箱请填写正确!");
	  no = "";
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
</script>
</html>