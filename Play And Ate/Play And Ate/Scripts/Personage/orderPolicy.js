/**
 * 点击下载投保单时，创建遮罩层及弹出层，并在弹出层根据内容进行动态绘制
 * @param data 保单json数据，存在隐藏域中
 * @param obj 下载保单按钮本身，用来定位坐标，根据此坐标确定弹出层的坐标
 */
function showDownloadDialog(data, baseUrl, orderId){
	//利用dialog对话组件
	var html = fillDataToDialog(data, baseUrl, orderId);
    pandora.dialog({
        title: "下载投保单",
        content:$(html) 
    });
}


/**
 * 向对话框中填充数据
 * @param data 要绘制的保单数据信息
 * 格式如：
 * {
		"pingAn":[{name:"张三","policyNo":"123"},{"name":"李四","policyNo":"124"},
				  {"name":"李四","policyNo":"124"},{"name":"李四","policyNo":"124"},
				  {"name":"李四","policyNo":"124"},{"name":"李四","policyNo":"124"}],
		"taiPing":[{name:"王五","policyNo":"125"},{name:"王五","policyNo":"125"}],
		"renBao":[{name:"赵六","policyNo":"126"}]
	}
 * 
 * @returns 要绘制的html
 */
function fillDataToDialog(data, baseUrl, orderId){
	if(!data){
		return "";
	}
	var html = '<div class="insure">';

	//1、---------------中国平安保险
	var size = 0;
	if(data.pingAn && data.pingAn instanceof(Array) && (size = data.pingAn.length) > 0){
		html+= "<h6 class=\"insureTit\">中国平安保险</h6><div class=\"insureWrap clearfix mt5\">";
		var downLoadPingAnUrl = baseUrl + "downloadPingAnPolicy.do";
		for(var i = 0; i < size; i++) {
			var curPolicy = data.pingAn[i];
			html+= '<a href="' + downLoadPingAnUrl + '?policyNo=' + curPolicy.policyNo + '&orderId=' + orderId +'&insPolicyId='+curPolicy.insPolicyId+'">下载'+curPolicy.name+'的投保单</a>';
		}
		html+= "</div>";
	}
	
	//5、---------------美亚保险
	size = 0;
	if(data.meiYa && data.meiYa instanceof(Array) && (size = data.meiYa.length) > 0){
		html+= "<h6 class=\"insureTit\">美亚财产保险</h6><div class=\"insureWrap clearfix mt5\">";
		var downLoadMeiYaUrl = baseUrl + "downloadMeiYaPolicy.do";
		for(var i = 0; i < size; i++) {
			var curPolicy = data.meiYa[i];
			html+= '<a href="' + downLoadMeiYaUrl + '?policyNo=' + curPolicy.policyNo + '&orderId=' + orderId +'&insPolicyId='+curPolicy.insPolicyId+'">下载'+curPolicy.name+'的投保单</a>';
		}
		html+= "</div>";
	}
	
	//6、---------------日财保险
	size = 0;
	if(data.riCai && data.riCai instanceof(Array) && (size = data.riCai.length) > 0){
		html+= "<h6 class=\"insureTit\">日财保险</h6><div class=\"insureWrap clearfix mt5\">";
		var downLoadRiCaiUrl = baseUrl + "downloadRiCaiPolicy.do";
		for(var i = 0; i < size; i++) {
			var curPolicy = data.riCai[i];
			html+= '<a href="' + downLoadRiCaiUrl + '?policyNo=' + curPolicy.policyNo + '&orderId=' + orderId +'&insPolicyId='+curPolicy.insPolicyId+'">下载'+curPolicy.name+'的投保单</a>';
		}
		html+= "</div>";
	}

	//2、---------------中国太平保险
	size = 0;
    if(data.taiPing && data.taiPing instanceof(Array) && (size = data.taiPing.length) > 0){
    	html+= "<h6 class=\"insureTit mt10\">中国太平洋保险</h6><div class=\"insureTable mt5\"><table><thead><tr><th width=\"20%\">投保单</th><th>保单号</th><th width=\"30%\">操作</th></tr></thead><tbody>";
    	for(var i = 0; i < size; i++){
    		var policy = data.taiPing[i];
    		html+="<tr><td>"+policy.name+"</td><td>"+policy.policyNo+"</td><td><a href=\"http://tppension1.cntaiping.com/eservice/gp/servlet/com.cntaiping.egp.agency.query.ListServlet\" target=\"_blank\">查询</a></td></tr>";
    	}
    	html+="</tbody></table></div>"
    }

    //3、---------------中国人民保险
    size = 0;
    if(data.renBao && data.renBao instanceof(Array) && (size = data.renBao.length) > 0){
    	html+= "<h6 class=\"insureTit mt10\">中国人民保险</h6><div class=\"insureTable mt5\"><table><thead><tr><th width=\"20%\">投保单</th><th>保单号</th><th width=\"30%\">操作</th></tr></thead><tbody>";
    	for(var i = 0; i < size; i++){
			var policy = data.renBao[i];
			html+="<tr><td>"+policy.name+"</td><td>"+policy.policyNo+"</td><td><a href=\"http://eshop.picchealth.com/contSimpleQuery/\" target=\"_blank\">查询</a></td></tr>";
		}
		html+="</tbody></table></div>"
    }
    
    //4、---------------人民财产保险
    size = 0;
    if(data.renBaoCaiChan && data.renBaoCaiChan instanceof(Array) && (size = data.renBaoCaiChan.length) > 0){
    	html+= "<h6 class=\"insureTit mt10\">人民财产保险</h6><div class=\"insureTable mt5\"><table><thead><tr><th width=\"20%\">投保单</th><th>保单号</th><th width=\"30%\">操作</th></tr></thead><tbody>";
    	for(var i = 0; i < size; i++){
			var policy = data.renBaoCaiChan[i];
			html+="<tr><td>"+policy.name+"</td><td>"+policy.policyNo+"</td><td><a href=\"http://www.epicc.com.cn/fuwu/dianzibaodan/\" target=\"_blank\">查询</a></td></tr>";
		}
		html+="</tbody></table></div>"
    }
	//7、-------------华夏保险
    size = 0;
    if(data.huaXia && data.huaXia instanceof(Array) && (size = data.huaXia.length) > 0){
        html+= "<h6 class=\"insureTit mt10\">华夏保险</h6><div class=\"insureTable mt5\"><table><thead><tr><th width=\"20%\">投保单</th><th>保单号</th><th width=\"30%\">操作</th></tr></thead><tbody>";
        for(var i = 0; i < size; i++){
            var policy = data.huaXia[i];
            html+="<tr><td>"+policy.name+"</td><td>"+policy.policyNo+"</td><td><a href=\"http://www.ihxlife.com/groupInsurance/query/\" target=\"_blank\">查询</a></td></tr>";
        }
        html+="</tbody></table></div>"
    }
    //8、-------------颐保保险
    size = 0;
    if(data.yiBao && data.yiBao instanceof(Array) && (size = data.yiBao.length) > 0){
        html+= "<h6 class=\"insureTit mt10\">颐保保险</h6><div class=\"insureTable mt5\"><table><thead><tr><th width=\"20%\">投保单</th><th>保单号</th><th width=\"30%\">操作</th></tr></thead><tbody>";
        for(var i = 0; i < size; i++){
            var policy = data.yiBao[i];
            html+="<tr><td>"+policy.name+"</td><td>"+policy.policyNo+"</td><td><a href=\""+policy.tbbxddh+"\" target=\"_blank\">下载</a></td></tr>";
        }
        html+="</tbody></table></div>"
    }

    html+="<div class=\"insure-BtnBox\"><a href=\"javascript:;\" class=\"insureBtn insureBtn-close\" data-dismiss=\"dialog\">关闭</a></div></div>";
	return html;
}