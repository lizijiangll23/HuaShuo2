<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>管理员登录</title>
<link rel="icon" href="loginSpecial/images/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="loginSpecial/images/favicon.ico" type="image/x-icon"/>
<link href="loginSpecial/css/default.css" rel="stylesheet" type="text/css" />
<link href="loginSpecial/css/styles.css" rel="stylesheet" type="text/css" />
<link href="loginSpecial/css/demo.css" rel="stylesheet" type="text/css" />
<link href="loginSpecial/css/loaders.css" rel="stylesheet" type="text/css" />
<script src="loginSpecial/js/jquery-2.1.1.min.js"></script>

<script type="text/javascript">
    $(function() {
        $("[type=button]").click(function() { 
            const userInput = $(".ValidateNum").val().toUpperCase();
            const storedCaptcha = document.getElementById("myCanvas");
            var name = $("[name=login]").val();
            var pass = $("[name=pwd]").val();
            alert(userInput+","+storedCaptcha);
            if (userInput === storedCaptcha) {
                $.ajax({
                    type : "post",
                    url : "../../administratorsServlet",
                    data : {
                        "op" : "dengLu",
                        "adm_Name" : name,
                        "adm_Pass" : pass
                    },
                    success : function(x) {
                        var pd = eval(x).row;
                        if (pd == 0) {
                            alert('您的账号或密码错误');
                        } else {
                            alert("登录成功")
                        }
                    }
                });
            } else {
                alert("验证码错误，请重试");
                Code(); // If captcha is incorrect, regenerate new captcha
            }
        });
    })
</script>
</head>
<body>
    <div class='login'>
        <div class='login_title'>
            <span>管理员登录</span>
        </div>

        <div class='login_fields'>
            <div class='login_fields__user'>
                <div class='icon'>
                    <img alt="" src='../images/user_icon_copy.png'>
                </div>
                <input name="login" placeholder='用户名' maxlength="16"
                    class="username" type='text' autocomplete="off" />
                <div class='validation'>
                    <img alt="" src='../images/tick.png'>
                </div>
            </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='../images/lock_icon_copy.png'>
                </div>
                <input name="pwd" class="passwordNumder" placeholder='密码'
                    maxlength="16" type='text' autocomplete="off">
                <div class='validation'>
                    <img alt="" src='../images/tick.png'>
                </div>
            </div>
            <div class='login_fields__password'>
                <div class='icon'>
                    <img alt="" src='../images/key.png'>
                </div>
                <input placeholder='验证码' maxlength="4"
                    class="ValidateNum" type='text' autocomplete="off">
                <div class='validation' style="opacity: 1; right: -5px; top: -3px;">
                    <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
                </div>
            </div>
            <div class='login_fields__submit'>
                <input type="button" value="登录" />
            </div>
        </div>
        <div class='success'></div>
        <div class='disclaimer'>
            <p>欢迎登陆接入平台</p>
        </div>
    </div>
    <div class='authent'>
        <div class="loader"
            style="height: 60px; width: 60px; margin-left: 28px; margin-top: 40px">
            <div class="loader-inner ball-clip-rotate-multiple">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <p>认证中...</p>
    </div>
    <div class="OverWindows"></div>
    <link href="loginSpecial/js/layui/css/layui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="loginSpecial/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src='loginSpecial/js/stopExecutionOnTimeout.js?t=1'></script>
    <script src="loginSpecial/js/layui/layui.js" type="text/javascript"></script>
    <script src="loginSpecial/js/Particleground.js" type="text/javascript"></script>
    <script src="loginSpecial/js/Treatment.js" type="text/javascript"></script>
    <script src="loginSpecial/js/jquery.mockjax.js" type="text/javascript"></script>
    <script src="loginSpecial/js/controlLogin.js?v=<%=System.currentTimeMillis()%>"
        type="text/javascript"></script>
</body>
</html>