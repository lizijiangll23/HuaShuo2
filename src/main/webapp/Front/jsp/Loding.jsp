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
				<form class="lodingbox" method="post" action="#">
					<p class="title">
						登录
					</p>
					
					<div class="part1">
						<input class="ipts" name="lodingphone" placeholder="输入手机号" maxlength="11" autocomplete="off">
						<div class="codebox">
							<input type="text" autocomplete="off" name="code" class="ipts inputs" placeholder="请输入验证码"	>
							<span class="send">
								获取验证码
							</span>
							
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
					
					<input type="submit" class="btns">
					
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
    // 初始状态下按钮透明度为初始透明度
    var initialOpacity = $(".btns").css("opacity");

    // 监听输入框的 input 事件
    $(".ipts, .che").on("input", function() {
      var isPart1Filled = $(".part1 .ipts").val() && $(".part1 .inputs").val();
      var isPart2Filled = $(".part2 .name").val() && $(".part2 .pass").val();
      var isChecked = $(".che").prop("checked");
      
      // 如果part1和part2中满足其中一个条件，则取消按钮的透明度，并启用按钮
      if ((isPart1Filled || isPart2Filled) && isChecked) {
        $(".btns").css("opacity", 1);
        $(".btns").prop("disabled", false);
      } else {
        $(".btns").css("opacity", initialOpacity);
        $(".btns").prop("disabled", true);
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
    
    // 点击事件处理程序
    $(".a").click(function(){
      $(".part1, .part2").toggle();
      if($(".a").text()=="密码登录"){
    	  $(".a").text("手机号登录");
      }else{
    	  $(".a").text("密码登录");
      }
    });
  });
</script>
</html>