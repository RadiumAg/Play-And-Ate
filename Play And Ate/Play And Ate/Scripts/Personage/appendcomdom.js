(function(){
    //添加comDom
    var Domwrap = $(document);
    //关闭事件
    Domwrap.on('click','.JS_close',function () {
        $(this).parents('.JS_closeBox').stop(true,true).slideUp(function(){
            $(this).parents('tr').remove();
            $(this).parents('.comappend').remove();
        });
    });
    
    Domwrap.on('click','.JS-comwrite',function(e){
        var me = $(this);
        var placeid = me.attr('data-placeid') != undefined ? me.attr('data-placeid') : '',
        	productid = me.attr('data-productid') != undefined ? me.attr('data-productid') : '',
        	orderid = me.attr('data-orderid') != undefined ? me.attr('data-orderid') : '',
        	type = me.attr('data-producttype') != undefined ? me.attr('data-producttype') : '',
        	//ajx
        	//console.log('placeid:' + placeid + 'productid:' + productid + 'orderid:' + orderid +"producttype:" +producttype);
        	//动态获取维度
            dataArray = [],
//        	latitudeName =[],
//        	latitudeId =[],
        	cmtActivityVo = {},
        	tokenName='';
        	  $.ajax({
                  url: '//www.lvmama.com/cmt_front/comment/ajaxWriteComment/fillComment.do',
                  traditional: true,
                  async:false,
                  type: 'post',
                  dataType: 'json',
//          		  jsonp: 'jsoncallback',
                  data: {
                	  	placeId : placeid,
                	  	productId : productid,
                	  	orderId : orderid,
                	  	type :type
                  	},
                  success :function (result) {
                      if (result.success) {
                    	  var latitudeAndAcitivityVO = result.data;
                    	  dataArray = latitudeAndAcitivityVO.dicCommentLatitudeVoList;
                    	  cmtActivityVo = latitudeAndAcitivityVO.cmtActivityVo;
//                    	  for ( var i = 0; i < dataArray.length; i++) {
//                    		  latitudeName[i] = dataArray[i].name;
//                    		  latitudeId[i] = dataArray[i].latitudeId;
//                			}
                    	  tokenName = result.tokenName;
                      } else {
                    	  alert("系统繁忙，请稍后再试!");
                    	  e.preventDefault();
                    	  return;
                      }
                  },
                  error: function() {
                      alert("系统繁忙，请稍后再试!");
                      e.preventDefault();
                      return;
                  }
              });
    		  	
        //分享代码暂时去掉
       //<span class=\"com-fx fr\"><a href=\"javascript:;\" title=\"新浪微薄\" class=\"iconcom iconcom-weibo\"></a><a href=\"javascript:;\" title=\"QQ空间\" class=\"iconcom iconcom-qzone\"></a></span>分享到：
		var cmtActivity = "旅途中的喜闻乐见，美景美食美人，都记录下来吧~";
		if (cmtActivityVo != null && cmtActivityVo != undefined && cmtActivityVo != "") {
			// 体验点评的title和content分别取titleExp和contentExp字段
			if (productid != null && productid != undefined && productid != "" 
				&& orderid != null && orderid != undefined && orderid != "") {
				cmtActivity = cmtActivityVo.titleExp + cmtActivityVo.contentExp;
			} else {
				cmtActivity = cmtActivityVo.title + cmtActivityVo.content;
			}
		}

		var latitudeDom = generateLatitudeDom(dataArray);
        var comDom = ("<div class=\"JS_closeBox comform combd\">")+
            ("<i class=\"iconcom iconcom-boxdir\"></i>")+
            ("<i class=\"JS_close iconcom iconcom-close\"></i>")+
            ("<form id=\"saveCommentForm\" method=\"POST\" enctype=\"multipart/form-data\">")+
            ("<input type=\"hidden\" name=\"tokenName\" id=\"tokenName\" value="+ tokenName +">")+
            ("<input type=\"hidden\" name=\"placeId\" id=\"placeId\" value="+ placeid +">")+
            ("<input type=\"hidden\" name=\"productId\" id=\"productId\" value="+ productid +">")+
            ("<input type=\"hidden\" name=\"orderId\" id=\"orderId\" value="+ orderid +">")+
            ("<input type=\"hidden\" name=\"vstType\" id=\"vstType\" value="+ type +">")+
            ("<div class=\"comform-t clearfix\">")+
            ("<!-- 点评分数选择 -->")+
            ("<div class=\"comform-level\" style='width: 300px;'>")+
            ("<div class=\"comform-score\">")+
            ("<input name=\"latitudeId\" value=\"FFFFFFFFFFFFFFFFFFFFFFFFFFFF\" type=\"hidden\">")+
//            ("<span><em class=\"total-score hot\">5</em>分</span>")+
            ("<ul style='margin-left: -15px;'>")+
            ("<li class='onepoints'><em>极差</em></li>")+
            ("<li class='twopoints'><em>不满</em></li>")+
            ("<li class='threepoints'><em>一般</em></li>")+
            ("<li class='fourpoints'><em>不错</em></li>")+
            ("<li class='fivpoints'><em>满意</em></li>")+
            ("</ul>")+
            ("</div>")+
            ("<ul class=\"comform-childlever\" style='margin-left: 6px;'>")+
            latitudeDom +
//            ("<li>")+
//            ("<input name=\"latitudeId\" value="+ latitudeId[0] +" type=\"hidden\">")+
//            ("<span class=\"comcount-form\">"+ latitudeName[0] +"<em>（5）</em></span>")+
//            ("<span class=\"comlevel-form\">")+
//            ("<i class=\"level1 active\"></i>")+
//            ("<i class=\"level2 active\"></i>")+
//            ("<i class=\"level3 active\"></i>")+
//            ("<i class=\"level4 active\"></i>")+
//            ("<i class=\"level5 active\"></i>")+
//            ("</span>")+
//            ("</li>")+
//            ("<li>")+
//            ("<input name=\"latitudeId\" value="+ latitudeId[1] +" type=\"hidden\">")+
//            ("<span class=\"comcount-form\">"+ latitudeName[1] +"<em>（5）</em></span>")+
//            ("<span class=\"comlevel-form\">")+
//            ("<i class=\"level1 active\"></i>")+
//            ("<i class=\"level2 active\"></i>")+
//            ("<i class=\"level3 active\"></i>")+
//            ("<i class=\"level4 active\"></i>")+
//            ("<i class=\"level5 active\"></i>")+
//            ("</span>")+
//            ("</li>")+
//            ("<li>")+
//            ("<input name=\"latitudeId\" value="+ latitudeId[2] +" type=\"hidden\">")+
//            ("<span class=\"comcount-form\">"+ latitudeName[2] +"<em>（5）</em></span>")+
//            ("<span class=\"comlevel-form\">")+
//            ("<i class=\"level1 active\"></i>")+
//            ("<i class=\"level2 active\"></i>")+
//            ("<i class=\"level3 active\"></i>")+
//            ("<i class=\"level4 active\"></i>")+
//            ("<i class=\"level5 active\"></i>")+
//            ("</span>")+
//            ("</li>")+
//            ("<li>")+
//            ("<input name=\"latitudeId\" value="+ latitudeId[3] +" type=\"hidden\">")+
//            ("<span class=\"comcount-form\">"+ latitudeName[3] +"<em>（5）</em></span>")+
//            ("<span class=\"comlevel-form\">")+
//            ("<i class=\"level1 active\"></i>")+
//            ("<i class=\"level2 active\"></i>")+
//            ("<i class=\"level3 active\"></i>")+
//            ("<i class=\"level4 active\"></i>")+
//            ("<i class=\"level5 active\"></i>")+
//            ("</span>")+
//            ("</li>")+
            ("</ul>")+
            ("</div>")+
            ("")+
            ("<!-- 点评内容输入 -->")+
            ("<div class=\"comform-content\" style='width: 600px;'>")+
            ("<p>精华秘籍：超200字+美图，内容原创具推荐性，满足即有机会被设为精华点评哦！</p>")+
//           ("<textarea name=\"content\" id=\"content\">点评有奖第七季~</textarea>")+
            ("<textarea name=\"content\" id=\"content\" placeholder='" + cmtActivity + "' style='width: 588px;' >" + cmtActivity + "</textarea>")+
            ("<div class=\"comcontent-info clearfix\">")+
            ("<span>不知如何写？看看示例: <a href=\"javascript:void(0);\" class=\"JS_opendemo\">示例</a></span>")+
            ("<span class=\"fr\">输入20-1000字</span>")+
            ("</div>")+
            ("</div>")+
            ("</div> <!-- //comform-t --> ")+
            ("<!-- 图片上传 -->")+
            ("<div class=\"comform-upload clearfix\">")+
            ("<div id=\"pickfiles\" class=\"comform-addpic\" style=\"position: relative; z-index: 1;\"><i class=\"iconcom iconcom-add\"></i><p>添加图片</p></div>")+
            ("<div class=\"comform-upload-box\">")+
            ("<ul id=\"file-list\">")+
            ("</ul>")+
            ("</div>")+
            ("<div class=\"comform-scorllbtn\"><i class=\"iconcom iconcom-scoll\"></i></div>")+
            ("<div class=\"comform-scorllbtn scorllbtn-r \"><i class=\"iconcom iconcom-scollr\"></i></div>")+
            ("</div>")+
            ("<div class=\"comform-b\">")+
            ("<div class=\"fr clearfix\"><input type=\"submit\" onclick=\"return false;\" value=\"发布\" class=\"JS_inset comcon-submit fr\"></div>")+
            ("<div class=\"comcontent-info fr\"> <i class=\"conmon_icon yel_mark\"></i> 门票类产品30天内最多返现300元</div>")+
            ("<em>*图片大小10M以下，支持上传10张，格式支持：png，jpeg</em>")+
            ("</div> ")+
            ("</form>")+
            ("</div>");
        var comboOrder;
            if (me.parents(".dp_listResult").length > 0) {
                comboOrder = me.parents('.dp_list');
                comDom = "<div class=\"dp_show comappend\">" + comDom + "</div>";
            } else {
                comboOrder = me.parents('tr');
                comDom = "<tr class=\"dp_show comappend\"><td class=\"comment-td\" colspan=\"7\">" + comDom + "</td></tr>";
            };

        //先查找总dom下是否有下拉节点
        if (Domwrap.find('.comappend').length > 0){
            //再判断目前节点下是否有
            if(comboOrder.next('.comappend').length == 0) {
            // if (comboOrder.find('.comappend').length == 0) {
                //如果当前下面没有隐藏的，则删除总节点下查找到的
                $('.JS-comwrite').removeClass('active');
                Domwrap.find('.comform').stop(true,true).slideUp(function(){
                    Domwrap.find('.comappend').remove();
                    //删除后，创建
                    addComDom();
                });
            } else {
                //如果是当前下面的，则再判断
                if (comboOrder.next('.comappend').is(":hidden")) { //是隐藏 则显示
                    comboOrder.next('.comappend').show();
                    comboOrder.next('.comappend').find('.comform').stop(true,true).slideDown();
                    me.addClass('active');
                } else { //显示则隐藏
                    comboOrder.next('.comappend').find('.comform').stop(true,true).slideUp(function(){
                        comboOrder.next('.comappend').hide();
                    });
                    me.removeClass('active');
                }
            } 
        } else {
            //如果总结节都没有，则就在当前创建
            addComDom();
        };


        //创建点评模块

        function addComDom(){
            comboOrder.after(comDom);

            placeholder(cmtActivity); 
            me.addClass('active');
            comboOrder.next('.comappend').find('.comform').stop(true,true).slideDown(function(){
               commentFun(me,saveComment,null);
               plpUpload(scroll);
            });
        }

        function generateLatitudeDom(dataArray) {
        	var latitudeDom = "";
        	for (var i = 0; i < dataArray.length; i++) {
        		latitudeDom += ("<li>")+
	                ("<input name=\"latitudeId\" value="+ dataArray[i].latitudeId +" type=\"hidden\">")+
	                ("<span class=\"comcount-form\">"+ dataArray[i].name +"<em>（0）</em></span>")+
	                ("<span class=\"comlevel-form\">")+
	                ("<i class=\"level1\"></i>")+
	                ("<i class=\"level2\"></i>")+
	                ("<i class=\"level3\"></i>")+
	                ("<i class=\"level4\"></i>")+
	                ("<i class=\"level5\"></i>")+
	                ("</span>")+
	                ("</li>");
        	}

        	return latitudeDom;
        }
    });

})(jQuery);