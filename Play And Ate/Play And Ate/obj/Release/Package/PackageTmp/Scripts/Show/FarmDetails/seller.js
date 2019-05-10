
$(function(){
	$("a.preview").preview();
})
function fang_hover(id)
{
	$('#store_fang_'+id).removeClass("h");
	$('#store_fang_hover_'+id).mouseout(function(){
		$('#store_fang_'+id).addClass("h");
	})
}
function can_hover(id)
{
	$('#store_can_'+id).removeClass("h");
	$('#store_can_hover_'+id).mouseout(function(){
		$('#store_can_'+id).addClass("h");
	})
}
	function review_forms(id)
	{
		var ajaxurl = APP_ROOT+"/store.php?ctl=seller&act=ajax_login_pd&ajax=1";
		$.ajax({ 
			url: ajaxurl,
			type: "POST",
			success: function(result){
				if(result==0)
				{
					$.weeboxs.open(APP_ROOT+"/shop.php?ctl=ajax&act=ajax_login", {contentType:'ajax',showButton:false,title:LANG['PLEASE_LOGIN_FIRST'],width:570,type:'wee'});	
					
				}
				else
				{
					$.weeboxs.open(APP_ROOT+"/store.php?ctl=seller&act=get_seller_form&ajax=1&id="+id, {contentType:'ajax',showButton:false,title:'用户点评',width:700,type:'wee'});	
					
				}
			},
			error:function(o)
			{
				// return false;
			}
		});	
	}
function load_store_dp(id,is_best,filter,sort)
{
	$.ajax({ 
		url: APP_ROOT+"/store.php?ctl=review&act=ajax_list&is_best="+is_best+"&supplier_location_id="+id+"&filter="+filter+"&sort="+sort,
		type: "POST",	
		dataType: "json",	
		cache:false,		
		success:function(result){
			$("#store_dp").html(result.html);
		},
		error:function(o){
			//alert(o.responseText);
		}
	});
}
	function zhankai()
	{
		var bs = $("#biaoshi").val();
		if(bs == 0)
		{
			$("#biaoshi").val('1');
			$("#sh_brief").css({"height":"auto"});
			$("#zhankai").html("[收起]");
		}
		else
		{
			$("#biaoshi").val('0');
			$("#sh_brief").css({"height":"120px"});
			$("#zhankai").html("[查看更多]");
		}
		
	}
	function wenda_dd(id)
	{
		//alert(id);
		var ajaxurl = APP_ROOT+"/store.php?ctl=seller&act=wenda_dd&ajax=1&location_id="+id;
		$.ajax({ 
			url: ajaxurl,
			dataType: "json",
			success: function(obj){
				if(obj.user_id==0)
				{
					$.weeboxs.open(APP_ROOT+"/shop.php?ctl=ajax&act=ajax_login", {contentType:'ajax',showButton:false,title:LANG['PLEASE_LOGIN_FIRST'],width:570,type:'wee'});	
				}
				else
				{
					$.weeboxs.open(APP_ROOT+"/shop.php?ctl=ajax&act=reply_user&location_id="+id, {contentType:'ajax',showButton:false,title:'问题提交',width:570,type:'wee'});
				}
			},
			error:function(o)
			{
				// return false;
			}
		});		
		
	}
	
	function detail(id)
	{
		$.weeboxs.open(APP_ROOT+"/shop.php?ctl=ajax&act=detail&id="+id, {contentType:'ajax',showButton:false,title:"商家地图",width:750,type:'wee'});
	}
	function nearby_huan(id)
	{
		var limet = $("#limet").val();
		
		$.ajax({
			url: APP_ROOT+"/store.php?ctl=seller&act=nearby_ajax&limet="+limet+"&id="+id,
			type: "POST",
			success: function(result){
				//alert(result);
				$("#nearby").html(result);
			},
			error:function(o)
			{
				// return false;
			}
		});
		//alert(limet);
	}
	