<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="../js/jquery-2.1.1.min.js"></script>
    <script>
        function refreshPart() {
        	const xhr = new XMLHttpRequest();
        	xhr.onreadystatechange = function() {
        	  if (xhr.readyState === XMLHttpRequest.DONE) {
        	    if (xhr.status === 200) {
        	      console.log('Current IP Address:', xhr.responseText);
        	    } else {
        	      console.error('Error:', xhr.status);
        	    }
        	  }
        	};
        	xhr.open('GET', 'http://localhost:3000/', true);
        	xhr.send();
        }
    </script>
</head>
<body>
    
    <button onclick="refreshPart()"></button>
   
</body>
</html>