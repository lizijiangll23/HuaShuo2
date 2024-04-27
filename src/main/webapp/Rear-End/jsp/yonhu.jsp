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
<link href="../css/yonhu.css" rel="stylesheet" type="text/css" />
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
				<button onclick="showPopup(); namea()">重置ID</button>
				<button id="deleteButton" onclick="showPopup();toa()">重置头像</button>
				<button onclick="showPopup();namea();toa()">一起重置</button>
				<button onclick="ming();">查询违规</button>
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
					<br> <input type="file" id="xuan" accept="image/*"
						onchange="displaySelectedImage(event)">
				</div>
				<div id="xyou">
					<h2>设置账户</h2>
					<form action="que" method="get">
						工号:<input type="text" value="${id}" name="gon"><br>
						名字:<input type="text" id="names" name="name"><br>
						 账户:<input type="text" id="zhang" name="zhang"><br> 
						 密码:<input type="password" name="mi"><br> 
						 确认密码:<input type="password" style="margin: 0px;" name="mi_1"><br>
						<input type="submit" value="确认">
						<button>取消</button>
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
							<img src="../imgs/225默认头像.png" id="gselectedImage">
						</div>
						<br> <input type="file" id="guan" accept="image/*"
							onchange="gdisplaySelectedImage(event)">
					</div>
				<div id="gyou">
					<h2>设置账户</h2>
					<form action="gai" method="get">
					<c:forEach items="${slist}" var="a">
						工号:<input type="text" value="${a.ad_id}" name="ggon"><br>
						名字:<input type="text" id="gnames" name="gname" value="${a.ad_name}"><br> 
						账户:<input type="text" id="gzhang" name="gzhang" value="${a.ad_account}"><br> 
						密码:<input type="password" name="gmi"><br>
						确认密码:<input type="password" style="margin: 0px;" name="gmi_1"><br>
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
            <th><input type="checkbox" id="selectAllCheckbox"></th>
            <th>ID</th>
            <th>用户名</th>
            <th>账号</th>
            <th>头像</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="u">
            <tr class="user-row">
                <td><input type="checkbox" class="user-checkbox"></td>
                <td class="uid">${u.uid}</td>
                <td>${u.uname}</td>
                <td>${u.account}</td>
                <td>${u.head}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

			</div>
			<p:page controller="ChaYonHu" pagesize="10" total="${total}" curpage="${param.curpage}"/>
		</div>
		<div id=xian>
		<h1 id = "yu">预览信息</h1>
		</div>
	</div>
</body>
<script src="../js/ce.js"></script>
<script>
$(document).ready(function() {
    $('.user-row').hover(
        function() {
            var userId = $(this).find('.uid').text();
            console.log('Mouse entered user with ID: ' + userId);
            // 发送Ajax请求并传递用户ID到服务器端
            $.ajax({
                url: 'JuBu',
                type: 'GET',
                data: { userId: userId }, // 将用户ID作为数据传输到服务器端
                success: function(data) {
                    $('#xian').html(data); // 更新局部内容，将返回的数据添加到指定的div中
                }
            });
        },
        function() {
            var userId = $(this).find('.uid').text();
            console.log('移出了' + userId);
            // 在这里你可以执行你的逻辑，比如隐藏用户信息等
        }
    );
});
const selectedIds = [];
function showPopup() {
    const userCheckboxes = document.querySelectorAll('.user-checkbox:checked');

    userCheckboxes.forEach(function(checkbox) {
        const row = checkbox.closest('tr');
        const idCell = row.querySelector('.uid');
        const id = idCell.textContent.trim();
        selectedIds.push(id);
    });

    // 在此你可以使用 selectedIds 数组进行进一步的处理
    console.log(selectedIds);
    // 将 console.log 替换为你想要的操作，比如在弹出窗口中显示

    // 这里是一个示例，将选中的 ID 显示在一个弹出窗口中
    alert('选中的ID: ' + selectedIds.join(', '));
}
function namea() {
	window.location.href = "GaiName?selectedIds="+selectedIds; 
}
function toa() {
	window.location.href = "GaiTo?selectedIds="+selectedIds; 
}
document.addEventListener("DOMContentLoaded", function() {
    const selectAllCheckbox = document.getElementById("selectAllCheckbox");
    const userCheckboxes = document.querySelectorAll(".user-checkbox");

    selectAllCheckbox.addEventListener("change", function() {
        const isChecked = this.checked;
        userCheckboxes.forEach(function(checkbox) {
            checkbox.checked = isChecked;
        });
    });

    userCheckboxes.forEach(function(checkbox) {
        checkbox.addEventListener("change", function() {
            const allChecked = Array.from(userCheckboxes).every(function(cb) {
                return cb.checked;
            });
            selectAllCheckbox.checked = allChecked;
        });
    });
});
function ming() {
    var ming = ['操', '你妈', '傻', '逼', '睿智', '弱智', '死'];
    
  
    
    // 向后端服务发送请求
    window.location.href = "Ming?keywords=" + ming;
}

</script>
</html>