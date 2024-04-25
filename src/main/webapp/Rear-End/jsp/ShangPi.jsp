<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="p" uri="http://www.trkj.com/tr03802/page"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/shang.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#mySelect option:first-child {
    display: none;
}
.shangtu{
	width: 170px;
	height: 125px;
	float: left;	
	position: relative;
	margin-left: 10px;
	}
.overlay {
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    background-color: rgba(0, 0, 0, 0.5);
    width: 100%;
    height: 125px;
    cursor: pointer;
}
.shangtu:hover .overlay {
    display: block; /* 鼠标移入显示 */
}
#xwei{
	width: 100%;
	height: 324px;
	margin-top: 10px;
	background-color: #f1f3f5;
	}
	#xwei_1{
	width: 90%;
	height: 324px;
	margin: 0px auto;
	
	}
</style>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id = "lan">
	<div style="width: 100%;height: 440px;">
	<div id = "suo"><input id= "tiao"/><button onclick="cha()">搜索</button>
	<select id="mySelect" onchange="handleSelectChange()">
	<option>所有型号</option>
   <option value="value1">轻薄笔记本</option>
   <option value="value2">游戏笔记本</option>
   <option value="value3">台式笔记本</option>
</select>

<select id="mySelect2" onchange="handleSelectChange2()">
	<option>全部类型</option>
   <option value="value1">灵耀</option>
   <option value="value2">a豆</option>
</select>
<select id="mySelect3" onchange="handleSelectChange3()">
	<option>修改状态</option>
   <option value="value1">上架</option>
   <option value="value2">下架</option>
</select>
	</div>
	<div id = "da">
	<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="3">
	<table id="product-table">
  <tr>
    <th><input type="checkbox"></th>
    <th>商品名称</th>
    <th>型号</th>
    <th>类别</th>
    <th>图片链接</th>
    <th>状态</th>
    <th>上架时间</th>
    <th>操作</th>
  </tr>
  	<c:forEach items="${list}" var="u">
  <tr>
  <td><input type="checkbox"/></td>
    <td>${u.name}</td>
    <td>${u.liebie}</td>
    <td>${u.zibie}</td>
    <td>${u.tu}</td>
    <td>${u.zhuan}</td>
    <td>${u.date}</td>
    <td><button>修改</button></td>
  </tr>
	</c:forEach>
</table>
</div>
	<p:page controller="Shang" pagesize="3" total="${total}" curpage="${curpage}"/>
	<div id = "xwei">
	<div id = "xwei_1">
	<c:forEach items="${io}" var="u">
	<h2 style="display: flex; align-items: center; float: left; margin-right: 10px;">商品名称: <input style="height: 23px; margin-left: 10px;" value="${u.name}" id = "shangming"></h2>
	<input type="hidden" id="imageName" name="imageName"value="${u.name}">
		商品类别:<select id = "xlb">
   			<option value="value1" id = "di1">${u.zibie}</option>
   			<c:forEach items="${lei}" var="x">
  			<option value="value2">${x.name}</option>
  			</c:forEach>
		</select>
		<span>${u.liebie}</span>
		
		<span style="margin-left: 50px;">状态:${u.zhuan}</span>
		<span style="margin-left: 50px;">上架时间:${u.date}</span>
		<a onclick="GaiName()">确认修改</a>
		<br>
		<br>
		<p style="float:left;">商品图片:</p><input type="file" id="fileInput" multiple accept="image/*">
		<c:forEach items="${tu}" var="tu">
    		<div class="container">
        		<div class="shangtu">
            	<img src="${tu}" />
            	<div class="overlay" onclick="shan(this)"><p style="line-height: 125px; text-align: center; color: #ffffff;">要删除该图片吗</p></div>
        	</div>
    		</div>
		</c:forEach>
		</c:forEach>
	</div>
	
	</div>
	</div>
	</div>
	
</body>
<script>

  
// 给每个 "修改" 按钮添加点击事件监听器
document.querySelectorAll('button').forEach(button => {
  button.addEventListener('click', function() {
    // 找到当前行
    let row = this.closest('tr');
    // 获取当前行中商品名称所在的单元格（第二列）
    let productNameCell = row.querySelector('td:nth-child(2)');
    // 获取商品名称的值
    let productName = productNameCell.textContent;
    // 在这里可以使用商品名称进行其他操作，比如将其传递给后端处理
    console.log('当前商品名称：', productName);
    window.location.href = "ShangZhao?name="+productName;
  });
});

		 function shan(element) {
			    // 找到最近的父容器，这里假设父容器是 class 为 "shangtu" 的 div 元素
			    var parentContainer = element.closest('.shangtu');
			    
			    if (parentContainer) {
			        // 在父容器内查找第一个 img 元素
			        var imgElement = parentContainer.querySelector('img');
			        
			        if (imgElement) {
			            // 获取 img 元素的 src 属性值
			            var shang = document.getElementById("shangming").value;
			            var imgSrc = imgElement.getAttribute('src');
			            window.location.href = "ShangXTu?src="+imgSrc+"&name="+shang;
			        } else {
			            console.log('未找到图片元素');
			        }
			    } else {
			        console.log('未找到父容器');
			    }
			}
		 var selectedOption;
		 function GaiName() {
			 var xname = document.getElementById("shangming").value;
			 var yname = document.getElementById("imageName").value;
			 window.location.href = "ShangXiGai?xname="+xname+"&yname="+yname+"&cname="+selectedOption;
		}
		 document.getElementById("xlb").addEventListener("change", function() {
			  selectedOption = this.options[this.selectedIndex].text;
			  console.log(selectedOption);
			});
		 
		 document.getElementById('fileInput').addEventListener('change', function(event) {
			 // 获取文件输入框
		      var fileInput = document.getElementById('fileInput');
		      // 获取选择的文件列表
		      var files = fileInput.files;
			  var src = [];
		      // 遍历文件列表
		      for (var i = 0; i < files.length; i++) {
		        var file = files[i];
		        src.push(file.name);
		      }
		      var yname = document.getElementById("imageName").value;
		      window.location.href = "ShangGaiTu?src="+src+"&name="+yname;
			});
</script>
<script src="../js/ShangPi.js"></script>
<script src="../js/ce.js"></script>
</html>