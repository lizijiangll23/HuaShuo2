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
<link href="../css/guan_1.css" rel="stylesheet" type="text/css" />
<style>
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
	select{
		width:40px;
		margin: 5px 5px;
		padding: 2px 6px;
		border-radius:4px;
	}
	table {
	  border-collapse: collapse;
	  width: 30%;
	}
	td {
	  text-align: center;
	  padding: 5px;
	  border: none;
	}
	#yuan{
	height: 411px;
	}
</style>
<body>
	<jsp:include page="bian.jsp"></jsp:include>
	<div id="lan">
		<div id="tian">
			<div id="tian_1">
				<div class="qi">
					<p id="tq">株洲天气</p>
					<p id="zhi">
						空气质量:<span id="you_t">优</span>
					</p>
				</div>
				<div class="qi">
					<div class="qi_1" style="width: 30%;">
						<img src="../imgs/多云.png" />
					</div>
					<div class="qi_2" style="width: 70%;">
						<p id="zhou">今天（周三）</p>
						<p id="qi_3">阴</p>
						<p id="du">6°C~15°C</p>
					</div>
				</div>
				<div class="qi">
					<div class="qi_1" style="width: 30%;">
						<img src="../imgs/多云.png" />
					</div>
					<div class="qi_2" style="width: 70%;">
						<p id="zhou">今天（周三）</p>
						<p id="qi_3">阴</p>
						<p id="du">6°C~15°C</p>
					</div>
				</div>
				<div class="qi">
					<div class="qi_1" style="width: 30%;">
						<img src="../imgs/多云.png" />
					</div>
					<div class="qi_2" style="width: 70%;">
						<p id="zhou">今天（周三）</p>
						<p id="qi_3">阴</p>
						<p id="du">6°C~15°C</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 分页隐藏作用域 -->
			<input type="hidden" name="curpage" value="${param.curpage}">
	    	<input type="hidden" name="pagesize" value="10">
		<div id="shu">
			<div id="an">
				<button onclick="showPopup()">新增</button>
				<button id="deleteButton">删除</button>
				<button onclick="shua()">刷新</button>
				<button>导出</button>
			</div>
			<div id="overlay" class="overlay"></div>
			<div id="popup" style="display: none">
				<div id="xto">
					<p>新增管理员</p>
					<img src="../imgs/x .png" onclick="closePopup()">
				</div>
				<div id="xzuo">
					<div id="xtox">
						<img src="../imgs/225默认头像.png" id="selectedImage">
					</div>
					<br> <input type="file" id="guan" accept="image/*" onchange="handleFileSelect(event)">
				</div>
				<div id="xyou">
					<h2>设置账户</h2>
					<form action="que" method="get" onsubmit="return submitForm()">
    工号:<input type="text" value="${id}" name="gon"><br>
    名字:<input type="text" id="names" name="name"><br> 
    账户:<input type="text" id="zhang" name="zhang"><br> 
    密码:<input type="password" name="mi"><br> 
    确认密码:<input type="password" style="margin: 0px;" name="mi_1"><br>
    <input type="hidden" id="imageName" name="imageName"> <!-- 隐藏字段用于存储图片文件名 -->
    <input type="submit" value="确认">
    <button type="button" onclick="cancelForm()">取消</button>
</form>
				</div>
			</div>
			
			
			<div id="goverlay" class="goverlay"></div>
			<div id="gpopup" style="display: none">
				<div id="gto">
					<p>修改管理员</p>
					<img src="../imgs/x .png" onclick="gclosePopup()">
				</div>
				<div id="gzuo">
				
						<div id="gtox">
						<c:forEach items="${slist}" var="a">
							<img src="${a.ad_head}" id="gselectedImage">
						</c:forEach>
						</div>
						<br>
							<input type="file" id="guan" accept="image/*" onchange="xuto(event)">
					</div>
				<div id="gyou">
					<h2>设置账户</h2>
					<form action="gai" method="get">
						<c:forEach items="${slist}" var="a">
						工号:<input type="text" value="${a.ad_id}" name="ggon"style="margin-left: 45px;"><br>
						名字:<input type="text" id="gnames" name="gname" value="${a.ad_name}" style="margin-left: 45px;"><br> 
						账户:<input type="text" id="gzhang" name="gzhang" value="${a.ad_account}" style="margin-left: 45px;"><br> 
						原密码:<input type="password" name="gmi"><br>
						新密码:<input type="password"  name="gmi_1"><br>
						<input type="hidden" id="gainame" name="gainame"> <!-- 隐藏字段用于存储图片文件名 -->
						<input type="submit" value="确认" onclick="xiugai">
						</c:forEach>
						<button>取消</button>
					</form>
				</div>
			</div>
			
			
			<div id="yuan">
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
                    <td><input type="checkbox"></td>
                    <td>${u.ad_id}</td>
                    <td>${u.ad_name}</td>
                    <td>正常</td>
                    <td class="ad-account" data-adid="${u.ad_id}" onclick="handleClick(event)">${u.ad_account}</td>
                    <td>  <input type="submit" value="删除" onclick="shan(event, '${u.ad_id}')">
                <button onclick="gshowPopup()" data-adid="${u.ad_id}">修改</button></td>
            </tr>
        </c:forEach>
        <!-- 可以根据需要添加更多的行 -->
    </tbody>
</table>
			</div>
			<p:page controller="GuanLi" pagesize="10" total="${total}" curpage="${param.curpage}"/>

		</div>
		<div id=xian></div>
	</div>
</body>
<script>
function handleFileSelect(event) {
    const selectedFile = event.target.files[0];
    const fileName = selectedFile.name;
    document.getElementById("imageName").value = fileName; // 设置隐藏字段的值
    const reader = new FileReader();
    reader.onload = function(event) {
        const imgElement = document.getElementById('selectedImage');
        imgElement.src = event.target.result; // 显示图片预览
    };
    reader.readAsDataURL(selectedFile); // 读取文件内容并显示预览
}
function xuto(event) {
    const selectedFile = event.target.files[0];
    const fileName = selectedFile.name;
    document.getElementById("gainame").value = fileName; // 设置隐藏字段的值
    const reader = new FileReader();
    reader.onload = function(event) {
        const imgElement = document.getElementById('gselectedImage');
        imgElement.src = event.target.result; // 显示图片预览
    };
    reader.readAsDataURL(selectedFile); // 读取文件内容并显示预览
}
function shua(){
	alert("刷新了")
}
</script>
<script src="../js/ce.js"></script>
<script src="../js/Guan.js"></script>
</html>