/**
 * 
 */
var id =0;
document.addEventListener('DOMContentLoaded', function() {
    // 创建一个空对象用于存储点击的行信息
    var clickedRow = {};

    var rows = document.querySelectorAll('tbody tr');
    
    rows.forEach(function(row) {
        row.addEventListener('click', function() {
            // 添加你想要的点击操作，比如改变样式、显示详细信息等
            console.log('你点击了行 ' + row.querySelector('td:nth-child(3)').innerText);
             id= row.querySelector('td:nth-child(3)').innerText;
			
        });
    });
});
function handleClick(event) {
    var btn = event.target; // 获取被点击的按钮
    id = btn.getAttribute('data-adid'); // 获取自定义属性的值
    window.location.href = "chaxiu?id="+id;
}
document.getElementById("deleteButton").addEventListener("click", function() {
    // 使用 confirm 函数显示确认框，并获取用户的选择结果
    var confirmDelete = confirm("确定要删除该员工信息吗？");
    
    // 如果用户点击确认，则执行删除操作
    if(confirmDelete) {
    	window.location.href = "GuanLiShan2?id="+id; 
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
    function gshowPopup() {
		
        var overlay = document.getElementById('goverlay');
        var popup = document.getElementById('gpopup');

        overlay.style.display = 'block';
        popup.style.display = 'block';
    }

    function gclosePopup() {
		
        var overlay = document.getElementById('goverlay');
        var popup = document.getElementById('gpopup');

        overlay.style.display = 'none';
        popup.style.display = 'none';
    }
    function xiugai(){
		var confirmDelete = confirm("确定要修改该员工信息吗？");
    
    // 如果用户点击确认，则执行删除操作
    if(confirmDelete) {
    	
        alert("修改成功");
    } else {
        // 用户点击取消，不执行任何操作
        alert("已取消");
    }
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

function shan(event, adId) {
    var confirmDelete = confirm("确定要修改该员工信息吗？");
    
    // 如果用户点击确认，则执行删除操作
    if(confirmDelete) {	
    	window.location.href = "GuanLiShan?adId="+adId;
        alert("删除成功");
    } else {
        // 用户点击取消，不执行任何操作
        alert("已取消");
    }
}

