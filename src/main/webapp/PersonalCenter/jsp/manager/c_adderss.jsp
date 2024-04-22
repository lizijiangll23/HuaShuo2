<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	.first td{
		text-align:center;
	}
	/* 样式表 */
	.member-address-list {
	    position: relative;
	    margin-top: 20px;
	}
	
	.member-grid {
	    width: 100%;
	    border-collapse: collapse;
	}
	
	.member-grid th, .member-grid td {
	    padding: 10px;
	    text-align: left;
	    border-bottom: 1px solid #ccc;
	}
	
	.member-grid th {
	    background-color: #f2f2f2;
	}
	
	.member-grid tr:hover {
	    background-color: #f9f9f9;
	}
	
	.member-grid input[type="button"] {
	    padding: 5px 10px;
	    border: none;
	    background-color: #007bff;
	    color: #fff;
	    cursor: pointer;
	}
	
	.member-grid input[type="button"]:hover {
	    background-color: #0056b3;
	}
</style>
<body>
	<%@include file="head.jsp" %>	
	<!-- 个人中心主体部分 -->
	<div id="body">
		<div id="center">
			<div id="c-head">
				<!-- 当前选择位置 -->
				<span><a href="../PeopleCenter.jsp" id="a-title">个人中心</a></span>
				<span>></span>
				<span class="now">收货地址</span><!-- !!!通过点击获取 -->
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
									<li><a href="c_safe.jsp" id="safecenter">安全中心</a></li>
									<li><a href="#" id="adderss" style="color: #00a8ff;">收货地址</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 右边 -->
					<div id="center-right">
						<!-- 收货地址 -->
						<div id="c_adderss">
							<div class="adderss_title">
								<h4>
									新增收货地址
									<b>
										(已有
										<i class="warn">0</i>
										个收货地址最多添加10个收货地址)
									</b>
								</h4>
							</div>
							<b>
								<div class="member-address-submit">
									<form action="AdderssServlet" method="post" class="write_address">
										<input type="text" name="aid" style="display:none;" class="aid">
										<ul>
											<li class="form-item">
												<div class="address_name">
													<label class="label_name">
														收货人姓名
														<em class="text-warn">*</em>
													</label>
													<span class="form-act">
														<input type="text" name="address_name" id="input_name" placeholder="请输入用户名" >
													</span>
												</div>
											</li>
											<li class="form-item">
												<div class="address_name">
													<label class="label_name">
														收货地区
														<em class="text-warn">*</em>
													</label>
													<span class="form-act la">
														<select id="sheng" name="sheng">
														    <option value="请选择">请选择</option>
														</select>
														<select id="city" style="display: none;"name="city">
														    
														</select>
														<select id="qu" style="display: none;"name="qu">
														    
														</select>
													</span>
												</div>
											</li>
											<li class="form-item">
												<div class="address_name">
													<label class="label_name">
														详细地址
														<em class="text-warn">*</em>
													</label>
													<span class="form-act">
														<input type="text" name="address" id="address" placeholder="请输入详细地址" style="width: 800px;">
													</span>
												</div>
											</li>
											<li class="form-item">
												<label class="label_name">
													收货人手机
													<em class="text-warn">*</em>
												</label>
												<span class="form-act">
													<input type="text" name="phone" id="phone" placeholder="请输入11位手机号" maxlength="11" style="width: 340px;">
												</span>
											</li>
											<li class="form-item">
												<span class="form-act form-btn" id="btn_group">
													<input type="submit" class="btn btn-caution" id="address_submit" value="确定">
												</span>
												<span class="form-act" id="default">
													<label class="setting-default checkbox_box_label">设为默认</label>
													<div class="default_box">
														<input type="checkbox" id="check" name="check">
													</div>
													
												</span>
											</li>
										</ul>
									</form>
								</div>
								<div class="member-address-tit bottom">
									<h4>已有地址</h4>
								</div>
								<form action="#" method="get">
									<div class="member-address-list" style="position:relative;">
										<table class="member-grid">
											<tr>
												<th>收货人</th>
												<th>收货人地址</th>
												<th>联系电话</th>
												<th>操作</th>
											</tr>
											
											<tbody class="first">
											
												<c:forEach items="${list}" var="p">
													<tr>
														<td style="display:none;">${p.aid}</td>
														<td>${p.aname}</td>
														<td>${p.address}</td>
														<td>${p.aphone}</td>
														<td>
															<input type="button" value="删除">
															<input type="button" value="修改">
														</td>
													</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div>
								</form>
							</b>
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
<script src="../../js/city.js"></script>
<script>
$(function() {
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

	  
	  
	  $(document).ready(function() {
	    // 发送异步请求获取已有收货地址数量
	    $.ajax({
	      url: "../../../ChangeServlet",
	      type: "POST",
	      dataType: "json",
	      success: function(response) {
	        // 处理后端返回的数据
	        var addressCount = response.addressCount; // 假设后端返回的数据中有一个名为addressCount的字段表示地址数量
	        $(".warn").text(addressCount); // 将地址数量更新到页面上
	        
	      },
	      error: function(jqXHR, textStatus, errorThrown) {
	        console.log("请求失败：" + textStatus + "，" + errorThrown);
	      }
	    });
	  });

	  $(".write_address").submit(function(event) {
	    event.preventDefault(); // 阻止表单默认提交行为

	    var selectedProvince = $("#sheng").val();
	    var selectedCity = $("#city").val();
	    var selectedQu = $("#qu").val();

	    if (selectedProvince === "请选择" || selectedCity === "请选择" || selectedQu === "请选择") {
	      alert("请选择完整的地区信息"); 
	      return; 
	    }

	    var name = $("#input_name").val();
	    var address = $("#address").val();
	    var phone = $("#phone").val();

	    if (name.trim() === "" || address.trim() === "" || phone.trim() === "") {
	      alert("姓名、地址和手机号不能为空"); 
	      return; 
	    }
	    
	    if(phone.length != 11){
	    	alert("请输入正确的手机号");
	    	return;
	    }

	    // 若地区信息和姓名、地址、手机号都不为空，则继续提交表单
	    $(this).unbind("submit").submit();
	    
	    var no = "${no}";
		  if (no == "more") {
		    alert("每个用户最多只能添加10条地址!");
		    no = "";
		  }
	    
	  });
	  
	  $("#address_submit").click(function(){
		  location.reload();
	  })
	  
	 
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
	});
	
	// 获取所有删除按钮
	var deleteButtons = document.querySelectorAll('.member-grid input[value="删除"]');
	
	// 给每个删除按钮添加点击事件监听器
	deleteButtons.forEach(function(button) {
	    button.addEventListener('click', function() {
	        // 获取当前行
	        var row = this.parentNode.parentNode;
	        
	        // 获取当前行的第一个td元素（即aid所在的td元素）
	        var aidCell = row.querySelector('td:first-child');
	
	        // 获取aid的值
	        var aid = aidCell.textContent || aidCell.innerText;
			
	        var sure = confirm("确定吗");
	        
	        if(sure){
	        	window.location.href="../../../DeleteAdderssServlet?aid="+aid;
	        }
	    });
	});
	
	
	var updateButtons = document.querySelectorAll('.member-grid input[value="修改"]');
	
	updateButtons.forEach(function(button) {
	    button.addEventListener('click', function() {
	        // 获取当前行
	        var row = this.parentNode.parentNode;
	      	  
	        // 获取当前行的第一个td元素（即aid所在的td元素）
	        var aidCell = row.querySelector('td:first-child');
	
	        // 获取aid的值
	        var aid = aidCell.textContent || aidCell.innerText;
	        
	        var name = row.querySelector('td:nth-child(2)');
	        name = name.textContent || name.innerText;
	        
	        var address = row.querySelector('td:nth-child(3)');
	        address = address.textContent || address.innerText;
	        
	        var phone = row.querySelector('td:nth-child(4)');
	        phone = phone.textContent || phone.innerText;
	        
	        $("#input_name").val(name);
	        $("#address").val(address);
	        $("#phone").val(phone);

	     	// 更新表单的action属性
	        $(".write_address").attr("action", "../../../UpdateAdderssServlet");
	        
	     	$(".aid").val(aid);
	     	
	        $("#address_submit").val("修改");
	        
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
</script>



</html>