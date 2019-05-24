$(function() {
	var iCountOfImage = 3; // 共三张图片
	var iPreIndex = 0; // 上一次索引位置
	$(".ppt-container ul.button-list li span").click(function() {
		var iIndex = $(this).attr("data-index");
		if(iIndex == iPreIndex) {
		return; // 点击了当前图片，不切换
		}
		
		$(".ppt-container .image-list li[data-index="+ iIndex +"]").fadeIn(1500);
		$(".ppt-container .image-list li[data-index="+ iPreIndex +"]").fadeOut(1500);
		iPreIndex = iIndex;
		$(".ppt-container .button-list span").removeClass("selected");
		$(this).addClass("selected");
		});
		setInterval(function() { // 自动播放，每5秒触发一次单击事件，来播放幻灯片
		var iNextIndex = (iPreIndex + 1) % iCountOfImage;
		$(".ppt-container ul.button-list li span[data-index="+ iNextIndex +"]").click();
	}, 8000);
});