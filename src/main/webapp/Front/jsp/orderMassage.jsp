<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="../css/PeopleCenter.css">
<link rel="stylesheet" href="../css/orderMassages.css">
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
.selected{
  border-color: #00a8ff;
}
.serachIcon {
	border:none;
    width: 48px;
    height: 100%;
    border-radius: 0 15px 15px 0;
    background-image: url(../imgs/search.png);
    background-size: 15px 18px;
    background-repeat: no-repeat;
    background-position: 15px 6px;
    background-color: #ccc;
    cursor: pointer;
    float: right;
}
.carts{
	position: relative;
    padding: 0 15px 0 48px;
    color: #ccc;
    line-height: 38px;
    font-size: 15px;
    background-color: #555;
    background-image: url(../imgs/cart.png);
    background-size: 29px 27px;
    background-position: 15px 6px;
    background-repeat: no-repeat;
    cursor: pointer;
    height: 38px;
    width: 110px;
}
.clearfix li {
    float: left;
    width: 244px;
    height: 144px;
    font-size: 14px;
    box-sizing: border-box;
    margin-bottom:10px;
}
.cars li{
	height:80px;
}
td{
    cursor: default;
}
</style>
</head>
<body>
<!-- 导航栏 -->
<%@ include file="head.jsp" %>
<!-- 内容 -->
<div class="center" style="background-color: #f2f2f2;">
	<div class="page">
		<div class="bread-crumbs">
		
		</div>
		<div class="section">
			<div class="right-main-margin">
				<div id="main">
					<div class="cart-title">
						<h1>购物车</h1>
						<span>购物车>填写和提交订单信息</span>
					</div>
					<div id="order_container" class="order-container" style="margin-bottom: 65px;">
						<form action="../../SubmitOrderServlet" method="get">
							<div class="order_main">
								<div class="order_shipping">
									<div class="order-section-title">
										<b>收货信息</b>
									</div>
									
									<div class="order-section-content">
										<ul id="change_shipping" class="change-shipping clearfix">
											<li class="shipping-item">
												<input type="radio" class="action-change-shipping" name="address" >
												<label>
													<p class="addr_name">徐智广</p>
													<div class="add">
														<p>12345678910</p>
														<p style="height:66px;overflow:hidden;">湖南省 株洲市 石峰区</p>
													</div>
													<em>
														<span class="lnklike">编辑</span>
														<span class="lnklike">删除</span>
													</em>
												</label>
											</li>
											<li class="shipping-item">
												<input type="radio" class="action-change-shipping" name="address" >
												<label>
													<p class="addr_name">徐智广</p>
													<div class="add">
														<p>12345678910</p>
														<p style="height:66px;overflow:hidden;">湖南省 株洲市 石峰区</p>
													</div>
													<em>
														<span class="lnklike">编辑</span>
														<span class="lnklike">删除</span>
													</em>
												</label>
											</li>
											<li id="add_new_addr">
												<label>
													<div class="addaddress">
														<label class="hand">
															<img src="../imgs/加.png" id="adds">
															<span>添加新地址</span>
														</label>
													</div>
												</label>
												<div class="add_new_addr_box" style="display:none;">
													<table class="fill-shipping">
														<tr>
															<th>收货人姓名<em>*</em></th>
															<td>
																<input type="text" name="address_name" id="input_name" placeholder="请输入用户名" >
															</td>
														</tr>
														<tr>
															<th>收货地区<em>*</em></th>
															<td class="la">
																<select id="sheng" name="sheng">
																    <option value="请选择">请选择</option>
																</select>
																<select id="city" style="display: none;"name="city">
																    
																</select>
																<select id="qu" style="display: none;"name="qu">
																    
																</select>
															</td>
														</tr>
														<tr>
															<th>详细地址<em>*</em></th>
															<td>
																<input type="text" name="address" id="address" placeholder="请输入详细地址" style="width: 800px;">	
															</td>
														</tr>
														<tr>
															<th>收货人手机<em>*</em></th>
															<td>
																<input type="text" name="phone" id="phone" placeholder="请输入11位手机号" maxlength="11" style="width: 340px;">	
															</td>
														</tr>
														<tr>
															<th></th>
															<td>
																<a href="#" class="subbtn">确认收货信息</a>
																<a href="#" class="cancel">取消</a>
															</td>
														</tr>
													</table>
												</div>
											</li>
										</ul>
									</div>
								</div>
								
								<div class="cart-main-wrap">
									<div class="common-page order-page">
										<div id="cart_main" class="cart-main">
											<div class="order-section-title">
												<b>商品清单</b>
											</div>
											<ul class="clearfix order-page-head ">
												<li class="cart-goods" style="width: 490px;text-align: left;height: 35px;">商品</li>
												<li class="cart-price" style="width: 135px;height: 35px;">销售价</li>
												<li class="cart-num" style="width: 245px;height: 35px;">数量</li>
												<li class="cart-subtotal"style="width: 171px;height: 35px;">小计</li>
											</ul>
										</div>
										<div class="cart-list">
											
											<c:forEach items="${shops}" var="p">	
												<div class="cart-item">
													<ul class="clearfix cars">
														<li class="cart-goods" style="width: 490px;text-align: left;">
															<div class="p-pic">
																<img src="../imgs/惠.jpg">
															</div>
															<div class="p-title">
																<a href="#">${p.details}</a>
															</div>
														</li>
														<li style="display:none;">${p.gid}</li>
														<li class="cart-price" style="width: 135px;text-align: center;line-height: 80px;">${p.uprice}</li>
														<li class="cart-num" style="width: 245px;text-align: center;line-height: 80px;">${p.counts}</li>
														<li class="cart-subtotal" style="width: 171px;text-align: center;line-height: 80px;"></li>
													</ul>
												</div>
											</c:forEach>
												
										</div>
									</div>
								</div>
							</div>
							<ul class="order-clearing-wrap">
								<table id="order_clearing" class="order-clearing">
									<caption>结算信息</caption>
									<tr>
										<td></td>
										<td id="order_price" class="order-price">
											<div class="inner">
												<ul>
													<li class="total">
														<span class="label">
															<em>总金额：</em>
														</span>
														<span class="price">
															<b></b>
														</span>	
													</li>
												</ul>
												<p class="btnarea">
													<input type="submit" class="onbtn" value="提交订单">
													<a href="gouwuche.jsp" class="btn-link">返回购物车></a>
												</p>	
											</div>
										</td>
									</tr>
								</table>
							</ul>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp" %>
</body>
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script src="../js/city.js"></script>
<script type="text/javascript">
$(function(){
   $(document).ready(function() {
	    // 发送异步请求获取已有收货地址数量
	    $.ajax({
	      url: "../../ShopServlet",
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
   $(".shipping-item").click(function() {
	    $(".shipping-item").removeClass("selected"); // 移除所有li的选中样式
	    $(this).addClass("selected"); // 添加当前点击的li的选中样式
	  });
   var name;
	  var province;
	  var cityData = window.a; // 获取全局变量a的值

	  for (var a in cityData) {
	    var cl = "s" + a;
	    var sheng = cityData[a].name;

	    $("<option>").addClass(cl).appendTo("#sheng").html(sheng);
	  }

	  $("#sheng").change(function() {
	    name = $(this).val();
	    if (name === "请选择") {
	      $("#city option").remove();
	      // 隐藏第二级城市选项
	      $("#city").hide();
	      // 清空区级选项并隐藏
	      $("#qu option").remove();
	      $("#qu").hide();
	      return;
	    }
	    for (var a in cityData) {
	      if (name == cityData[a].name) {
	        province = a;
	      }
	    }
	    var cities = cityData[province].child;
	    $("#city option").remove();
	    var selectedProvince = $("#sheng option:selected").text();
	    $("<option>").appendTo("#city").html("请选择");
	    for (var b in cities) {
	      $("<option>").appendTo("#city").html(cities[b].name);
	    }

	    // 显示第二级城市选项
	    $("#city").show();
	    // 清空区级选项并隐藏
	    $("#qu option").remove();
	    $("#qu").hide();
	  }); 

	  $("#city").change(function() {
	    var name = $(this).val();
	    if (name === "请选择") {
	      // 清空区级选项并隐藏
	      $("#qu option").remove();
	      $("#qu").hide();
	      return;
	    }
	    var cities = cityData[province].child;
	    for (var b in cities) {
	      if (name == cities[b].name) {
	        var quData = cities[b].child;
	        $("#qu option").remove();
	        $("<option>").appendTo("#qu").html("请选择");
	        for (var c in quData) {
	          $("<option>").appendTo("#qu").html(quData[c]);
	        }
	        // 显示区级选项
	        $("#qu").show();
	      }
	    }
	  });

	  $("#qu").change(function() {
	    var selectedProvince = $("#sheng option:selected").text();
	    var selectedCity = $("#city option:selected").text();
	    var selectedQu = $(this).val();
	    console.log("选中的省份：" + selectedProvince);
	    console.log("选中的城市：" + selectedCity);
	    console.log("选中的区：" + selectedQu);
	  });
	//绑定输入框的 input 事件
	  $("#phone").on("input", function() {
	    // 获取输入框的值
	    var value = $(this).val();
	    // 使用正则表达式将非数字字符替换为空字符串
	    var newValue = value.replace(/\D/g, "");
	    // 更新输入框的值
	    $(this).val(newValue);
	  });
	
	  // 绑定输入框的 keydown 事件
	  $("#phone").on("keydown", function(e) {
	    // 获取按键的keyCode
	    var keyCode = e.which || e.keyCode;
	    // 允许输入数字和删除键
	    if ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 96 && keyCode <= 105) || keyCode == 8) {
	      return true;
	    }
	    e.preventDefault();
	  });
	  
	  $(".hand").click(function(){
		  $(".add_new_addr_box").css("display","block");
	  });
	  
	  $(".cancel").click(function() {
		  $(".add_new_addr_box").css("display", "none"); // 隐藏add_new_addr_box的div

		  // 清空输入框的值
		  $("#input_name").val(""); // 收货人姓名
		  $("#sheng").val("请选择"); // 收货地区省份
		  $("#city").val(""); // 收货地区城市
		  $("#qu").val(""); // 收货地区区县
		  $("#address").val(""); // 详细地址
		  $("#phone").val(""); // 收货人手机
		});
	  
	  function calculateSubtotals() {
		  var totalAmount = 0; // 总金额
		  $(".cart-item").each(function() {
		    var $item = $(this);
		    var price = parseFloat($item.find(".cart-price").text().replace("￥", ""));
		    var quantity = parseInt($item.find(".cart-num").text());
		    var subtotal = price * quantity;
		    $item.find(".cart-subtotal").text("￥" + subtotal.toFixed(2));

		    totalAmount += subtotal; // 将小计金额累加到总金额中
		  });
		  $("#order_price .price b").text("￥" + totalAmount.toFixed(2)); // 更新总金额的显示
		}

		calculateSubtotals(); // 计算初始的小计金额和总金额
		
		
		$(".onbtn").click(function(event){
			event.preventDefault();
			var orders = []; // 存储订单列表中的字段值的数组

			$(".cart-item").each(function(index) {
			    var $item = $(this);
			    var order = {}; // 存储单个订单字段值的对象

			    // 获取订单字段的值
			    order.imagePath = $item.find(".p-pic img").attr("src");
			    order.details = $item.find(".p-title a").text();
			    order.gid = $item.find("li:eq(1)").text();
			    order.uprice = $item.find(".cart-price").text();
			    order.counts = $item.find(".cart-num").text();
			    order.subtotal = $item.find(".cart-subtotal").text();
			    // 将订单对象添加到数组中
			    orders.push(order);
			   
			});
			var urlParams = "";
			var a = 0;
			for (var i = 0; i < orders.length; i++) {
			    var order = orders[i];
			    urlParams += "&imagePath" + i + "=" + encodeURIComponent(order.imagePath);
			    urlParams += "&details" + i + "=" + encodeURIComponent(order.details);
			    urlParams += "&gid" + i + "=" + encodeURIComponent(order.gid);
			    urlParams += "&uprice" + i + "=" + encodeURIComponent(order.uprice);
			    urlParams += "&counts" + i + "=" + encodeURIComponent(order.counts);
			    urlParams += "&subtotal" + i + "=" + encodeURIComponent(order.subtotal);
			    a+=1;
			}
			
			var url = "../../SubmitOrderServlet?" + urlParams.substring(1); // 去掉第一个&符号

			// 页面跳转到Servlet界面
			window.location.href = url+"&a="+a;
		})
		
		
		
});
</script>
</html>