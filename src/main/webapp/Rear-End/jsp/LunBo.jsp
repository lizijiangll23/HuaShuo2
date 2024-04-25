	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<link href="../css/LunTu.css" rel="stylesheet" type="text/css" />
	<link href="../css/LunBoTu.css" rel="stylesheet" type="text/css" />
	<script>
	var images = [
	    <c:forEach items="${list}" var="u">
	    "${u.picture}",
	    </c:forEach>
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
	<body>
		<jsp:include page="bian.jsp"></jsp:include>
		<div id = "lan">
		<div id =lun>
			<div id="lb1">
					<div style="position: relative;">
					    <a>
					        <img id="lunbo" src="../imgs/lunbo-1.jpg"/>
					    </a>
					    <button class="wubk" onclick="prev()">
					      
					    </button>
					    <button class="wubk2" onclick="next()">
					       
					    </button>
					    <div class="dot-container">
					        <!-- 这里添加小圆点 -->
					    </div>
					</div>
				</div>
			</div>
			<div id="xuan">
    <div id="xuan_1">
        <c:forEach items="${list}" var="u" varStatus="loop">
            <div class="lunt"><img src="${u.picture}" class="luntimg" id = "tu${loop.index + 1}">
            <div class="hover-div" onclick="shan(event)">
             <p class="wen">要删除该内容吗</p>
             </div>
            <input name = "xuhao" class = "xu" value="${loop.index + 1}" id="${u.picture}" onblur="handleBlur(event)">
            </div>
        </c:forEach>
        <input type="file" class="er" accept="image/*" onchange="handleFileSelect(event)">
    </div>
</div>
</body>
<script>
    window.onload = function () {
        // 统计 <div class="lunt"> 的数量
        var luntDivs = document.querySelectorAll('.lunt');
        var luntCount = luntDivs.length;

        // 获取所有文件输入字段
        var erInputs = document.querySelectorAll('.er');

        // 遍历每个文件输入字段，根据 <div class="lunt"> 的数量来显示或隐藏
        for (var i = 0; i < erInputs.length; i++) {
            var erDiv = erInputs[i];
            if (luntCount < 9) {	
                erDiv.style.display = 'block';
            } else {
                erDiv.style.display = 'none';
            }
        }
    }
    function shan(event) {
        var parentDiv = event.target.closest('.lunt'); // 获取当前点击的图片的父级元素
        var xuhao = parentDiv.querySelector('.xu').value; // 获取当前点击的图片对应的序号
        var img = document.getElementById("tu"+xuhao);
        var src = img.getAttribute("src");
        console.log('当前点击的图片地址：', src);
        console.log('当前点击的图片序号：', xuhao); 

        // 弹出确认框，询问用户是否确定执行操作
        var confirmAction = confirm("确定要执行操作吗？");
        if (confirmAction) {
            // 用户点击了确定，执行跳转操作
            window.location.href = "ShanLunBo?src="+src;
        } else {
            // 用户点击了取消，不执行任何操作
            console.log("用户取消了操作");
        }
    }
    function handleBlur(event) {
    	var textInputs = document.querySelectorAll('.xu');
        
        for (var i = 0; i < textInputs.length; i++) {
            if (textInputs[i] === event.target) {
            	const index = event.target.id; // Add 1 to convert from zero-based index to one-based index
                console.log('失焦的是第 ' + index + ' 个文本框');
                var parentDiv = event.target.closest('.lunt'); // 获取当前点击的图片的父级元素
                var xuhao = parentDiv.querySelector('.xu').value;
                window.location.href = "ShunXu?src=" + index + "&xuhao=" + xuhao;
                break;
            }
        }
    }
    function handleFileSelect(event) {
        const selectedFile = event.target.files[0];
        const fileName = selectedFile.name;
        window.location.href = "LunXin?src="+fileName;
    }
</script>
	<script src="../js/ce.js"></script>
	</html>