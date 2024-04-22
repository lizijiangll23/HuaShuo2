<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<script src="../js/jquery-3.5.1.min.js"></script>
		<link href="../css/footerorhead.css">
		<style type="text/css" >
			html {
			  scroll-behavior: smooth;
			}
			*{
				margin: 0px;
			}
			body{
				transform-origin: top left;
				overflow-x: hidden;
			}
			#dingbu{
				width: 1440px;
				margin: auto;
			}
			#a1{
				position: fixed;
				top:0px;
				z-index: 1000;
			}
			a{
				text-decoration: none;
			}
			li{
				list-style: none;
			}
			#a3{
				margin: 0 auto;
				padding: 0;
				width: 100%;
				height: 30px;
				background-color: darkgrey;
			}
			#a5{
				margin: auto;
				width: 1910px;
				height: 30px;
				background-color: #404040;
				color: darkgray;
				
				padding: 5px;
			}
			.lj{
				line-height: 30px;
				color: darkgray;
				text-decoration: none;
			}
			#a1b1{
				height: 120px;
				width: 1920px;	
				background-color: chartreuse;
				margin: auto;
				margin-left: -240px;
			}
			#lb1{
				position: relative;
				width: 1920px;
				height: 475px;
				left: -240px;
				margin: auto;
			}
			.lj:hover{
				text-decoration: none;
				color: aliceblue;
			}
			#a5b1{
				margin-right: 300px;
				float: right;
			}
			#flei{
				width: 240px;
				height: 350px;
				background: rgba(255, 255, 255, 0.95);
			}
			#flei div{
				width: 240px;
				height: 30px;
				color: darkgray;
				margin-bottom: 5px;
				padding-top: 15px;
				text-align: left;
				z-index: 999;
				position: relative;
			}
			#flei div:hover{
				background-color: aliceblue;
				color: black;
				display: block;
			}
			#flei div img{
				float: right;
				 width: 20px;
				 height: 20px;		
				 margin-right: 20px;
				 position: relative;
			}
			#yincang{
				position:relative;
				width: 737px;
				height: 350px;
				display: none;
				float: right;
				margin-top: -350px;
				z-index: -1;
			}
			#yincang :hover{
				display: block;
			}
			#banlun {
				width: 100%;
				height: 220px;
				margin: auto;
				overflow: hidden;
				display: flex; 
			}

			#banlun div {
				height: 220px;
				width: 330px;
				margin-right: 6px;
			}
			#shangpin{
				position: relative;
				height: 1380px;
				width: 1920px;
				left: -240px;
				background-color: #eee;
				margin-top: 30px;
			}
			#shangp-1{
				width: 1226px;
				height: 654px;
				margin: auto;
				margin-top: 20px;
			}
			#p1{
				position: relative;
				font-size: 20px;
				color: black;
				line-height: 54px;
				padding-left: 32px;
				
			}
			#p1 a{
				color: black;
				text-decoration: none;
				float: right;
			}
			#p1 a:hover{
				color: aqua;
			}
			#spin-1,
			#spin-2,
			#spin-3,
			#spin-4,
			#spin-5,
			#spin-6,
			#spin-7,
			#spin-8{
				width: 1226px;
				height: 600px;
				margin: auto;
			}
			#shangp-1 div div{
				background-color: #FFFFFF;
				width: 233px;
				height: 290px;
				float: left;
				margin-bottom: 20px;
				margin-left: 12px;
			}
			#tp{
				width: 204px;
				height: 204px;
				margin-left: 14.5px;
			}
			#p-1,#p-2,#p-3{
				width: 233px;
				text-align: center;
				margin-top: 6px;
			}
			#p-1{
				
				line-height: 20px;
				height: 20px;
				color: black;
				font-size: 16px;
			}
			#p-2{
				line-height: 14px;
				height: 14px;
				font-size: 14px;
				color: darkgray;
			}
			#p-3{
				line-height: 22.5px;
				color: red;
				height: 22.5px;
			}
			#a4{
				margin: auto;
				margin-top: 10px;
				width: 1920px;
				height: 100px;
				background-color: #FFFFFF;
				display: flex;
				justify-content: space-between;
				align-items: center;
			}
			#a4-1 {
				width: 235px;
				height: 100px;
				margin-left: 300px;
				display: flex;
				align-items: center;
			}

			#tu {
				width: 150px;
				height: 60px;
				margin-right: 18px;
			}

			#tu-1 {
				width: 60px;
				height: 60px;
			}
			#a4-2 {
				width: 700px;
				height: 30px;
				display: flex;
				align-items: center;
				margin-right: 300px;
			}
			  .ct {
				height: 100%;
				width: 600px;
				border: none;
				outline:none;
				color: #a1a1a1;
				padding: 0 10px 0 15px;
				background-color: #e9e9e9;
				border-radius: 15px 0 0 15px;
			  }
				.wubk, .wubk2 {
				    position: absolute;
				    border: none;
				    background-color: transparent;
				    cursor: pointer;
				    height: 56px;
				    z-index: 1;
				}
				
				.wubk img, .wubk2 img {
				    width: 100%;
				    height: 100%;
				}
				
				.wubk {
				    top: 50%;
				    left: 270px; /* 调整按钮位置 */
				    transform: translateY(-50%);
				}
				
				.wubk2 {
				    top: 50%;
				    right: 350px; /* 调整按钮位置 */
				    transform: translateY(-50%);
				}
				
				.dot-container {
				    position: absolute;
				    bottom: 10px; /* 调整小圆点距离图片底部的距离 */
				    left: 50%;
				    transform: translateX(-50%);
				}
				
				.dot {
				    width: 10px;
				    height: 10px;
				    background-color: #ccc; /* 小圆点的颜色 */
				    border-radius: 50%;
				    margin: 0 5px; /* 调整小圆点之间的间距 */
				    display: inline-block;
				}
				
				.active-dot {
				    background-color: aqua; 
				}


			.sousuo {
				display: inline-block;
				height: 100%;
				width: 100px;
				border-radius: 0 15px 15px 0;
				background-color: #cccccc;
			}
			#shangp-1 div div:hover{
				box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
			}
			.zifl{
				height: 50px;
				width:120px;
				border-right: 1px solid #BEBEBD;
				text-align: center;
				float: left;
			}
			.qbbjb{
				width:190px;
				text-indent:50px;
			}
			#ejfl{
				padding-top:15px; 
				width: 121px;
				height: 335px;
				margin-left:10px;
				background-color: aliceblue;
				border-right: 1px solid #BEBEBD;
			}
			.serachIcon{
				border: none;
			}
		</style>
		<script>
		var images = [
		    "../imgs/lunbo-1.jpg",
		    "../imgs/lunbo-2.jpg",
		    "../imgs/lunbo-3.jpg",
		    "../imgs/lunbo-4.jpg",
		    "../imgs/lunbo-5.jpg",
		    "../imgs/lunbo-6.jpg",
		    "../imgs/lunbo-7.jpg",
		    "../imgs/lunbo-8.jpg",
		    "../imgs/lunbo-9.jpg"
		];
		var suoyin = 0;
		var dsq;

		function suo() {
		    var tu = document.getElementById("lunbo");
		    tu.src = images[suoyin];
		    suoyin = (suoyin + 1) % images.length;

		    updateDots(); // 更新小圆点
		}

		function updateDots() {
		    var dotContainer = document.querySelector('.dot-container');
		    dotContainer.innerHTML = ''; // 清空原有的小圆点

		    for (var i = 0; i < images.length; i++) {
		        var dot = document.createElement('span');
		        dot.className = 'dot' + (i === suoyin ? ' active-dot' : '');
		        dot.setAttribute('data-index', i); // 设置自定义属性存储索引
		        dot.addEventListener('click', function() {
		            suoyin = parseInt(this.getAttribute('data-index'));
		            updateImage();
		        });
		        dotContainer.appendChild(dot);
		    }
		}

		function updateImage() {
		    var tu = document.getElementById("lunbo");
		    tu.src = images[suoyin];
		    updateDots(); // 更新小圆点状态
		}

		function prev() {
		    clearInterval(dsq);
		    suoyin = (suoyin - 1 + images.length) % images.length;
		    updateImage();
		    dsq = setInterval(suo, 2000);
		}

		function next() {
		    clearInterval(dsq);
		    suoyin = (suoyin + 1 + images.length) % images.length;
		    updateImage();
		    dsq = setInterval(suo, 2000);
		}

		dsq = setInterval(suo, 2000);
		updateDots(); // 初始化小圆点

	    </script>
		<script type="text/javascript">
		$(function() {
			  $.getJSON("fenlei", function(data) {
			    for (var i = 0; i < data.length; i++) {
			      var div = $("<div>").data("index", i);
			      
			      div.mouseover(function() {
			        showDiv2();
			        
			        var text = $(this).find('.qbbjb').text();
			        
			        $("#ejfl").empty();
			        
			        $.getJSON("ejfl", { text: text }, function(response) { 
			          for (var e of response) {
			            var div = $("<div>").addClass("zifl");
			            var p = $("<p>").text(e.name);
			            div.append(p);
			            $("#ejfl").append(div);
			          }
			        });
			      });
			      
			      div.mouseout(hideDiv2);
			      
			      var img = $("<img>").attr("src", "../imgs/ac.png");
			      div.append(img);
			      
			      var p = $("<p>").addClass("qbbjb").text(data[i].name);
			      div.append(p);
			      
			      $("#flei").append(div);
			    }
			});
		});




		function showDiv2() {
		    var div = document.getElementById("yincang"); // 获取隐藏的div
		    setTimeout(function(){
		        if (!isHover(div)) {
		            div.style.display = "block";
		            div.style.zIndex = 999;
		        }
		    }, 100);
		}

		function hideDiv2() {
		    var div = document.getElementById("yincang"); // 获取隐藏的div
		    setTimeout(function(){
		        if (!isHover(div)) {
		            div.style.display = "none";
		            div.style.zIndex = -1;
		        }
		    }, 100);
		}

		function isHover(element) {
		    return element.matches(":hover") || element.querySelector(":hover") === element;
		}

		</script>
		<script type="text/javascript">
		  $(function() {																			
		    $.getJSON("sping", function(data) {
		      for (var i = 0; i < 8; i++) {
		    	console.log(data[i])
		        var product = data[i];
		        var newDiv = $("<div>");
		        var img = $("<img>").attr("src", product.imagePath).attr("id", "tp");
		        newDiv.append(img);
		        var p1 = $("<p>").attr("id", "p-1").text(product.name);
		        newDiv.append(p1);
		        var p2 = $("<p>").attr("id", "p-2").text(product.config.substring(0, product.config.indexOf(" ", product.config.indexOf(" ") + 1)));
		        newDiv.append(p2);
		        var p3 = $("<p>").attr("id", "p-3").text("￥" + product.price);
		        newDiv.append(p3);
		        $("#spin-2").append(newDiv);
		      }
		    });
		  }); 
		</script>
		<link rel="stylesheet" href="../css/PeopleCenter.css"/>
		<link rel="stylesheet" href="../css/acc.css"/>
	</head>
	<body>
		<div id="dingbu">
			
			<%@ include file = "head.jsp" %>
			<div id="lb1">
				<div style="position: relative;">
				    <a>
				        <img id="lunbo" src="../imgs/lunbo-1.jpg"/>
				    </a>
				    <button class="wubk" onclick="prev()">
				        <img src="../imgs/l_r1.png" >
				    </button>
				    <button class="wubk2" onclick="next()">
				        <img src="../imgs/l_r2.png" >
				    </button>
				    <div class="dot-container">
				        <!-- 这里添加小圆点 -->
				    </div>
				</div>

				<div style="position: absolute;top: 70px;left: 400px;width: 967px;height: 350px;">
					<div id="flei">
						
					</div>
					<div id="yincang" onmouseover="showDiv2()" onmouseout="hideDiv2()">
						<div id="ejfl" >

						</div>
					</div>
				</div>
			</div>
			<div style="width: 1226px; height: 220px; margin: auto; margin-top: 20px;">
				<div id="banlun">
					<div id="banlun-1"><img src="../imgs/3.png" /></div>
					<div id="banlun-2"><img src="../imgs/3.png" /></div>
					<div id="banlun-3"><img src="../imgs/3.png" /></div>
					<div id="banlun-4"><img src="../imgs/3.png" /></div>
					<div id="banlun-5"><img src="../imgs/3.png" /></div>
					<div id="banlun-6"><img src="../imgs/3.png" /></div>
					<div id="banlun-7"><img src="../imgs/3.png" /></div>
				</div>
			</div>
			<div style="width: 1226px;height: 120px;margin: auto;">
				<img src="../imgs/2.png"  />
			</div>
			
			<div id="shangpin">
				<div id="shangp-1">
					<div id="p1" id="1F" >1F ⭐最新上架 <a href="#" >更多>></a> </div>
					<div id="spin-1">
						<a href="#" style="width: 243px;height: 600px;float: left;"><img style="width: 243px;height: 600px;" src="../imgs/1-1.png"/></a>
						
					</div>
				</div>
				<div id="shangp-1">
					<div id="p1"class="2F" >2F ⭐灵耀轻奢 <a href="#" >更多>></a> </div>
					<div id="spin-2">
						<a href="#" style="width: 243px;height: 600px;float: left;"><img style="width: 243px;height: 600px;" src="../imgs/b.jpg"/></a>
						
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
											<a href="#" id="ztys">公司介绍</a>
										</dt>
										<dd>
											<a href="#" id="ztys">华硕承诺</a>
										</dd>
										<dd>
											<a href="#" id="ztys">交易条款</a>
										</dd>
										<dd>
											<a href="#" id="ztys">特别提醒</a>
										</dd>
										<dd>
											<a href="#" id="ztys">加入我们</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#" id="ztys">购物指南</a>
										</dt>
										<dd>
											<a href="#" id="ztys">订单说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">会员注册</a>
										</dd>
										<dd>
											<a href="#" id="ztys">会员账户安全与信息</a>
										</dd>
										<dd>
											<a href="#" id="ztys">购物流程</a>
										</dd>
										<dd>
											<a href="#" id="ztys">积分使用说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">优惠券使用说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">常见问题</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕商城服务协议说明 </a>
										</dd>
										<dd>
											<a href="#" id="ztys">授权服务店服务说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">授权服务店服务说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">以旧换新</a>
										</dd>
										<dd>
											<a href="#" id="ztys">预约规则</a>
										</dd>
										<dd>
											<a href="#" id="ztys">预售规则</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#" id="ztys">配送与付款</a>
										</dt>
										<dd>
											<a href="#" id="ztys">发货与签收规范</a>
										</dd>
										<dd>
											<a href="#" id="ztys">配送运费说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">配送常见问题</a>
										</dd>
										<dd>
											<a href="#" id="ztys">配送异常</a>
										</dd>
										<dd>
											<a href="#" id="ztys">支付常见问题</a>
										</dd>
										<dd>
											<a href="#" id="ztys">发票说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">蚂蚁花呗常见问题</a>
										</dd>
									</dl>
								</div>
								<div class="helper-item">
									<dl>
										<dt class="content-title">
											<a href="#" id="ztys">服务与支持</a>
										</dt>
										<dd>
											<a href="#" id="ztys">华硕服务中心查询</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕授权实体门店查询</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕智汇家体验店</a>
										</dd>
										<dd>
											<a href="#" id="ztys">中国RoHS合格评定标识</a>
										</dd>
										<dd>
											<a href="#" id="ztys">华硕笔记本保修政策说明</a>
										</dd>
										<dd>
											<a href="#" id="ztys">ROG玩家国度授权体验店</a>
										</dd>
										<dd>
											<a href="#" id="ztys">参与调研</a>
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
	</body>

	<script>
		$(
			 function createDivWithData(data) {
			    var container = document.getElementById("yincang");
			    
			    for (var i = 0; i < data.length; i++) {
			      var div = document.createElement("div");
			      div.innerText = data[i];
			      container.appendChild(div);
			    })
			  }
			  
			  // 根据数据库查询到的数据调用createDivWithData方法
			  var dataFromDatabase = ["数据1", "数据2", "数据3"]; // 用你查询到的数据替换这里的示例数据
			  createDivWithData(dataFromDatabase);
		);
	</script>
</html>