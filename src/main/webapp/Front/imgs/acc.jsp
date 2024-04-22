<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<script>
		var images = [
		    "lunbo-1.jpg",
		    "lunbo-2.jpg",
		    "lunbo-3.jpg",
		    "lunbo-4.jpg",
		    "lunbo-5.jpg",
		    "lunbo-6.jpg",
		    "lunbo-7.jpg",
		    "lunbo-8.jpg",
		    "lunbo-9.jpg"
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
		$(document).ready(function() {
            // 当页面加载完成后，发起对 erjiServlet 的 POST 请求
            $.post("fenlei", function(data) {
                // 将返回的数据插入到页面中的 qbbjb 的 div 内
                $(".qbbjb").html(data);
            });
        });
	    </script>
	    <style>
		    	
				#lb1{
					position: relative;
					width: 1920px;
					height: 475px;
					left: -240px;
					margin: auto;
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
				    left: 550px; /* 调整按钮位置 */
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
	    </style>
</head>
<body>
			<div id="lb1">
				<div style="position: relative;">
				    <a>
				        <img id="lunbo" src="lunbo-1.jpg"/>
				    </a>
				    <button class="wubk" onclick="prev()">
				        <img src="l_r1.png" >
				    </button>
				    <button class="wubk2" onclick="next()">
				        <img src="l_r2.png" >
				    </button>
				    <div class="dot-container">
				        <!-- 这里添加小圆点 -->
				    </div>
				</div>
			</div>
</body>
</html>