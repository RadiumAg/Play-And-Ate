window.onload = function(){
　	var len=$(".tu>a").length;
	var i=0;
	var lunhuan;
	var kuan=$(window).width();
	$(".tu>a").css('width',kuan);
	$(".xu:eq(0)").removeClass('m_imgl');
	$(".xu:eq(0)").addClass('m_imgs');
	function huan()
	{	$(".xu:eq("+i+")").removeClass('m_imgl');
		$(".xu:eq("+i+")").addClass('m_imgs');
		$(".xu:eq("+i+")").siblings().removeClass('m_imgl');
		$(".xu:eq("+i+")").siblings().addClass('m_imgl');
		$(".txt>em:eq("+i+")").siblings("em").fadeOut("fast");
		$(".txt>em:eq("+i+")").fadeIn("fast");
		$(".tu>a:eq("+i+")").siblings("a").fadeOut(500);
		$(".tu>a:eq("+i+")").fadeIn(500);
		i=i+1
		if(i==len)
		{i=0}
	}
	lunhuan=setInterval(huan,4000);
	
	
	
} 
function haos(j){
		$(".xu:eq("+j+")").removeClass('m_imgl');
		$(".xu:eq("+j+")").addClass('m_imgs');
		$(".xu:eq("+j+")").siblings().addClass('m_imgl');
		$(".txt>em:eq("+j+")").siblings("em").fadeOut("fast");
		$(".txt>em:eq("+j+")").fadeIn("fast");
		i=j;
		$(".tu>a:eq("+j+")").siblings("a").fadeOut(500);
		$(".tu>a:eq("+j+")").fadeIn(500);
}