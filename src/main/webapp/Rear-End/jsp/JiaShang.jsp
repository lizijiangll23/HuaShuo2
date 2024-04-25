<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#tianjia{
width: 60%;
height: 500px;
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
height: 500px;
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
</style>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id = "lan">
	<div id = "tianjia">
	<h2>添加商品</h2>
	<br>
	<p style="margin-left: 50px;margin-bottom: 20px;">产品名称<input style="margin-left: 10px;"/>
	<select id="mySelect2" onchange="handleSelectChange2()">
	<option>全部类型</option>
   <option value="value1">灵耀</option>
   <option value="value2">a豆</option>
	</select></p>
	<div><p id = "pei">商品配置</p><input class="peit"/><button id="peijia">添加</button></div>
	<br>
	<div><p id = "fuwu">商品服务</p><input class="fuwut"><button id = "fuwujia">添加</button></div>
	</div>
	<div id = "xianshi"></div>
	</div>
</body>
<script>
document.getElementById("peijia").addEventListener("click", function() {
    // 创建一个新的文本框元素
    var newInput = document.createElement("input");
    // 添加类名到新的文本框元素
    newInput.classList.add("peit");
    // 将新文本框插入到当前文本框后面
    var currentInput = document.querySelector(".peit");
    currentInput.parentNode.insertBefore(newInput, currentInput.nextSibling);
});
document.getElementById("fuwujia").addEventListener("click", function() {
    // 创建一个新的文本框元素
    var newInput = document.createElement("input");
    // 添加类名到新的文本框元素
    newInput.classList.add("fuwut");
    // 获取当前文本框元素
    var currentInput = document.querySelector(".fuwut");
    // 如果当前文本框存在
    if (currentInput) {
        // 将新文本框插入到当前文本框后面
        currentInput.parentNode.insertBefore(newInput, currentInput.nextSibling);
    } else {
        // 如果当前文本框不存在，则将新文本框添加到 p 元素内部
        var parentElement = document.getElementById("fuwu");
        parentElement.appendChild(newInput);
    }
});
</script>
<script src="../js/ce.js"></script>
</html>