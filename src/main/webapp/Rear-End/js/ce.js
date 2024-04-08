 $(function() {
		      $("#accordion .item").click(function() {
		          var $parentLi = $(this).parent();
		          $parentLi.siblings().find('.sub-items').slideUp().addClass('hidden');
		          $parentLi.siblings().find('.xia').removeClass('rotate'); // 关闭其他菜单项的箭头动画
		          $parentLi.find('.sub-items').slideToggle().toggleClass('hidden');
		          $(this).find('.xia').toggleClass('rotate'); // 切换当前菜单项的箭头动画
		      });
		  });