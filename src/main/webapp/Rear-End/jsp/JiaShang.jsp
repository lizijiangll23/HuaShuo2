<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="p" uri="http://www.trkj.com/tr03802/page"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#tianjia{
width: 60%;
height: 490px;
border-radius: 10px;
box-shadow: 5px 5px 5px #888888;
background-color:white;
margin: 5px;
float: left;
}
#tianjia h2{
text-align: center;
}
#xianshi{
width: 38%;
height: 490px;
border-radius: 10px;
box-shadow: 5px 5px 5px #888888;
background-color:white;
margin: 5px;
float: left;
}
#pei{
float: left;
margin-left: 50px;

}
.peit{
float: left;
margin-left: 10px;
}
#peijia{

margin-left: 10px;
}
#fuwu{
float: left;
margin-left: 50px;

}
.fuwut{
float: left;
margin-left: 10px;
}
#fuwujia{
float: left;
margin-left: 10px;
}
#speizhi{
width: 100%;
height: 100px;
}
#ffu{
width: 100%;
height: 100px;
}
#di{
width: 98%;
height: 290px;
background-color:white;
margin-top: 505px;
margin-left: 10px;
border-radius: 10px;
box-shadow: 5px 5px 5px #888888;
}
#product-table {
  border-collapse: collapse;
  width: 100%;
}

#product-table th, #product-table td {
  border: 1px solid #ddd;
  padding: 8px;
}

#product-table th {
  background-color: #f2f2f2;
  text-align: left;
}

#product-table tr:nth-child(even) {
  background-color: #f9f9f9;
}

#product-table tr:hover {
  background-color: #ddd;
}
.oy_p{
		font-size: 14px;
	}
	a{
		text-decoration: none;
		margin: 5px 5px;
		padding: 2px 6px;
		border: 1px solid gray;
		font-size: 12px;
		border-radius:4px;
		cursor:pointer;
	}
	a:hover{
		padding: 3px 7px;
		
	}
	#overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* 浅黑色背景 */
   display: flex;
  justify-content: center;
  align-items: center;
 
 display: none; /* 初始隐藏 */
 
}

.modal {
  width: 700px;
  height: 400px;
  background-color: #fff; /* 白色背景 */
  display: none; /* 初始隐藏 */
  position: relative;
   margin: 260px auto;
}

.modal.show {
  display: block; /* 显示 */
}

.close-button {
   float: right;
   margin-right:5px;
  cursor: pointer;
}
</style>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id = "lan">
	<div id = "tianjia">
	<h2>添加商品</h2>
	<br>
	<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="10">
	<p style="margin-left: 50px;margin-bottom: 20px;">产品名称<input style="margin-left: 10px;"/>
	<select id="mySelect2" onchange="handleSelectChange2()">
	<option>全部类型</option>
   <option value="value1">灵耀</option>
   <option value="value2">a豆</option>
	</select></p>
	<div id = "speizhi"><p id = "pei">商品配置</p><input class="peit"/><input class="peit"/><input class="peit"/><button id="peijia">添加</button></div>
	<br>
	<div id = "ffu"><p id = "fuwu">商品服务</p><input class="fuwut"><input class="fuwut"><input class="fuwut"><button id = "fuwujia">添加</button></div>
	<br>
	<div>
	<input type="file" class="er" id = "fileInput" multiple style="margin-left: 50px;margin-top: 10px;" accept="image/*" onchange="getSelectedFiles(event)">
	</div>
	<button style="float: right;margin-right: 160px;"onclick="jia()">确定添加</button>
	</div>
	<div id = "xianshi">
	<div style="width: 100%;height: 450px;">
	<table id="product-table">
  <tr>
  <th>ID</th>
    <th>商品名称</th>
    <th>状态</th>
    <th>上架时间</th>
    <th>修改配置</th>
  </tr>
  	<c:forEach items="${lists}" var="u">
  <tr>
    <td>${u.cid}</td>
    <td>${u.name}</td>
    <td>${u.status}</td>
    <td>${u.time}</td>
    <td><button onclick="getProductName('${u.name}')">改配置</button></td>
  </tr>
	</c:forEach>
</table>
</div>
<p:page controller="shangjubu" pagesize="10" total="${total}" curpage="${param.curpage}"/>
	</div>
	<div id = "di">
	<table id="product-table">
  <tr>
    <th>商品名称</th>
    <th>型号</th>
    <th>类别</th>
    <th>图片链接</th>
    <th>状态</th>
    <th>上架时间</th>
  </tr>
  	<c:forEach items="${list}" var="u">
  <tr>
    <td>${u.name}</td>
    <td>${u.liebie}</td>
    <td>${u.zibie}</td>
    <td>${u.tu}</td>
    <td>${u.zhuan}</td>
    <td>${u.date}</td>
  </tr>
	</c:forEach>
</table>
	</div>
	</div>
	<div id="overlay">
  <div class="modal" id="modal">
    <!-- 方块内容 -->
    
    
  </div>
</div>
</body>
<script>
var src = [];
document.getElementById('fileInput').addEventListener('change', function(event) {
	 // 获取文件输入框
     var fileInput = document.getElementById('fileInput');
     // 获取选择的文件列表
     var files = fileInput.files;
	 
     // 遍历文件列表
     for (var i = 0; i < files.length; i++) {
       var file = files[i];
       src.push(file.name);
     }
	});
document.getElementById("peijia").addEventListener("click", function() {
    // Check if the maximum number of text input elements (20) has been reached
    if (document.querySelectorAll(".peit").length >= 20) {
        alert("以达到最大限度 (20).");
        return; // Stop execution if limit is reached
    }

    // Create a new text input element
    var newInput = document.createElement("input");
    // Add class to the new text input element
    newInput.classList.add("peit");
    
    // Insert the new text input element after the last text input element
    var currentInputs = document.querySelectorAll(".peit");
    var lastInput = currentInputs[currentInputs.length - 1];
    lastInput.parentNode.insertBefore(newInput, lastInput.nextSibling);
});
var selectedText;
function handleSelectChange2(event) {
	 // 获取<select>元素
    var selectElement = document.getElementById("mySelect2");

    // 获取选定的索引
    var selectedIndex = selectElement.selectedIndex;
    
    // 获取选定的文本
     selectedText = selectElement.options[selectedIndex].text;
    
	}

document.getElementById("fuwujia").addEventListener("click", function() {
    // Check if the maximum number of text input elements (20) has been reached
    if (document.querySelectorAll(".fuwut").length >= 20) {
        alert("已达到了最大限度(20).");
        return; // Stop execution if limit is reached
    }

    // Create a new text input element
    var newInput = document.createElement("input");
    // Add class to the new text input element
    newInput.classList.add("fuwut");
    
    // Get the current text input element
    var currentInput = document.querySelector(".fuwut");
    
    // Check if the current text input element exists
    if (currentInput) {
        // Insert the new text input element after the current text input element
        currentInput.parentNode.insertBefore(newInput, currentInput.nextSibling);
    } else {
        // If the current text input element does not exist, append the new text input element to the element with id "fuwu"
        var parentElement = document.getElementById("fuwu");
        parentElement.appendChild(newInput);
    }
});
const fileInput = document.querySelector('input[type="file"]');

fileInput.addEventListener('change', (event) => {
  const files = event.target.files;
  for (let i = 0; i < files.length; i++) {
    console.log(files[i].name);
  }
});

function jia() {
	  // 获取产品名称的值
	  var productName = document.querySelector('input').value;
	  var inputs = document.getElementsByClassName("peit");
	  var peizhi = [];
	  for (var i = 0; i < inputs.length; i++) {
		  peizhi.push(inputs[i].value);
	  }
	  var fuwuts = document.getElementsByClassName("fuwut");
	  var fuwut = [];
	  for (var i = 0; i < inputs.length; i++) {
		  fuwut.push(fuwuts[i].value);
	  }

	  // 获取商品服务的文本框值
	  var fuwutInputs = document.querySelectorAll('.fuwut');
	  var fuwutValues = Array.from(fuwutInputs).map(function(input) {
	    return input.value;
	  });

	  // 获取上传文件的值
	  var files = document.querySelector('.er').files;
	  window.location.href = "JiaShang?xin="+selectedText+"&name="+productName + "&src="+src+"&peizhi="+peizhi+"&fuwu="+fuwut;
	  
	}
function getProductName(name) {
    console.log("当前商品名称：" + name);
    document.getElementById("overlay").style.display = "block";
    document.getElementById("modal").style.display = "block";
        var userId = $(this).find('.uid').text();
        // 发送Ajax请求并传递用户ID到服务器端
        $.ajax({
            url: 'peizhij',
            type: 'GET',
            data: { name: name }, // 将用户ID作为数据传输到服务器端
            success: function(data) {
                $('#modal').html(data); // 更新局部内容，将返回的数据添加到指定的div中
            }
        });
    
    // 在适当的时机调用handleMouseEnter函数
    // 例如，通过事件监听器将其绑定到鼠标进入事件
    // 例如：element.addEventListener('mouseenter', handleMouseEnter);
}


  
  function hideModal() {
	  document.getElementById("overlay").style.display = "none";
	  document.getElementById("modal").style.display = "none";
  }
  function shan(name,m) {
		$.getJSON('hsanpei',{"name":name,"m":m},function(){
		})
	}
</script>
<script src="../js/ce.js"></script>
</html>