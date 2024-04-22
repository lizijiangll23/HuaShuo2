// $(function(){
//   var title = $("#a-title").text();

//   function showContent(selector, link) {
//     $(selector).css("display", "block");
//     // 将其他div隐藏
//     $("#c_center, #c_order, #c_salce, #c_comment, #c_activity, #c_coupon, #c_bring, #c_love, #c_massage, #c_safe, #c_adderss").not(selector).css("display", "none");

//     $("#a-title").text("个人中心");
//     $(".now").text($(link).text());
//     title = $("#a-title").text();
//   }

//   $("#a-title").click(function(){
//     if (title == "首页"){
//       // 跳转到首页
//       alert("跳转");
//     } else {
//       showContent("#c_center", this);
// 	  $("#a-title").text("首页");
// 	  title = $("#a-title").text();
//     }
//   });
// });