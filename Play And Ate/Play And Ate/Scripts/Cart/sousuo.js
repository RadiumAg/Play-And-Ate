/**
 * 全局搜索
 */
window.onload=function()
{
	
	var sousuo_btn=document.getElementById("sousuo_btn"),
	sousuo_btn_map = document.getElementById("sousuo_btn_map"),
	input=document.getElementById("header_kw"),
	search_farmlist=document.getElementById("search_farmlist"),
	search_houselb=document.getElementById("search_houselb"),
	search_fish=document.getElementById("search_fish");
	input.onfocus=function(){
		input.value='';
	}
	input.onblur=function(){
		input.value=input.value;
	}
	var url="../Search/Search.aspx";
	sousuo_btn.onclick=function(){
		if (input.value == '请输入您要搜索的关键词')
		{
			input.value = '';
		}
        sousuo_btn.href +="../Search/Search.aspx?content="+input.value;
	}
	
    var map_search_url ="../Search/Search.aspx?content=";
	sousuo_btn_map.onclick=function(){
		if (input.value == '请输入您要搜索的关键词')
		{
			input.value = '';
		}
		sousuo_btn_map.href+=map_search_url+input.value;
	}
}