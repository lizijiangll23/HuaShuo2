<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="../css/guan_1.css" rel="stylesheet" type="text/css"/>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id = "lan">
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
			<div id = "shu">
			<div id = "an">
			<button onclick="showPopup()">新增</button>
			<button id="deleteButton">删除</button>
			<button>修改</button>
			<button>刷新</button>
			<button>导出</button>
			</div>
			<div id="overlay" class="overlay"></div>
			<div id="popup" style="display: none">
       		<div id = "xto"><p>新增管理员</p><img src="../imgs/x .png" onclick="closePopup()"></div>
   			<div id = "xzuo">
   			<div id = "xtox"><img src = "../imgs/225默认头像.png" id = "selectedImage"></div><br>
   			<input type="file" id = "xuan" accept="image/*" onchange="displaySelectedImage(event)">
   			</div>
   			<div id = "xyou">
   			<h2>设置账户</h2>
   			<form action="que" method="get">
   			工号:<input type="text" value="${id}" name = "gon"><br>
   			名字:<input type="text" id = "names" name = "name"><br>
   			账户:<input type="text" id = "zhang" name = "zhang"><br>
   			密码:<input type="password" name = "mi"><br>
   			确认密码:<input type="password" style="margin: 0px;"name = "mi_1"><br>
   			<input type="submit" value="确认"><button>取消</button>
   			</form>
   			</div>
   			</div>
			<div id = "yuan">
		<table>
  	  <thead>
       
       <tr>
        	<th><input type="checkbox"></th>
            <th>ID</th>
            <th>工号</th>
            <th>账号</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
       
    </thead>
    <tbody>
    <c:forEach items="${list}" var="u">
        <tr>
        <form action="../../GuanLiShan" method="get">
    		 <input type="hidden" name="ad_id" value="${u.ad_id}">
    		 <td><input type="checkbox"></td>
    		 <td>${u.ad_id}</td>
    		 <td>${u.ad_name}</td>
   			 <td>正常</td>
    	   	 <td>${u.ad_account}</td>
   			 <td><input type="submit" value="删除" onclick="return confirmDelete()"><button>修改</button></td>
		</form>
        </tr>
        </c:forEach>
        <!-- 可以根据需要添加更多的行 -->
    </tbody>
	</table>
	</div>
			
	</div>
	<div id = xian></div>
	</div>
</body>
<script src="../js/ce.js"></script>
<script>
var id =0;
document.addEventListener('DOMContentLoaded', function() {
    // 创建一个空对象用于存储点击的行信息
    var clickedRow = {};

    var rows = document.querySelectorAll('tbody tr');
    
    rows.forEach(function(row) {
        row.addEventListener('click', function() {
            // 添加你想要的点击操作，比如改变样式、显示详细信息等
            console.log('你点击了行 ' + row.querySelector('td:nth-child(4)').innerText);
             id= row.querySelector('td:nth-child(4)').innerText;
			
        });
    });
});
document.getElementById("deleteButton").addEventListener("click", function() {
    // 使用 confirm 函数显示确认框，并获取用户的选择结果
    var confirmDelete = confirm("确定要删除该员工信息吗？");
    
    // 如果用户点击确认，则执行删除操作
    if(confirmDelete) {
    	window.location.href = "../../GuanLiShan2?id="+id; 
        alert("员工信息已删除！");
    } else {
        // 用户点击取消，不执行任何操作
        alert("已取消删除操作。");
    }
});
    function showPopup() {
        var overlay = document.getElementById('overlay');
        var popup = document.getElementById('popup');

        overlay.style.display = 'block';
        popup.style.display = 'block';
    }

    function closePopup() {
        var overlay = document.getElementById('overlay');
        var popup = document.getElementById('popup');

        overlay.style.display = 'none';
        popup.style.display = 'none';
    }
    //选择图片
function displaySelectedImage(event) {
      const selectedFile = event.target.files[0];
      // 创建一个文件阅读器对象
	const reader = new FileReader();
	reader.onload = function() {
	const img = document.getElementById('selectedImage');
	img.src = reader.result;
	img.style.display = 'block'; // 显示图片
	}
            
     if (selectedFile) {
      reader.readAsDataURL(selectedFile); // 读取文件并将其作为 URL 表示
      }
}

function confirmDelete() {
    // 弹出确认框
    var result = confirm("确认要删除吗？");
    // 如果用户点击确认，则提交表单
    if (result) {
        document.getElementById("deleteForm").submit();
    }
    // 返回false，防止表单自动提交
    return false;
}
</script>
</html>