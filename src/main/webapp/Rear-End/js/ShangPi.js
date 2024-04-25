/**
 * 
 */
function cha() {
	var inputValue = document.getElementById("tiao").value;
	// 构建带有模糊查询条件的URL
	var url = "Shang_MoHu?tiao=" + encodeURIComponent("c.cname LIKE '%" + inputValue + "%'");

	// 使用新的URL导航到页面
	window.location.href = url;
}
function handleSelectChange() {
    // 获取<select>元素
    var selectElement = document.getElementById("mySelect");

    // 获取选定的索引
    var selectedIndex = selectElement.selectedIndex;
    
    // 获取选定的文本
    var selectedText = selectElement.options[selectedIndex].text;
    
    var url = "Shang_MoHu?tiao=" + encodeURIComponent("cc.category LIKE '%" + selectedText + "%'");

	// 使用新的URL导航到页面
	window.location.href = url;
}
function handleSelectChange2() {
    // 获取<select>元素
    var selectElement = document.getElementById("mySelect2");

    // 获取选定的索引
    var selectedIndex = selectElement.selectedIndex;
    
    // 获取选定的文本
    var selectedText = selectElement.options[selectedIndex].text;
    
    var url = "Shang_MoHu?tiao=" + encodeURIComponent("cf.cfname LIKE '%" + selectedText + "%'");

	// 使用新的URL导航到页面
	window.location.href = url;
}
//获取表头复选框
var selectAllCheckbox = document.querySelector("#product-table th input[type='checkbox']");

// 获取所有商品复选框
var productCheckboxes = document.querySelectorAll("#product-table td input[type='checkbox']");

// 为表头复选框添加点击事件监听器
selectAllCheckbox.addEventListener('click', function() {
  // 如果表头复选框被选中
  if (selectAllCheckbox.checked) {
    // 遍历所有商品复选框，将它们都选中
    productCheckboxes.forEach(function(checkbox) {
      checkbox.checked = true;
    });
  } else {
    // 如果表头复选框未被选中，取消所有商品复选框的选中状态
    productCheckboxes.forEach(function(checkbox) {
      checkbox.checked = false;
    });
  }
});

function handleSelectChange3() {
    // 获取下拉列表
    var selectElement = document.getElementById("mySelect3");
    
    // 获取所有商品复选框
    var productCheckboxes = document.querySelectorAll("#product-table td input[type='checkbox']");
    
    // 获取所有商品名称单元格
    var productNames = document.querySelectorAll("#product-table td:nth-child(2)");
    
    // 获取选中的下拉列表的值
    var selectedValue = selectElement.value;
    
    // 定义一个空数组来存储选中的商品名称
    var selectedProductNames = [];
    
    // 遍历所有商品复选框
    productCheckboxes.forEach(function(checkbox, index) {
      // 如果商品复选框被选中
      if (checkbox.checked) {
        // 获取对应的商品名称并添加到数组中
        var productName = productNames[index].textContent;
        selectedProductNames.push(productName);
      }
    });
    
    // 输出选中的商品名称
    console.log("选中的商品名称:", selectedProductNames);
    
    // 这里你可以将选中的商品名称和选择的值发送到后端进行处理
    // TODO: 在这里添加代码来处理选中的商品名称和选中的值
    // 获取<select>元素
    var selectElement = document.getElementById("mySelect3");

    // 获取选定的索引
    var selectedIndex = selectElement.selectedIndex;
    
    // 获取选定的文本
    var selectedText = selectElement.options[selectedIndex].text;
    console.log(selectedText);
    window.location.href = "ShangZhuang?zhuang=" + selectedText + "&selectedProductNames=" + selectedProductNames.join(",");
  }