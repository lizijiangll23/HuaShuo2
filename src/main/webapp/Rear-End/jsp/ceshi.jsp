<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>批量选择图片</title>
</head>
<body>
  <input type="file" id="fileInput" multiple accept="image/*">
  <button onclick="uploadImages()">上传图片</button>

  <script>
    function uploadImages() {
      // 获取文件输入框
      var fileInput = document.getElementById('fileInput');
      // 获取选择的文件列表
      var files = fileInput.files;

      // 遍历文件列表
      for (var i = 0; i < files.length; i++) {
        var file = files[i];
        // 处理文件，这里可以进行上传等操作
        console.log('文件名:', file.name);
        console.log('文件类型:', file.type);
        console.log('文件大小:', file.size, 'bytes');
      }
    }
  </script>
</body>
</html>