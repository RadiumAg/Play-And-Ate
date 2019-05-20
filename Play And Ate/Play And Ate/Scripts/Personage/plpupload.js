function plpUpload(scroll){
    //实例化一个plupload上传对象
    var uploader = new plupload.Uploader({
        browse_button : 'pickfiles', //触发文件选择对话框的按钮，为那个元素id
        //url : 'static/js/uploadImage.php', //服务器端的上传页面地址
        url:"//www.lvmama.com/cmt_front/comment/ajax/picture/uploadPicuture",
        flash_swf_url : 'http://pic.lvmama.com/js/v6/comment/Moxie.swf', //swf文件，当需要使用swf方式进行上传时需要配置该参数
        silverlight_xap_url : 'http://pic.lvmama.com/js/v6/comment/Moxie.xap', //silverlight文件，当需要使用silverlight方式进行上传时需要配置该参数

        filters : {
            max_file_size : '10mb',
            mime_types: [
                {title : "Image files", extensions : "jpg,gif,png,jpeg"},
            ],
            prevent_duplicates : true //不允许选取重复文件
        }
    }),
    fileBox = $('#file-list'), //图片盒子
    //fileNum = uploader.total, //统计已上传个数
    bScorll = $('.comform-scorllbtn');

    //在实例对象上调用init()方法进行初始化
    uploader.init();

    //绑定各种事件，并在事件监听函数中做你想做的事
    uploader.bind('FilesAdded',function(uploader,files){
        //每个事件监听函数都会传入一些很有用的参数，
        var len = files.length;

        //updated by zll 2016/07/07
        var fileBoxLen = fileBox.find('.upok').length;
        if (fileBoxLen < 10)  {
        	var remaining = 10 - fileBoxLen;
        	var minNum = len <= remaining ? len : remaining;
            for(var i = 0; i < minNum; i++){
                var file_name = files[i].name; //文件名
                //构造html来更新UI
                
                var html = '<li class="upok" id="' + files[i].id +'"><div class="comspeed"><em class="zhezhao"></em><span></span></div></li>';
                fileBox.append(html);
            }
            uploader.start();
        }else{// 如果大于十张，则提示已满
        	if (fileBox.find('.compicfull').length == 0) {
                fileBox.append('<li class="compicfull"><i class="iconcom iconcom-wrong"></i><p>已满10张了哟</p></li>');
            }
        }

       if (scroll) fileBoxWidth(); //动态控制图片盒子ul宽度
    });


    //绑定文件上传进度事件
    uploader.bind('UploadProgress',function(uploader,file){
        $('#'+file.id+' span').css('width',file.percent + '%');
        $('#'+file.id+' em').html(file.percent + '%');
     });

    //上传完毕触发
    uploader.bind('FileUploaded',function(uploader,file,res){
        checkNum(); //验证是否超出上传数量
        //替换预览图
        re = JSON.parse(res.response);
        if(re.success){
            $('#'+file.id).empty().html('<p class="compicbox"><img src="https://pics.lvjs.com.cn'+re.smallImg+'"alt="" width="90" height="60"><input></p>');//预览
            //创建图片form表单input 
            var picInput ="<input type=\"hidden\" name=\"pictures\" value="+ re.imgPath +">";
            $('#'+file.id).append(picInput);
        }else{
        	alert("系统异常，请稍后再试!");
        }
                
    });

    //文件移除
    uploader.bind('FilesRemoved',function(uploader,file){
        
    });

    //错误返回
    uploader.bind('Error',function(uploader,errObject){
        switch(errObject.code){
            case -600:
                fileBox.append('<li class="comup-error"><img src="https://pics.lvjs.com.cn/img/v6/comment/com_uperror.png"><span>文件过大</span></li>');
                break;
            case -601:
                fileBox.append('<li class="comup-error"><img src="https://pics.lvjs.com.cn/img/v6/comment/com_uperror.png"><span>格式不符</span></li>');
                break;
            case -200:
            fileBox.append('<li class="comup-error"><img src="https://pics.lvjs.com.cn/img/v6/comment/com_uperror.png"><span>网络故障</span></li>');
                break;
        }
    });
    
    
    /*
    * 绑定删除事件委托
    */

    fileBox.on('hover','li',function() {
        var me = $(this);
        if((me.find('.iconcom-del').length == 0) && (!me.hasClass('compicfull')) && (!me.hasClass('comform-addpic'))) me.append('<i class="iconcom iconcom-del"></i>');
    });

    fileBox.on('click','.iconcom-del',function (){
        var me = $(this),
            thisParent = $(this).parent(); //父li节点
            thisid = thisParent.attr('id'); //取得要删除的id号
            uploader.removeFile(thisid);

        //删除节点
        thisParent.stop(true,true).animate({'width':0}, 200,function (){
            thisParent.remove();
            
            //图片数量小于10时，删除已满提示 
            if(fileBox.find('.upok').length < 10) { 
                $('.compicfull').remove();
            }

           if (scroll) fileBoxWidth(); //自动宽度及滚动
        });

    });

    //设置ul外层宽度 使图片一行显示
    function fileBoxWidth(){
        var oLi = fileBox.find('li'); 
        fileBox.css({
            width: oLi.length * 100
        });

        //大于7时 定位在最后一张
        if (oLi.length > 7) {
            var fullleft = (oLi.length - 7) * -100;
            fileBox.css({
                left : fullleft
            });
            bScorll.show();

            //绑定滚动事件
            bScorll.bind('click',function() {
                var me = $(this),
                    nowleft = fileBox.parent().offset().left - fileBox.offset().left,
                    left = nowleft;
               left =  me.hasClass('scorllbtn-r') > 0 ? -left - 100 : -left + 100;
               if (left < fullleft) left = fullleft;
               if (left > 0 ) left = 0;
                fileBox.stop(true,true).animate({
                    left : left 
                }, 300);
            });
        }else {
            bScorll.hide();
            fileBox.css('left',0);
        }
    };



    //判断是否超过10张
    function checkNum() {
         if (uploader.total.uploaded >= 10) {
            uploader.stop();
        }
    };
      
};


function commentFun(elm,saveCommentFun,callback){
	var once = true;
     //验证相关
    var feel = [],  //评分
        textOk = false, //文字校验
        bInset = $('.JS_inset'), //提交按钮
        oTextarea = $('.comform-content textarea'); //输入框
    textCount(); //绑定按钮事件及动态显示输入状态
    
    bInset.addClass('active');//added by zll 2016/07/07 改成常亮

    // 大星星评分
    var bigstar = $('.comform-score li');
    dafen(bigstar);

    //体验评分
    $('.comform-childlever li').each(function (){
        var feeling = $(this).find('i');
        dafen(feeling);
    });
    
    // 展开demo
    $('.JS_opendemo').click(function(){
        createDemo();
    });

    /*
    * 创建demo示例
    */
    function createDemo() {
        if($(document).find('.com-demos').length > 0) return false;
        var demo = "<div class=\"com-demos\"><i class=\"iconcom iconcom-democlose\"></i><span class=\"JS_demonext com-demonext\"><i class=\"iconcom iconcom-next\"></i></span><img src=\"https://pics.lvjs.com.cn/img/v6/comment/com_demo1.png\"></div>";
        $('body').append(demo);
        var demoBox = $('.com-demos'),
            demoIndex = 1;
        $('.iconcom-democlose').click(function(){
             demoBox.remove();
        });
        $('.JS_demonext').click(function(){
            var me = $(this);
            demoIndex++;
            if (demoIndex == 3)  me.find('i').removeClass('iconcom-next').addClass('iconcom-demook');
            if(demoIndex > 3) {
                 demoBox.remove();
            } else {
                demoBox.find('img').remove();
                demoBox.append('<img src="https://pics.lvjs.com.cn/img/v6/comment/com_demo' + demoIndex + '.png">');
            }
        });
    };

    /*
    *评份操作
    */
    function dafen(elem){
        var len = elem.length;
        var  iScore = 0, iStar =0;
        elem.each(function() {
            var me = $(this),
                em = me.parent().prev().find('em');
             pingfen(me);
             me.hover(function(){
            	var $this = $(this);
  				var isFace = ($this.parents(".comform-score").length > 0);
  				if (!isFace) {
  					pf(me.index() + 1, iScore, iStar, elem, em);
  				}
             },function(){
                pf(iStar,iScore,iStar,elem,em);
             });
            me.click(function(){

                iStar = me.index()+1;
                pf(iStar, iScore, iStar, elem, em, true);
                //计分

                if (me.parents('.comform-score').length > 0) {
                    feel[0] = iStar;
                } else {
                    feel[me.parents('li').index()+1] = iStar;
                }
//                checkForm(); //验证是否可提交
             });
        });
    };
   
    /*
    * 评分管理
    */
    function pf(iArg,iScore,iStar,elem,em,isClick) {
    	var isFace = false;
    	if (elem.parents(".comform-score").length) {
			isFace = true;
		}
        iScore  = iArg || iStar;
        for(var i = 0; i < elem.length; i++) {
        	if (((isFace) && (i == iScore - 1)) || ((!isFace) && (i < iScore))) {
				elem.eq(i).addClass('active');
			} else {
				elem.eq(i).removeClass('active');
			}
        };
        if (em.hasClass('total-score')) {
            em.html(iScore);
            iScore != 0 ? em.addClass('hot') : em.removeClass('hot');
        } else {
            em.html('（' + iScore + '）');
        };
        if (isClick && once) {
			once = false;
			if (isFace) {
				var $forms = $(".comform-childlever .comlevel-form");
				$forms.each(function(index, domEle) {
					var $form = $(domEle);
					$form.children().eq(iScore - 1).click();
				})
			}
		}
    };

    /*
     * 评分hover时文字提示
    */
    function pingfen(elem){
    	var msg = ['极差','不满','一般','不错','满意'];
        elem.hover(function(e){
        	var $this = $(this);
			var isFace = ($this.parents(".comform-score").length > 0);
			if (!isFace) {
	            e=e||window.event;
	            var target=e.target?e.target:e.srcElement;
	            var position={
	            		left:$(target).offset().left,
	            		top:$(target).offset().top
	            };
	            $('body').append('<div class="com-hovertag com-msg">' + msg[elem.index()] + '</div>');
	            $('.com-hovertag').css({
	                "top":position.top+20,
	                "left":position.left+25
	            });
			}
        },function(){
          $('.com-hovertag').remove();
        });
    };

    //绑定按钮事件及动态显示输入状态
    function textCount() {
        oTextarea.on('keyup',function() {
        	checkText(); //验证文字字数  updated by zll 2016/07/07
           // $('.comcontent-info .fr').html(str);
        });

        //绑定按钮事件
        bInset.bind('click',bindInsetOk);
    };

    //输入框状态提示
    function checkText(){
        var val = oTextarea.val().replace(/^\s+|\s+$/g,""); //去除首尾空格
            val = val.replace(/\s+/g, '&nbsp;'); // 空格 转成 &nbsp;
            val = val.replace(/\n/g, '<br />'); // 回车 \n 转成 <br />
//           if(val == "点评有奖第七季~") return false;
            var placeholder = oTextarea.attr("placeholder");
            if(val == placeholder) return false;
            var lencount = getLength(val);
            var len = parseInt(lencount/2),
            str = '';
            lencount <= 0 ? oTextarea.css("color","#ccc") : oTextarea.css("color","#666");
        if (len == 0) {
            str = '输入20-1000字';
            textOk = false;
        } else if(len < 20) {
            str = '还需输入 <em>' + (20 - len) + ' </em>字';
           textOk = false;
        } else if(len > 1000) {
            str = '<em>已超出 ' + (len - 1000) + ' 字</em>';
            textOk = false;
        } else {
            str = '已输入 <em>' + len + '</em> 字';
            textOk = true;
        }
        $('.comcontent-info .fr').html(str);
    };

    //验证是否可提交
    function checkForm() {
        checkText();
        var can = false;
        var latitudesCnt = $('.comform-childlever').children().size() + 1;//维度数量  added by zll 2016/06/24
        if (feel.length != latitudesCnt) return false;                    //updated by zll 2016/06/24
        for (var i = 0; i < latitudesCnt; i++) { //updated by zll 2016/06/24
            if(feel[i] > 5 || feel[i] < 1 || typeof(feel[i]) != "number") {
                return false;
            }
            can = true;
        };
        if (textOk == true && can == true) {
            return true
        } else {
            return false;
        };
    };

    //获取文字长度
    function getLength(str){
        return String(str).replace(/[^\x00-\xff]/g,'aa').length;
    };

    //分享
    $('.com-fx a').click(function(){
        var me = $(this);
        me.hasClass('active') ? me.removeClass('active') : me.addClass('active');
    });
   
    //发布操作
    function bindInsetOk(){
        if(feel[0] == null){//added by zll 2016/07/06
        	alert("请点亮点评框左侧的小驴头像选择您的满意程度。");
        	return false;
        }
        if (!checkForm()) {
            alert("请将评分，点评内容填写完整哦~");
            return false;
        }
        //分享事件
        var show = $('.com-fx>a'); //分享
        var title = '分享文字内容，请在JS里面修改,默认是分享点评图片里面得第一张图片';
        var url = window.location.href;
        var img = $('.dp_top_img img:first').attr('src');
        var fxtype = [];
        show.each(function(){
            var me = $(this);
            if (me.hasClass('active')) {
                 if (me.index() == 0) {
                    //sina
                    //新浪微博

                    var href = 'http://service.weibo.com/share/share.php?title='+ title +'&url='+ url +'&source=bookmark&appkey=2992571369&pic='+ img +'&ralateUid=&sudaref=s.jiathis.com';
                    fxtype[0] = href;
                   // window.open(href);
                 } 
                 if (me.index() == 1) {
                    //腾讯微博
                    var href = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+ url +'&title='+ title +'&pics='+ img +'&summary=';
                    window.open(href);
                 }
            }
        });
        //评分
      //获取表单数据
		var arr = [];
		$("#saveCommentForm").find("input[name='placeId'],input[name='productId'],input[name='orderId'],input[name='vstType'],input[name='latitudeId'],input[name='pictures'],input[name='tokenName'],#content").each(function(){
			if(this.name == "content"){
				var comment = this.value;
				 // 特殊符号：%,&处理
				comment = comment.replace(/%/g, '%25');
				comment = comment.replace(/&/g, '%26');
				arr.push(this.name+'='+comment);
			}else{
				arr.push(this.name+'='+this.value);
			}
		});
		//评分
        for (var i = 0; i < feel.length; i++) {
            arr.push('score='+feel[i]);
        };
		var data = arr.join("&");
      //提交点评上传
        saveCommentFun(data);
    };
};


/*
* textarea 模拟placeholder功能
*/
function placeholder(placeholder){
//  var placeholder = "点评有奖第七季~";
	if (placeholder == undefined || placeholder == null || placeholder == "") {
		placeholder = "旅途中的喜闻乐见，美景美食美人，都记录下来吧~";
	}
	var inputName = $('.comform-content textarea');
    inputName.focus(function(){
        var val = inputName.val().replace(/^\s+|\s+$/g,""); //去除首尾空格;
            val = val.replace(/\s+/g, ''); // 去掉中间空格;
        if ( val == placeholder){
            inputName.val('');
        }
    });
    inputName.blur(function(){
        var val = inputName.val().replace(/^\s+|\s+$/g,""); //去除首尾空格;
            val = val.replace(/\s+/g, ''); // 去掉中间空格;
        if (val == ''){
            inputName.val(placeholder);
        }
    });
} //placeholder