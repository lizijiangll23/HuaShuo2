<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Loding.css">
</head>
<style>
*{
	padding:0px;
	margin:0px;
}
.msg{
	font-size: 16px;
    color: #a6a6a6;
    height: 21px;
    line-height: 21px;
    margin-bottom: 16px;
}
.btns{
	opacity:0.3;
}

</style>
<body>
	<div class="Lodingbox">
		<a class="logo" href="#">
			<img class="logoimg" src="../imgs/logos.png">
		</a>
		<div class="intobox">
			<div class="leftbox">
				<a class="banner">
					<img class="banner_img" src="../imgs/banner.png" >
				</a>
			</div>
			<div class="rightbox">
				<form class="lodingbox" method="post" action="../../LodinguserServlet">
					<p class="title">
						登录
					</p>
					
					<div class="part1">
						<input class="ipts phonenum" name="lodingphone" placeholder="输入手机号" maxlength="11" autocomplete="off">
						<p class="msg no" style="display:none;">手机号不正确</p>
						<div class="codebox">
							<input type="text" autocomplete="off" name="code" class="ipts inputs" placeholder="请输入验证码" maxlength="6"	>
							<span class="send">
								获取验证码
							</span>
							<p class="msg codeno" style="display:none;">验证码格式错误</p>
						</div>
						<p class="msg">未注册的手机号码，系统将自动为您创建账号</p>
					</div>
					
					<div class="part2"  style="display:none;" >
						<input class="ipts name" name="phoneorname" placeholder="用户名/手机号" maxlength="11" autocomplete="off">
						<div class="passwordbox">
							<input type="password" autocomplete="off" name="password" class="ipts pass" placeholder="密码">
							<img class="eye" src="../imgs/eye1.png">
						</div>
						<p class="msg" style="display:none;">用户名或密码不正确</p>
					</div>
					
					<div class="check" style="display:flex;">
						<input type="checkbox" class="che">
						<p>
							我已阅读并同意
							<a target="_blank">ASUS条款</a>
							&
							<a target="_blank">隐私政策</a>
							&
							<a target="_blank">隐私说明</a>
							&
							<a target="_blank">华硕会员服务隐私说明</a>
						</p>
						
					</div>
					
					<input type="submit" class="btns" value="登录">
					
					<p class="a">密码登录</p>
					</form>
				</div>
			
			</div>
		</div>
		
	</div>
</body>
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
  // 倒计时时长（秒）
  var countdownSeconds = 60;
  // 初始状态下按钮透明度为初始透明度
  var initialOpacity = $(".btns").css("opacity");
  // 声明一个标志变量，用于控制按钮的禁用状态
  var isCountdownActive = false;
  
  var code = "";

  // 监听输入框的 input 事件
  $(".ipts, .che").on("input", function() {
    var isPart1Filled = $(".phonenum").val() && $(".inputs").val();
    var isPart2Filled = $(".name").val() && $(".pass").val();
    var isChecked = $(".che").prop("checked");
    var isPhoneFilled = $(".phonenum").val();

    // 如果part1和part2中满足其中一个条件，并且isChecked为true，并且手机号输入不为空，则取消按钮的透明度，并启用按钮
    if (isPart1Filled && isChecked && isPhoneFilled) {
	    $(".btns").css("opacity", 1);
	    $(".btns").prop("disabled", false);
    } else if(isPart2Filled && isChecked){
	    $(".btns").css("opacity", 1);
	    $(".btns").prop("disabled", false);
    } 
    else {
	    $(".btns").css("opacity", initialOpacity);
	    $(".btns").prop("disabled", true);
    }

    // 输入手机号后，将获取验证码按钮的颜色变成蓝色
    var phonenum = $(".phonenum").val();
    if (phonenum.length > 0) {
      $(".send").css("background","blue");
      $(".send").css("color","#fff");
      $(".send").prop("disabled", true);
    } else {
      $(".send").css("background","#f7f7f7"); // 重置颜色
      $(".send").css("color","#a4aeba");
      $(".send").prop("disabled", false);
    }
  });
  


  // 点击事件处理程序
  $(".eye").click(function(){
    var imgSrc = $(this).attr("src");
    var newImgSrc = "";

    // 根据当前图片路径判断要切换的图片路径
    if (imgSrc === "../imgs/eye1.png") {
      newImgSrc = "../imgs/eye2.png";
      $(".pass").attr("type", "text");
    } else if (imgSrc === "../imgs/eye2.png") {
      newImgSrc = "../imgs/eye1.png";
      $(".pass").attr("type", "password");
    }

    // 更改图片路径
    $(this).attr("src", newImgSrc);
  });

//点击事件处理程序
  $(".a").click(function(){
    $(".part1, .part2").toggle();
    if($(".a").text()=="密码登录"){
      $(".a").text("手机号登录");
      $(".phonenum, .inputs").val("");
    }else{
      $(".a").text("密码登录");
      $(".name, .pass").val("");
    }

    // 更新登录按钮的状态
    updateLoginButton();
  });

  // 更新登录按钮的状态
  function updateLoginButton() {
    var isPart2Filled = $(".part2").is(":visible") && $(".part2 .name").val() && $(".part2 .pass").val();
    var isChecked = $(".che").prop("checked");

    // 如果part2的两个输入框都不为空，并且isChecked为true，则取消按钮的透明度，并启用按钮
    if (isPart2Filled && isChecked) {
      $(".btns").css("opacity", 1);
      $(".btns").prop("disabled", false);
    } else {
      $(".btns").css("opacity", initialOpacity);
      $(".btns").prop("disabled", true);
    }
  }

  // 点击事件处理程序
  $(".send").click(function(){
    // 如果倒计时正在进行中，或手机号输入为空，则不执行后续操作
    if (isCountdownActive || $(".part1 .ipts").val() === "") {
      return;
    }
    
    // 获取手机号输入框值
    var phonenum = $(".phonenum").val();

    // 检查手机号长度
    if (phonenum.length !== 11) {
    	$(".no").css("display","block").css("color","red");
    	return; // 若手机号长度不为11位，不执行后续操作
    }else{
    	$(".no").css("display","none").css("color","red");
    	$(".send").css("background","#f7f7f7"); // 重置颜色
        $(".send").css("color","#a4aeba");
        $(".send").prop("disabled", false);
    	
    	
    	var phone = $(".part1 .ipts").val();
		
        // 发送获取验证码的请求
        $.ajax({
          url: "../../RndServlet",
          method: "POST",
          data: {phone: phone},
          beforeSend: function() {
            // 禁用获取验证码按钮
            $(".send").prop("disabled", true);
            // 设置倒计时状态为激活
            isCountdownActive = true;
          },
          success: function(response) {
            // 获取验证码成功后，在控制台输出随机数
            alert(response);
            code = response;
            startCountdown();
          },
          error: function() {
            // 获取验证码失败
            console.log("错误");
            // 重置倒计时状态为非激活
            isCountdownActive = false;
            // 启用获取验证码按钮
            $(".send").prop("disabled", false);
          }
        });
    }
 	
 	
    
  });

  // 倒计时函数
  function startCountdown() {
    // 设置初始倒计时文本
    $(".send").text(countdownSeconds + "秒后重新发送");

    // 创建定时器，每秒更新倒计时文本
    var countdownTimer = setInterval(function() {
      countdownSeconds--;
      // 更新倒计时文本
      $(".send").text(countdownSeconds + "秒后重新发送");

      // 倒计时结束
      if (countdownSeconds === 0) {
        // 清除定时器
        clearInterval(countdownTimer);
        // 重置倒计时文本
        $(".send").text("获取验证码");
        // 重置倒计时秒数
        countdownSeconds = 60;
        // 设置倒计时状态为非激活
        isCountdownActive = false;
        // 启用获取验证码按钮
        $(".send").prop("disabled", false);
      }
    }, 1000);
  }
  //点击登录按钮事件处理程序
  $(".btns").click(function(event){
    // 阻止表单的默认提交行为
    event.preventDefault();

    // 获取用户输入的验证码
    var userInputCode = $(".inputs").val();
    // 获取发送的验证码
    var sentCode = code;

    // 检查用户输入的验证码是否正确
    if (userInputCode !== sentCode) {
      $(".codeno").css("display", "block").css("color", "red");
      return; // 若验证码不正确，不执行后续操作
    } else {
      $(".codeno").css("display", "none").css("color", "red");
    }

    $(".lodingbox").submit();
  });
  
});
</script>
</html>