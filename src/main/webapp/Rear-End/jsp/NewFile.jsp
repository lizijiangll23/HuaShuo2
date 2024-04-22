	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link href="../css/hd.css" rel="stylesheet" type="text/css"/>
		<script src="../js/jquery-2.1.1.min.js"></script>
	</head>
	<body>
			<jsp:include page="bian.jsp"></jsp:include>
		<div id="lan">
			<div id="tian">
				<div id="tian_1">
				<div class="qi">
					<p id="tq">株洲天气</p>
					<p id="zhi">空气质量:<span id="you_t">优</span></p>
				</div>
				<div class="qi">
					<div class="qi_1" style="width: 30%;"><img src="../imgs/多云.png"/></div>
					<div class="qi_2" style="width: 70%;"><p id="zhou">今天（周三）</p>
									<p id="qi_3">阴</p>
									<p id="du">6°C~15°C</p>
									</div>
				</div>
				<div class="qi">
					<div class="qi_1" style="width: 30%;"><img src="../imgs/多云.png"/></div>
					<div class="qi_2" style="width: 70%;"><p id="zhou">今天（周三）</p>
									<p id="qi_3">阴</p>
									<p id="du">6°C~15°C</p>
									</div>
				</div>
				<div class="qi">
					<div class="qi_1" style="width: 30%;"><img src="../imgs/多云.png"/></div>
					<div class="qi_2" style="width: 70%;"><p id="zhou">今天（周三）</p>
									<p id="qi_3">阴</p>
									<p id="du">6°C~15°C</p>
									</div>
				</div>
				</div>
			</div>
			<div class="shu">
				<div class="min"><p>总订单金额</p></div>
				<div class="nei">
				<div class = "ton1" id = "tiao">
					<jsp:include page="tiao.jsp" />
					</div>
				</div>
				<hr />
				<div class="cha"><p>日销售金额 ￥ 1W</p></div>
			</div>
			<div class="shu">
				<div class="min"><p>访客量</p></div>
				<div class="nei" >
					<div name="container" class = "ton">
					<jsp:include page="tonjix.jsp" />
					</div>
				</div>
				<hr />
				<div class="cha"><p>日销售金额 ￥ 1W</p></div>
			</div>
			<div class="shu">
				<div class="min"><p>最近收入</p></div>
				<div class="nei">
					<h2 style="margin:0px 0px 8px 8px; float: left;">￥10000</h2>
					<div class = "tony" id = "si">
					<jsp:include page="radar.jsp" />
					</div>
				</div>
				<hr />
				<div class="cha"><p>日销售金额 ￥ 1W</p></div>
			</div>
			<div class="shu">
				<div class="min"><p>总订单量</p></div>
				<div class="nei">
					<h2 style="margin:0px 0px 8px 8px;">￥10000</h2>
					<div class = "tonz" id = "bin">
					<jsp:include page="bin.jsp" />
					</div>
				</div>
				<hr />
				<div class="cha"><p>日销售金额 ￥ 1W</p></div>
			</div>
			<div id = "den">
				<div id="shan_d"><p>登录日志</p></div>
				<div id="sha_x">
					<table id="biao1">
					    <tr>
					        <th>用户名</th>
					        <th>地址</th>
					        <th>IP</th>
					        <th>运营商</th>
					        <th>登录时间</th>
					    </tr>
					    <c:forEach items="${rizhi}" var="u">
					    <tr>
					        <td>${u.username}</td>
					        <td>${u.address}</td>
					        <td>${u.ip}</td>
					        <td>${u.isp}</td>
					        <td>${u.login_time}</td>
					    </tr>
					    </c:forEach>
					  </table>
					  <div id="fen"></div>
					  </div>
			</div>
			<div id="din">
				<div id="shan_d"><p>最新订单</p></div>
				<div id="xd">
					 <table id="x">
					 <c:forEach items="${dindan}" var="u">
					            <tr>
					                <td>订单号</td>
					                <td>${u.din}</td>
					                <td>下单客户</td>
					                <td>${u.name}</td>
					            </tr>
					            </c:forEach>
					</table>
				</div>
			</div>
		</div>
	</body>
	<script src="../js/ce.js">
		 
	</script>
