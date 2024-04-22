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
<link rel="stylesheet" href="../css/gouwuche.css">
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
.serachIcon{
	border:none;
}
</style>
	</head>
	<body>
	<!-- 导航栏 -->
	<%@ include file="head.jsp" %>
		<!-- 内容 -->
		<div class="bread-crumbs"></div>
		<div class="centere" style="margin-top: 45px;">
			<form action="../../IntoShopCartsServlet" method="post">
				<div class="cart-container">
					<div class="cart-header">
						<ul class="clearfix">
							<li class="cart-input" style="width: 115px;">
								<label>
									<input class="checkAll" type="checkbox">
									全选
								</label>
							</li>
							<li class="cart-goods" style="width: 490px;text-align: left;">商品</li>
							<li class="cart-price" style="width: 190px;">销售价</li>
							<li class="cart-num" style="width: 96px;">数量</li>
							<li class="cart-subtotal">小计</li>
							<li class="cart-action" style="width: 146px;text-align: right;">操作</li>
						</ul>
					</div>		
			
					<div class="cart-list">
						<c:forEach items="${shop}" var="p">
							<div class="cart-item">
								<div id="cart-product" calss="cart-product">
									<ul class="clearfix">
										<li class="cart-input" style="width: 115px;margin-left: 16px;">
											<input class="check" type="checkbox" name="gid" value="${p.gid}">
										</li>
										<li class="cart-goods" style="width: 490px;text-align: left;">
											<div class="p-pic">
												<img src="../imgs/惠.jpg">
											</div>
											<div class="p-title">
												<a href="#">${p.details}</a>
											</div>
										</li>
										<li style="display:none;">${p.gid}</li>
										<li class="cart-price" style="width: 190px;">${p.uprice}</li>
										<li class="cart-num" style="width: 96px;">${p.counts}</li>
										<li class="cart-subtotal"></li>
										<li class="cart-action " style="width: 146px;text-align: right;">
											<p class="chacha">X</p>
										</li>
									</ul>
								</div>
							</div>
						</c:forEach>
					</div>
			
					<div class="order">
						<a class="btn-link">继续购买</a>
						<p class="ordersro">
							共
							<span class="allNum">0</span>
							件商品，已选择
							<span class="chooseNum">0</span>
							件
						</p>
						<input type="submit" value="去结算" class="btnttu">
						<div class="total-price">
							<span>合计</span>
							<b>￥0.00</b>
						</div>
					</div>
				</div>
			</form>
		</div>
		<%@include file="footer.jsp" %>
</body>
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	  // 当点击全选复选框时
	  $(".checkAll").click(function() {
	    // 获取全选复选框的选中状态
	    var isChecked = $(this).prop("checked");

	    // 设置其他复选框的选中状态与全选复选框相同
	    $(".check").prop("checked", isChecked);

	    // 计算合计金额
	    calculateTotal();
	    // 更新已选择的商品件数
	    updateSelectedCount();
	  });

	  // 当点击单个商品的复选框时
	  $(".check").click(function() {
	    // 检查是否所有复选框都被选中
	    var allChecked = $(".check").length === $(".check:checked").length;

	    // 设置全选复选框的选中状态
	    $(".checkAll").prop("checked", allChecked);

	    // 计算合计金额
	    calculateTotal();
	    // 更新已选择的商品件数
	    updateSelectedCount();
	  });

	  // 更新已选择的商品件数函数
	  function updateSelectedCount() {
	    var selectedCount = $(".check:checked").length; // 获取选中的复选框数量
	    $(".chooseNum").text(selectedCount); // 更新已选择的商品件数显示

	    if (selectedCount === 0) {
	      $(".ordersro").hide(); // 如果没有选中的商品，隐藏已选择的商品件数显示
	    } else {
	      $(".ordersro").show(); // 如果有选中的商品，显示已选择的商品件数显示
	    }
	  }

	  // 当页面加载完成时更新已选择的商品件数
	  updateSelectedCount();

	  // 在calculateTotal函数中添加updateSelectedCount函数的调用
	  // 计算合计金额函数
	  function calculateTotal() {
	    var totalPrice = 0;

	    // 遍历每个被选中的商品
	    $(".check:checked").each(function() {
	      var subtotal = parseFloat(
	        $(this)
	          .parents(".cart-item")
	          .find(".cart-subtotal")
	          .text()
	          .replace("￥", "")
	      );
	      totalPrice += subtotal;
	    });

	    // 更新合计金额显示
	    $(".total-price b").text("￥" + totalPrice.toFixed(2));

	    // 更新已选择的商品件数
	    updateSelectedCount();
	  }

	  // 绑定点击"X"图标的事件
	  $(".chacha").click(function() {
	    var liElement = $(this).closest(".cart-item").find("li:hidden");
	    var gid = liElement.text().trim();

	    var sure = confirm("确定删除吗？");
	    if (sure) {
	      window.location.href = "../../DeleteShopCartsServlet?gid=" + gid;
	    }
	  });

	  // 获取已有收货地址数量
	  $(document).ready(function() {
	    $.ajax({
	      url: "../../ShopServlet",
	      type: "POST",
	      dataType: "json",
	      success: function(response) {
	        var addressCount = response.addressCount;
	        $(".number").text(addressCount);
	        $(".allNum").text(addressCount);
	      },
	      error: function(jqXHR, textStatus, errorThrown) {
	        console.log("请求失败：" + textStatus + "，" + errorThrown);
	      }
	    });
	  });

	  // 计算小计金额和合计金额
	  calculateSubtotals(); // 初始计算小计金额
	  $(".check").click(function() {
	    calculateSubtotals(); // 重新计算小计金额
	  });

	  // 计算小计金额函数
	  function calculateSubtotals() {
	    $(".cart-item").each(function() {
	      var $item = $(this);
	      var price = parseFloat(
	        $item
	          .find(".cart-price")
	          .text()
	          .replace("￥", "")
	      );
	      var quantity = parseInt($item.find(".cart-num").text());
	      var subtotal = price * quantity;
	      $item.find(".cart-subtotal").text("￥" + subtotal.toFixed(2));
	    });

	    // 计算合计金额
	    calculateTotal();
	  }

	  // 继续购买按钮点击事件
	  $(".btn-link").click(function() {
	    // 处理继续购买的逻辑
	  });

	  // 提交表单时
	  $("form").submit(function(e) {
	    // 检查是否有选中的复选框
	    if ($(".check:checked").length === 0) {
	      e.preventDefault(); // 阻止表单的提交和页面的跳转
	      alert("请至少选择一件商品");
	    }
	  });
	  
	  // 更新选中的gid值
	  function updateSelectedGids() {
	    var selectedGids = [];

	    // 遍历所有选中的复选框
	    $(".check:checked").each(function() {
	      var gid = $(this).closest(".cart-item").find("li:hidden").text().trim();
	      selectedGids.push(gid);
	    });

	    // 将选中的gid值设置到隐藏的input元素中
	    $("#selectedGids").val(selectedGids.join(','));
	  }
	  
	  // 监听复选框的点击事件
	  $(".check").click(function() {
	    updateSelectedGids();
	  });
	});
</script>
</html>