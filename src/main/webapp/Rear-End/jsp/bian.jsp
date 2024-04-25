<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link href="../css/hd.css" rel="stylesheet" type="text/css"/>
		<script src="../js/jquery-2.1.1.min.js"></script>
		
	<div id="to">
	<div id="cai">
		<div id="tox"></div>
		<p id="name">小李</p>
	</div>
	<img src="../imgs/品牌－华硕.png" id="pin" />
	<div id="you">
		<img src="../imgs/刷新.png" / class="ju"><img src="../imgs/全屏.png"
			class="ju" /><span style="color: white; font-size: 20px;" class="ju">操作员：小李</span>
		<img src="../imgs/三个点点 (1).png" style="margin-left: 30px;" />
	</div>
</div>
<div id="bian">
	<ul id="accordion">
		<li>
			<div class="item">
				数据统计<img class="xia" src="../imgs/下拉图标.png" />
			</div>
			<ul class="sub-items hidden">
				<li onclick="shu()">数据分析</li>
			</ul>
		</li>
		<li>
			<div class="item">
				商品中心<img class="xia" src="../imgs/下拉图标.png" />
			</div>
			<ul class="sub-items hidden">
				<li onclick="li()">商品列表</li>
				<li>添加商品</li>
			</ul>
		</li>
		<li>
			<div class="item">
				订单中心<img class="xia" src="../imgs/下拉图标.png" />
			</div>
			<ul class="sub-items hidden">
				<li>订单列表</li>
				<li>退货款管理</li>
			</ul>
		</li>
		<li>
			<div class="item">
				营销中心<img class="xia" src="../imgs/下拉图标.png" />
			</div>
			<ul class="sub-items hidden">
				<li onclick="lun()">轮播图管理</li>
			</ul>
		</li>
		<li>
			<div class="item">
				用户管理<img class="xia" src="../imgs/下拉图标.png" />
			</div>
			<ul class="sub-items hidden">
				<li onclick="yon()">用户账号管理</li>
				<li onclick="guan()">管理员账号管理</li>
			</ul>
		</li>
	</ul>
</div>
	<script>
		function shu() {
			window.location.href = "ShouYie";
		}
		function lun() {
			window.location.href = "LunTu";
		}
		function yon() {
			window.location.href = "ChaYonHu";
		}
		function guan() {
			window.location.href = "GuanLi";
		}
		function li() {
			window.location.href = "Shang";
		}
		</script>