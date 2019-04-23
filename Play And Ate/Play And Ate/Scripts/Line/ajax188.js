<!--
//xmlhttp和xmldom对象
var A188XHTTP = null;
var Org7188XDOM = null;
var Org7188Containers = null;
var Org7188ShowError = false;
var Org7188ShowWait = false;
var Org7188ErrCon = "";
var Org7188ErrDisplay = "下载数据失败";
var Org7188WaitDisplay = "正在下载数据...";

//获取指定ID的元素

function $DE(id) {
	return document.getElementById(id);
}

//gcontainer 是保存下载完成的内容的容器
//mShowError 是否提示错误信息
//Org7188ShowWait 是否提示等待信息
//mErrCon 服务器返回什么字符串视为错误
//mErrDisplay 发生错误时显示的信息
//mWaitDisplay 等待时提示信息
//默认调用 ajaxx188('divid',false,false,'','','')

function ajaxx188(gcontainer,mShowError,mShowWait,mErrCon,mErrDisplay,mWaitDisplay)
{

	Org7188Containers = gcontainer;
	Org7188ShowError = mShowError;
	Org7188ShowWait = mShowWait;
	if(mErrCon!="") Org7188ErrCon = mErrCon;
	if(mErrDisplay!="") Org7188ErrDisplay = mErrDisplay;
	if(mErrDisplay=="x") Org7188ErrDisplay = "";
	if(mWaitDisplay!="") Org7188WaitDisplay = mWaitDisplay;


	//post或get发送数据的键值对
	this.keys = Array();
	this.values = Array();
	this.keyCount = -1;
	this.sendlang = 'gb2312';

	//请求头类型
	this.rtype = 'text';

	//初始化xmlhttp
	//IE6、IE5
	if(window.ActiveXObject) {
		try { A188XHTTP = new ActiveXObject("Msxml2.XMLHTTP");} catch (e) { }
		if (A188XHTTP == null) try { A188XHTTP = new ActiveXObject("Microsoft.XMLHTTP");} catch (e) { }
	}
	else {
		A188XHTTP = new XMLHttpRequest();
	}

	//增加一个POST或GET键值对
	this.AddKeyN = function(skey,svalue) {
		if(this.sendlang=='utf-8') this.AddKeyUtf8(skey, svalue);
		else this.AddKey(skey, svalue);
	};
	
	this.AddKey = function(skey,svalue) {
		this.keyCount++;
		this.keys[this.keyCount] = skey;
		svalue = svalue+'';
		if(svalue != '') svalue = svalue.replace(/\+/g,'$#$');
		this.values[this.keyCount] = escape(svalue);
	};

	//增加一个POST或GET键值对
	this.AddKeyUtf8 = function(skey,svalue) {
		this.keyCount++;
		this.keys[this.keyCount] = skey;
		svalue = svalue+'';
		if(svalue != '') svalue = svalue.replace(/\+/g,'$#$');
		this.values[this.keyCount] = encodeURI(svalue);
	};

	//增加一个Http请求头键值对
	this.AddHead = function(skey,svalue) {
		this.rkeyCount++;
		this.rkeys[this.rkeyCount] = skey;
		this.rvalues[this.rkeyCount] = svalue;
	};

	//清除当前对象的哈希表参数
	this.ClearSet = function() {
		this.keyCount = -1;
		this.keys = Array();
		this.values = Array();
		this.rkeyCount = -1;
		this.rkeys = Array();
		this.rvalues = Array();
	};


	A188XHTTP.onreadystatechange = function() {
		//在IE6中不管阻断或异步模式都会执行这个事件的
		if(A188XHTTP.readyState == 4){
			if(A188XHTTP.status == 200)
			{
				if(A188XHTTP.responseText!=Org7188ErrCon) {
					Org7188Containers.innerHTML = A188XHTTP.responseText;
				}
				else {
					if(Org7188ShowError) Org7188Containers.innerHTML = Org7188ErrDisplay;
				}
				//A188XHTTP = null;
			}
			else { if(Org7188ShowError) Org7188Containers.innerHTML = Org7188ErrDisplay; }
		}
		else { if(Org7188ShowWait) Org7188Containers.innerHTML = Org7188WaitDisplay; }
	};

	//检测阻断模式的状态
	this.BarrageStat = function() {
		if(A188XHTTP==null) return;
		if(typeof(A188XHTTP.status)!=undefined && A188XHTTP.status == 200)
		{
			if(A188XHTTP.responseText!=Org7188ErrCon) {
				Org7188Containers.innerHTML = A188XHTTP.responseText;
			}
			else {
				if(Org7188ShowError) Org7188Containers.innerHTML = Org7188ErrDisplay;
			}
		}
	};

	//发送http请求头
	this.SendHead = function()
	{
		//发送用户自行设定的请求头
		if(this.rkeyCount!=-1)
		{ 
			for(var i = 0;i<=this.rkeyCount;i++)
			{
				A188XHTTP.setRequestHeader(this.rkeys[i],this.rvalues[i]);
			}
		}
		　if(this.rtype=='binary'){
		　A188XHTTP.setRequestHeader("Content-Type","multipart/form-data");
	}else{
		A188XHTTP.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	}
};

//用Post方式发送数据
this.SendPost = function(purl) {
	var pdata = "";
	var i=0;
	this.state = 0;
	A188XHTTP.open("POST", purl, true);
	this.SendHead();
	//post数据
	if(this.keyCount!=-1)
	{
		for(;i<=this.keyCount;i++)
		{
			if(pdata=="") pdata = this.keys[i]+'='+this.values[i];
			else pdata += "&"+this.keys[i]+'='+this.values[i];
		}
	}
	A188XHTTP.send(pdata);
};

//用GET方式发送数据
this.SendGet = function(purl) {
	var gkey = "";
	var i=0;
	this.state = 0;
	//get参数
	if(this.keyCount!=-1)
	{ 
		for(;i<=this.keyCount;i++)
		{
			if(gkey=="") gkey = this.keys[i]+'='+this.values[i];
			else gkey += "&"+this.keys[i]+'='+this.values[i];
		}
		if(purl.indexOf('?')==-1) purl = purl + '?' + gkey;
		else  purl = purl + '&' + gkey;
	}
	A188XHTTP.open("GET", purl, true);
	this.SendHead();
	A188XHTTP.send(null);
};

//用GET方式发送数据，阻塞模式
this.SendGet2 = function(purl) {
	var gkey = "";
	var i=0;
	this.state = 0;
	//get参数
	if(this.keyCount!=-1)
	{ 
		for(;i<=this.keyCount;i++)
		{
			if(gkey=="") gkey = this.keys[i]+'='+this.values[i];
			else gkey += "&"+this.keys[i]+'='+this.values[i];
		}
		if(purl.indexOf('?')==-1) purl = purl + '?' + gkey;
		else  purl = purl + '&' + gkey;
	}
	A188XHTTP.open("GET", purl, false);
	this.SendHead();
	A188XHTTP.send(null);
	//firefox中直接检测XHTTP状态
	this.BarrageStat();
};

//用Post方式发送数据
this.SendPost2 = function(purl) {
	var pdata = "";
	var i=0;
	this.state = 0;
	A188XHTTP.open("POST", purl, false);
	this.SendHead();
	//post数据
	if(this.keyCount!=-1)
	{
		for(;i<=this.keyCount;i++)
		{
			if(pdata=="") pdata = this.keys[i]+'='+this.values[i];
			else pdata += "&"+this.keys[i]+'='+this.values[i];
		}
	}
	A188XHTTP.send(pdata);
	//firefox中直接检测XHTTP状态
	this.BarrageStat();
};


} // End Class ajaxx188

//初始化xmldom
function InitXDom() {
	if(Org7188XDOM!=null) return;
	var obj = null;
	// Gecko、Mozilla、Firefox
	if (typeof(DOMParser) != "undefined") { 
		var parser = new DOMParser();
		obj = parser.parseFromString(xmlText, "text/xml");
	}
	// IE
	else { 
		try { obj = new ActiveXObject("MSXML2.DOMDocument");} catch (e) { }
		if (obj == null) try { obj = new ActiveXObject("Microsoft.XMLDOM"); } catch (e) { }
	}
	Org7188XDOM = obj;
};



//读写cookie函数
function GetCookie(c_name)
{
	if (document.cookie.length > 0)
	{
		c_start = document.cookie.indexOf(c_name + "=")
		if (c_start != -1)
		{
			c_start = c_start + c_name.length + 1;
			c_end   = document.cookie.indexOf(";",c_start);
			if (c_end == -1)
			{
				c_end = document.cookie.length;
			}
			return unescape(document.cookie.substring(c_start,c_end));
		}
	}
	return null
}

function SetCookie(c_name,value,expiredays)
{
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + expiredays);
	document.cookie = c_name + "=" +escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()); //使设置的有效时间正确。增加toGMTString()
}



var popup_dragging = false;
var popup_target;
var popup_mouseX;
var popup_mouseY;
var popup_mouseposX;
var popup_mouseposY;
var popup_oldfunction;

function popup_display(x)
{
var win = window.open();
for (var i in x) win.document.write(i+' = '+x[i]+'<br>');
}
// ----- popup_mousedown -------------------------------------------------------
function popup_mousedown(e)
{
var ie = navigator.appName == "Microsoft Internet Explorer";
if ( ie && window.event.button != 1) return;
if (!ie && e.button != 0) return;
popup_dragging = true;
popup_target = this['target'];
popup_mouseX = ie ? window.event.clientX : e.clientX;
popup_mouseY = ie ? window.event.clientY : e.clientY;
if (ie)
popup_oldfunction = document.onselectstart;
else popup_oldfunction = document.onmousedown;
if (ie)
document.onselectstart = new Function("return false;");
else document.onmousedown = new Function("return false;");
}
// ----- popup_mousemove -------------------------------------------------------
function popup_mousemove(e)
{
if (!popup_dragging) return;
var ie = navigator.appName == "Microsoft Internet Explorer";
var element = document.getElementById(popup_target);
var mouseX = ie ? window.event.clientX : e.clientX;
var mouseY = ie ? window.event.clientY : e.clientY;
//在此修改弹出框相对于浏览器内容器顶部和左边的距离，单位像素---开始
element.style.left = (element.offsetLeft+mouseX-popup_mouseX)+'px';
element.style.top = (element.offsetTop +mouseY-popup_mouseY)+'px';
//在此修改弹出框相对于浏览器内容器顶部和左边的距离，单位像素---结束
popup_mouseX = ie ? window.event.clientX : e.clientX;
popup_mouseY = ie ? window.event.clientY : e.clientY;
}
// ----- popup_mouseup ---------------------------------------------------------
function popup_mouseup(e)
{
if (!popup_dragging) return;
popup_dragging = false;
var ie = navigator.appName == "Microsoft Internet Explorer";
var element = document.getElementById(popup_target);
if (ie)
document.onselectstart = popup_oldfunction;
else document.onmousedown = popup_oldfunction;
}
// ----- popup_exit ------------------------------------------------------------
function popup_exit(e)
{
var ie = navigator.appName == "Microsoft Internet Explorer";
var element = document.getElementById(popup_target);
popup_mouseup(e);
element.style.visibility = 'hidden';
element.style.display = 'none';
}
// ----- popup_show ------------------------------------------------------------
function popup_show(id,date)
{

element = document.getElementById('popup'+id);
drag_element = document.getElementById('popup_drag'+id);
exit_element = document.getElementById('popup_exit'+id);
element.style.position = "absolute";
element.style.visibility = "visible";
element.style.display = "block";
element.style.left = (document.documentElement.scrollLeft+popup_mouseposX-10)+'px';
element.style.top = (document.documentElement.scrollTop +popup_mouseposY-10)+'px';
document.getElementById("date1").value=date;
drag_element['target'] = 'popup'+id;
drag_element.onmousedown = popup_mousedown;
exit_element.onclick = popup_exit;
select_rilijiage2(id);
}
function popup_show1(id,date)
{

element = document.getElementById('popup'+id);
drag_element = document.getElementById('popup_drag'+id);
exit_element = document.getElementById('popup_exit'+id);
element.style.position = "absolute";
element.style.visibility = "visible";
element.style.display = "block";
element.style.left = (document.documentElement.scrollLeft+popup_mouseposX-10)+'px';
element.style.top = (document.documentElement.scrollTop +popup_mouseposY-10)+'px';
drag_element['target'] = 'popup'+id;
drag_element.onmousedown = popup_mousedown;
exit_element.onclick = popup_exit;
}
// ----- popup_mousepos --------------------------------------------------------
function popup_mousepos(e)
{
var ie = navigator.appName == "Microsoft Internet Explorer";
popup_mouseposX = ie ? window.event.clientX : e.clientX;
popup_mouseposY = ie ? window.event.clientY : e.clientY;
}
// ----- Attach Events ---------------------------------------------------------
if (navigator.appName == "Microsoft Internet Explorer")
document.attachEvent('onmousedown', popup_mousepos);
else document.addEventListener('mousedown', popup_mousepos, false);
if (navigator.appName == "Microsoft Internet Explorer")
document.attachEvent('onmousemove', popup_mousemove);
else document.addEventListener('mousemove', popup_mousemove, false);
if (navigator.appName == "Microsoft Internet Explorer")
document.attachEvent('onmouseup', popup_mouseup);
else document.addEventListener('mouseup', popup_mouseup, false);
-->


