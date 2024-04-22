<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/footerorhead.css">
<link rel="stylesheet" href="../css/tishi.css">
<link rel="stylesheet" href="../css/xiangqing.css">
<title>Toggle Highlight on Click</title>
</head>
<style>
.fixed-image {
    position: sticky; /* 修改为粘性定位 */
    top: 0;
    left: 50%; /* 水平居中 */
    transform: translateX(-50%); /* 水平居中 */
}

.selected {
    background-color: lightblue;
}

.fwsjiji {
    margin-right: 10px;
    padding: 4px 12px 3px 14px;
    border: 1px solid #d2cdcd;
    cursor: pointer;
    display: inline-block;
    
}

.fwsjiji:hover {
    border-width: 1px;
    border-style: solid;
    border-color: rgb(30, 124, 255);
    border-image: initial;
    opacity: 1; /* 鼠标悬停时恢复完全不透明 */
}
		
		.active1:hover {
		    border-width: 1px;
		    border-style: solid;
		    border-color: rgb(30, 124, 255);
		    border-image: initial;
		}
		.peizsz{
			    margin-top: -21px;
			    margin-left: 106px;
		}
	
					
		.active1 {
		    margin-bottom: 10px; /* 添加下方间距 */
		    margin-right: 10px;
		    padding: 4px 12px 3px 14px;
		    border: 1px solid #d2cdcd;
		    cursor: pointer;
		    display: inline-block;
		}
		.purchas{
			color: red;
			margin-left: 107px;
		}
		
		.totalu{
		color: red;
		}
		
		.totalPrice{
		color: red;
		
		}
		
		element.style {
    		color: red;
}

</style>
<body>
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
									<input type="text" class="box" name="sc">
									<input type="submit" value=" " class="serachIcon"></input>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
    <div class="zhuymian">
        <div class="zhong">
			<div class="pages">
				<span class="page_label">当前位置：</span>
				<div class="bread_crumbs">
					<a>首页</a>
					<span>></span>
					<a>轻薄笔记本</a>
					<span>></span>
					<a>灵耀系列</a>
					<span>></span>
					<a>灵耀14</a>
				</div>
			</div>
			<div class="left">
    <div class="move_box rel">
        <div class="tupian" >
            <img class="tuyie" src="../imgs/电脑1.jpg">
            <div class="carousel_img">
                <img class="wosvb" src="../imgs/右边.png">
                <img class="qwefv" src="../imgs/左边.png">
                <div class="img_list_body">
                    <ul class="img_list">
                        <li>
                            <img class="small_main_img " alt="You Image" src="../imgs/电脑1.jpg" >
                        </li>
                        <li>
                            <img class="small_main_img " src="../imgs/图片2-3.jpg">
                        </li>
                        <li>
                            <img class="small_main_img " src="../imgs/图片2-4.jpg">
                        </li>
                        <li>
                            <img class="small_main_img " src="../imgs/图片2-5.jpg" >
                        </li>
                        <li>
                            <img class="small_main_img " src="../imgs/电脑2.jpg" >
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
            
			<!--右边商品栏-->
			<div class="zhoxiao">
				<div class="main_title">
					华硕灵耀14 2024 全新酷睿标压Ultra7 2.8K 120Hz OLED屏高颜值AI超轻薄商务办公笔记本电脑 
					 (155H 32G 1T 预装正版永久Office)冰川银
				</div>
				<div class="subtitle">
					<span class="s20">晒单享一年意外险&30元大红包！APP购机享花呗3期免息！</span>
					<a>&nbsp;&nbsp;&nbsp;&nbsp;十周年庆！享3年整机保修+保内3次清洁，晒单领笔记本支架</a>
				</div>
				<div class="main_attributes">
					<div class="tribute">
						<div>
							<img src="../imgs/time@1x.png" class="tp">
							<span class="pron">限时抢购</span>
						</div>
						<div class="tmdt">
							<span class="dai">距离结束剩：</span>
							<span class="jings"></span>
						</div>
						<div class="qian">
							<div class="label">现实抢购</div>
							<div class="mall_price">
								
								<span>￥6799</span>
								</div>
							<div class="qiangq">￥7499.00</div>
							
							<div class="wocto">
								<img src="../imgs/msg (1).png">
								<div class="wow">活动规则</div>
							</div>
							
							<div class="wirp">
								<div class="yinjh">优惠信息
								<span class="wenzy">包寄</span>
								<span>订单总金额满10元包邮</span>
								</div>
								<div class="discount_project">
									<div class="discount_title">赠品</div>
									<div class="tptpo">
										<img src="../imgs/电脑2.jpg">
										<div class="ollo">+1</div>
									</div>
									<div class="tinf">
										<img src="../imgs/电脑2.jpg">
										<div class="ol">+1</div>
										
									</div>
								</div>
							</div>
							
						</div>
						<div class="dotted_line">
							
						</div>
					</div>
					
					<div class="attributes_iteml">
						<div class="labeloy">官网权益</div>
						<div class="item_content">
							<samp class="mr20">· 7天无理由退货（激活后不支持）</samp>
							<samp class="mr20">· 晒单享意外险*</samp>
							<samp class="mr20">· 享分期免息优惠*</samp>
						</div>
						
					</div>
				</div>
						
<div class="attributes_item">
		    <div class="otlabel">选择配置</div>
		    <div class="peizsz">
		        <div class="active1" data-price="6799" onclick="selectOption(this)">Ultra7 32G 1TB 2.8K 冰川银 ￥6799</div>
		        
		        <div class="active1" data-price="6999" onclick="selectOption(this)">Ultra7 32G 1TB 2.8K 夜空蓝 ￥6999</div>
		        
		        <div class="active1" data-price="7999" onclick="selectOption(this)">Ultra9 32G 1TB 2.8K 冰川银 ￥7999</div>
		        
		        <div class="active1" data-price="5999" onclick="selectOption(this)">i9-13900H 16G 1TB 2.5K 冰川银 ￥5999</div>
		        
		        <div class="active1" data-price="6299" onclick="selectOption(this)">i9-13900H 32G 1TB 2.5K 冰川银 ￥6299</div>
		    </div>
		</div>
									
					<div class="attributes">
    <div class="ndmzt">服务升级</div>
    <div class="item_content">
        <div class="fwsjiji" onclick="toggleSelection(this)">新机开荒 ￥49.00</div>
        
        <div class="fwsjiji" onclick="toggleSelection(this)">2年硬件上门维修 ￥99.00</div>
    </div>
</div>
				<div class="content">
    <div class="uiydn">加购商品</div>
    <div class="nbnbt">
        <div class="add_goods_item">
            <div class="utton">
            <img class="tyuirq" src="../imgs/10475497555310.png">
                <div class="viyu">
                    <div class="add_goods_name">
                        a 豆无限蓝牙鼠标
                    </div>
                    <div class="ttpo">29.00</div>
                    <div class="olld">
                        <i>￥59</i>
                    </div>
                </div>
                <div class="go1" onclick="toggleCheckbox()">
				<input type="checkbox" id="checkbox" />
					</div>
                </div>
            </div>
        </div>
					<div class="add_goods_item">
            <div class="utton">
            <img class="tyuirq" src="../imgs/键盘.png">
                <div class="viyu">
                    <div class="add_goods_name">
                        棉花糖蓝牙键盘
                    </div>
                    <div class="ttpo">179.00</div>
                    <div class="olld">
                        <i>￥219</i>
                    </div>
                </div>
                 <div class="go1" onclick="toggleCheckbox()">
				<input type="checkbox" id="checkbox" />
					</div>
                </div>
            </div>
					 <div class="add_goods_item">
            <div class="utton">
            <img class="tyuirq" src="../imgs/音响.jpg">
                <div class="viyu">
                    <div class="add_goods_name">
                        灵耀AX小魔方 PRO
                    </div>
                    <div class="ttpo">359.00</div>
                    <div class="olld">
                        <i>￥450</i>
                    </div>
                </div>
                <div class="go1" onclick="toggleCheckbox()">
				<input type="checkbox" id="checkbox" />
					</div>
                </div>
            </div>

					 <div class="add_goods_item">
            <div class="utton">
            <img class="tyuirq" src="../imgs/鼠标垫.jpg">
                <div class="viyu">
                    <div class="add_goods_name">
                       a豆无线充电鼠标垫二代
                    </div>
                    <div class="ttpo">79.00</div>
                    <div class="olld">
                        <i>￥89</i>
                    </div>
                </div>
                <div class="go1" onclick="toggleCheckbox()">
				<input type="checkbox" id="checkbox" />
					</div>
                </div>
            </div>
		</div>

<div class="item">
    <div class="qding">购买数量</div>
   <div class="ilko">
    <div class="mcounter">
        <img class="m202" src="../imgs/reduce.png" onclick="decrease()">
        <img class="addnumber_ico" src="../imgs/add.png" onclick="increase()">
        <span class="yoyo">1</span>
    </div>
</div>
     <div class="purchas">
        总价：<span id="totalPrice">￥0.00</span>
    </div>
</div>
<script src="../js/jquery-2.1.1.min.js"></script>
<div class="tyofn">
    <div onclick="openPopup()" class="add_car">加入购物车</div>
    <div class="now">立刻购买</div>
    <div class="overlay" id="overlay">
      <div class="popup" id="popup">
        <span class="close" onclick="closePopup()">×</span>
        <div class="Jiar">
          <img src="../imgs/success.png" class="Wentr">
          <p style="text-align:center;">加入购物车</p>
        </div>
        <div class="Jxu">
          <button class="JxGm" name="action" value="continue" onclick="closePopup()">继续购买</button>
          <button class="JxGt" name="action" value="gowucho" onclick="goToCart()">进入购物车</button>
        </div>
      </div>
    </div>
  </div>

				
				<div class="watch_and_watch">
					<div class="watctitle">
						<div class="f426">
							<span class="a1">我看了又看</span>
						</div>
					</div>
					<div class="swiperlists">
						<div class="insideList" style="left: 0px;">
							<a class="a4">
								<img src="../imgs/15433353495253.jpg" alt="You tiy" class="af">
								<div class="sdsf">3年全面保 (仅限随新机一起购买）</div>
								<div class="add_goods_namew">(i7-1165G7 锐炬Xe 16G 512G 高色域 低蓝光护眼屏)</div>
								<div class="trotro">￥399</div>
							</a>
							<a class="a4">
								<img src="../imgs/猜你想看1.jpg" class="af">
								<div class="sdsf">3年全面保 (仅限随新机一起购买）</div>
								<div class="add_goods_namew">(i7-1165G7 锐炬Xe 16G 512G 高色域 低蓝光护眼屏)</div>
								<div class="trotro">￥399</div>
							</a>
							<a class="a4">
								<img src="../imgs/猜你想看2.jpg" class="af">
								<div class="sdsf">3年全面保 (仅限随新机一起购买）</div>
								<div class="add_goods_namew">(i7-1165G7 锐炬Xe 16G 512G 高色域 低蓝光护眼屏)</div>
								<div class="trotro">￥1399</div>
							</a>
							<a class="a4">
								<img src="../imgs/猜你想看3.jpg" class="af">
								<div class="sdsf">3年全面保 (仅限随新机一起购买）</div>
								<div class="add_goods_namew">(i7-1165G7 锐炬Xe 16G 512G 高色域 低蓝光护眼屏)</div>
								<div class="trotro">￥2399</div>
							</a>
							<a class="a4">
								<img src="../imgs/猜你想看4.jpg" class="af">
								<div class="sdsf">3年全面保 (仅限随新机一起购买）</div>
								<div class="add_goods_namew">(i7-1165G7 锐炬Xe 16G 512G 高色域 低蓝光护眼屏)</div>
								<div class="trotro">￥3999</div>
							</a>
						</div>
					</div>
				</div>
			</div>
        </div>
        <div class="tbmn0">
        	<div class="ytrxcv">商品详情</div>
        	<!--  -->
        </div>
		
		<div class="product_navigation_content" style="height: 35px;">
		</div>
		
		<div class="product_detail_card">
			<div class="service_details_content">
				<img src="../imgs/商品详情.jpg" class="tubnm">
				<div class="product_d">
					<div class="iteml">品牌：华硕</div>
					<div class="iteml">所属分类：灵耀14</div>
					<div class="iteml">CPU型号：酷睿Ultra</div>
					<div class="iteml">硬盘容量：1TB SSD</div>
					<div class="iteml">屏幕色域：100%DCI-P3	</div>
					<div class="iteml">操作系统：Windows 11家庭中文版</div>
					<div class="iteml">显卡类型：Intel® Arc™ Graphics</div>
					<div class="iteml">屏幕类型：2.8K OLED</div>
					<div class="iteml">产品重量：约1.19Kg</div>
					<div class="iteml">预装软件：Office家庭和学生版</div>
					<div class="iteml">内存容量：32G</div>
					<div class="iteml">商品编号：Z8RM5QBVO3IGOW</div>
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
		 <script>
			function openPopup() {
				document.getElementById("overlay").style.display = "block";
				document.getElementById("popup").style.display = "block";
			}

			function closePopup() {
				document.getElementById("overlay").style.display = "none";
				document.getElementById("popup").style.display = "none";
			}
			
			    function toggleCheckbox() {
			      var checkbox = document.getElementById('go1');
			      checkbox.checked = !checkbox.checked;
			    }
			    

			    function selectOption(element) {
			        let siblings = element.parentNode.querySelectorAll('.active1');
			        siblings.forEach(sibling => sibling.classList.remove('selected'));

			        element.classList.add('selected');
			    }

			    function toggleSelection(element) {
			        let siblings = element.parentNode.querySelectorAll('.fwsjiji');
			        siblings.forEach(sibling => sibling.classList.remove('selected'));
			        element.classList.add('selected');
			    }
				

			    function decrease() {
			        var yoyoElement = document.querySelector('.yoyo');
			        var currentValue = parseInt(yoyoElement.textContent);
			        if (currentValue > 1) {
			            yoyoElement.textContent = currentValue - 1;
			        }
			    }

			    function increase() {
			        var yoyoElement = document.querySelector('.yoyo');
			        var currentValue = parseInt(yoyoElement.textContent);
			        yoyoElement.textContent = currentValue + 1;
			    }
						 

			      
			      function goToCart() {
			        window.location.href = "gouwuche.jsp";
			      }
			      

			      window.onload = function() {
			        var menuItems = document.getElementsByClassName("ytrxcv");
			        var defaultActiveItem = menuItems[0];
			        
			        // 设置默认菜单项为高亮
			        defaultActiveItem.classList.add("active");
			        
			        // 给每个菜单项添加点击事件
			        for (var i = 0; i < menuItems.length; i++) {
			          menuItems[i].addEventListener("click", function() {
			            // 移除之前高亮的菜单项
			            var activeItem = document.querySelector(".ytrxcv.active");
			            activeItem.classList.remove("active");
			            
			            // 设置当前点击的菜单项为高亮
			            this.classList.add("active");
			          });
			        }
			      };

			  $(function() {
			  	  var configPrice = 0;
			  	  var servicePrice = 0;
			  	  var addGoodsPrice = 0;

			  	  $('.active1').on('click', function() {
			  	    const value = $(this).text().trim();
			  	    configPrice = parseFloat($(this).data('price'));
			  	    console.log('选中的配置：', value);
			  	    console.log('对应的价格：', configPrice);
			  	    // 显示选中的配置和价格
			  	    $('.selected-config').text(value);
			  	    updateTotalPrice();
			  	  });
			  	  
			  	  $('.fwsjiji').on('click', function() {
			  	    const value = $(this).text().trim();
			  	    servicePrice = parseFloat(value.match(/￥(\d+(\.\d{1,2})?)/)[1]);
			  	    console.log('选中的服务：', value);
			  	    console.log('对应的价格：', servicePrice);
			  	    // 显示选中的服务和价格
			  	    $('.selected-service').text(value);
			  	    updateTotalPrice();
			  	  });

			  	  $('input[type="checkbox"]').on('change', function() {
			  	    const isChecked = $(this).is(':checked');
			  	    const value = $(this).closest('.utton').find('.ttpo').text().trim();
			  	    const price = parseFloat(value);
			  	    if (isChecked) {
			  	      addGoodsPrice += price;
			  	    } else {
			  	      addGoodsPrice -= price;
			  	    }
			  	    console.log('选中的加购商品价格：', addGoodsPrice);
			  	    updateTotalPrice();
			  	  });

			  	  function updateTotalPrice() {
			  	    var totalPrice = configPrice + servicePrice + addGoodsPrice;
			  	    console.log('当前总价：', totalPrice);
			  	    $('#totalPrice').text('￥' + totalPrice.toFixed(2)); // 更新页面上的总价
			  	  }
			  	});
			  
			  //加减倍数
			      function increase() {
        var numberElement = document.querySelector('.yoyo');
        var currentNumber = parseInt(numberElement.textContent);
        currentNumber++;
        numberElement.textContent = currentNumber;
    }

    function decrease() {
        var numberElement = document.querySelector('.yoyo');
        var currentNumber = parseInt(numberElement.textContent);
        if (currentNumber > 1) {
            currentNumber--;
            numberElement.textContent = currentNumber;
        }
    }
    
    //弹窗
        function openPopup() {
			document.getElementById("overlay").style.display = "block";
			document.getElementById("popup").style.display = "block";
		}

		function closePopup() {
			document.getElementById("overlay").style.display = "none";
			document.getElementById("popup").style.display = "none";
		}
		
			//图片
		// 获取需要滚动的图片元素
		var image = document.querySelector('.tuyie');
		
		// 标记是否已经滚动到目标位置
		var isScrolled = false;
		
		// 监听页面滚动事件
		window.addEventListener('scroll', function() {
		    // 获取滚动的距离
		    var scrollY = window.scrollY || window.pageYOffset;
		    
		    // 如果滚动超过1000px，则标记已经滚动到目标位置
		    if (scrollY >= 500) {
		        isScrolled = true;
		    } else {
		        isScrolled = false; // 如果没有滚动到目标位置，则重置标记
		    }
		    
		    // 如果已经滚动到目标位置，则直接返回，不再执行后续代码
		    if (isScrolled) return;
		
		    // 设置图片的垂直位置为滚动的距离
		    image.style.marginTop = -110 + scrollY + 'px'; // 直接根据滚动距离设置图片位置
		});
		
		
		// 获取需要滚动的图片元素
		var image = document.querySelector('.tuyie');

		// 获取左右箭头元素
		var rightArrow = document.querySelector('.wosvb');
		var leftArrow = document.querySelector('.qwefv');

		// 图片列表
		var imageList = [
		    '../imgs/电脑1.jpg',
		    '../imgs/图片2-3.jpg',
		    '../imgs/图片2-4.jpg',
		    '../imgs/图片2-5.jpg',
		    '../imgs/电脑5.jpg'
		];

		// 当前显示的图片索引
		var currentIndex = 0;

		// 切换图片函数
		function changeImage(index) {
		    // 更新当前索引
		    currentIndex = index;
		    
		    // 设置图片的src属性为对应索引的图片路径
		    image.src = imageList[currentIndex];
		}

		// 点击右箭头切换到下一张图片
		rightArrow.addEventListener('click', function() {
		    currentIndex = (currentIndex + 1) % imageList.length;
		    changeImage(currentIndex);
		});

		// 点击左箭头切换到上一张图片
		leftArrow.addEventListener('click', function() {
		    currentIndex = (currentIndex - 1 + imageList.length) % imageList.length;
		    changeImage(currentIndex);
		});

		// 初始化显示第一张图片
		changeImage(currentIndex);
		</script>	

</body>

</html>
