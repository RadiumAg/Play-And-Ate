$(function(){
    //调用方法
    $(".tag").poptip();
    /*************弹框****************/
    var content;
    $('.js_date').click(function(){
        var orderId = $(this).attr("orderId");
        var productId = $(this).attr("productId");
        content = $(".js_box_"+orderId);
        var flag = content.hasClass("js_one_box");
        try{
            cmCreateElementTag("改期_"+orderId+"_" + productId,"景乐改期");//点击改期按钮
            cmCreatePageviewTag("景乐_改期操作_"+orderId+"_"+ productId, " D0001_ChangeDate",null,null,"-_--_--_--_--_-路径页面");//点击改期后，打开改期操作页面
        }catch(e){
            alert("门票改期布点异常");
        }
        var dialog = pandora.dialog({
            title: "申请改期",
            content:content,
            width:650,
            zIndex:4000,
            wrapClass: "wrap_date",
            beforeunload: function(){
                $(document).click();
            },
            okValue: "确认改期", // 确定按钮文本
            cancelValue: "取消", // 取消按钮文本
            okClassName: "change_sure_btn change_sure_btn_stop",
            cancelClassName: "change_cancel_btn",
            ok: function(){
                if($('.change_sure_btn').hasClass('change_sure_btn_stop')){
                    return false;
                }else{
                    /*********************/
                    var orderReschedule={};
                    var rescheduleItems = [];
                    orderReschedule.orderId = orderId;
                    content.find(".reschedultItems").each(function(i,e){
                        var item = {};
                        var changeVisitDate;
                        var orderItemId;
                        if(flag){
                            orderItemId=$(this).val();
                            changeVisitDate = content.find("input[name='changeVisitDate']").val();
                        }else{
                            changeVisitDate = $(this).find("input[name='changeVisitDate']").val();
                            orderItemId = $(this).find("input[name='orderItemId']").val()
                        }
                        item.orderItemId = orderItemId;
                        item.changeVisitDate = changeVisitDate;
                        rescheduleItems.push(item);
                    });
                    orderReschedule.rescheduleItems = rescheduleItems;
                    //console.info(JSON.stringify({"orderReschedule":orderReschedule}));
                    $.ajax({
                        url: "/myspace/reschedule/changeDate",
                        type:"POST",
                        contentType:"application/json; charset=utf-8",
                        data:JSON.stringify(orderReschedule),
                        async: false
                    }).done(function (data) {
                        var confirmDialog;
                        if(data && true==data.success){
                            try{
                                cmCreatePageviewTag("景乐_改期成功_"+orderId+"_"+ productId, " D0001_ChangeDate",null,null,"-_--_--_--_--_-路径页面");//景乐改期成功
                            }catch(e){
                                alert("门票改期布点异常");
                            }
                            var doneContent = $(".change_box_"+orderId);
                            doneContent.find(".change_done_date").each(function(){
                                var doneDate = content.find(".change_done_date_"+$(this).attr("orderItemId")).val();
                                $(this).find("em").text(doneDate);
                            });
                            confirmDialog =pandora.dialog({
                                title: "申请改期",
                                content:doneContent,
                                width:650,
                                okValue: "返回我的订单", // 确定按钮文本
                                okClassName: "change_sure_btn ",
                                cancelClassName: "change_cancel_btn",
                                ok: function(){
                                    location.reload();
                                },// 确认按钮回调函数
                                cancel:null// 取消按钮回调函数
                            });
                        }else{
                            //var errorContent = $(".change_error_box");
                            try{
                                cmCreatePageviewTag("景乐_改期失败_"+orderId+"_"+ productId, " D0001_ChangeDate",null,null,"-_--_--_--_--_-路径页面");//景乐改期失败
                            }catch(e){
                                alert("门票改期布点异常");
                            }
                            var errorMsg = "很抱歉，改期失败！";
                            if(data.message && data.message.length>0){
                                errorMsg = data.message
                            }
                            var errorContent = $('<div class="change_error_box"> <div class="change_done_title"> <i class="conmon_icon reApply_icon"></i>'+errorMsg+'<span class="title">您可以返回我的订单重新申请改期。</span> </div> </div>');
                            confirmDialog=pandora.dialog({
                                title: "申请改期",
                                content:errorContent,
                                width:650,
                                okValue: "返回我的订单", // 确定按钮文本
                                okClassName: "change_sure_btn ",
                                cancelClassName: "change_cancel_btn",
                                ok:function(){
                                    
                                },// 确认按钮回调函数
                                cancel:null// 取消按钮回调函数
                            });
                        }
                        confirmDialog.wrap.find(".dialog-footer").css({"padding":"0 20px 20px","text-align":"center"});
                    }).fail(function (error) {
                        //TODO 错误处理
                    })
                    /*********************/
                };
            },// 确认按钮回调函数
            cancel: function(){
            } // 取消按钮回调函数
        });
        dialog.wrap.find(".dialog-footer").css({"padding":"0 20px 20px","text-align":"center"});
        dialog.wrap.find(".change_head_content span").css({"margin":"0"});
        //日历
        var template = "small";
        if($(this).hasClass("js_date_two")){
            template = "big";
        }
        //初始化默认值
        content.find(".change_calendar").each(function(i,e){
            var week = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
            var defaultVisitTime = $(this).find(".showVisitTime").attr("defaultVisitTime");
            $(this).find(".showVisitTime").val(defaultVisitTime);
            $(this).find(".showVisitTime").prev().val(defaultVisitTime);
            var defaultDate= new Date(defaultVisitTime);
            $(this).find(".time_info span").text(week[defaultDate.getDay()]);
        });
        //
        var floatBimonthlyCascadingCalendar = lv.calendar({
            autoRender: false,  //弹出后渲染
            trigger: ".showVisitTime",  //目标元素选择器
            triggerEvent: "click",  //触发事件
            bimonthly: false,  //是否双月显示
            template: template,  //使用日历模板
            cascading: false,  //级联日历
            cascadingMax: 10,  //起始与结束日期最大范围
            showNumberOfDays: false,  //是否显示
            cascadingOffset: 1,  //结束日期自动跳转天数
            dayNext: 200,  //日历今天往后选择范围
            sourceFn: fillData,
            zIndex: 4005,
            /**
             * 选择日期回调函数
             * @param self 日历对象本身
             * @param $this 触发事件的JQuery元素
             */
            selectDateCallback: function (self, $this) {
                self.$trigger.change();  //手动触发输入框的change事件
                var dayOfWeek = self.getDayOfWeek();  //获取选中日期的星期（如果是节日或当天，则显示相应的信息）
                self.$trigger.siblings('.time_info').find('span').text(dayOfWeek);
                var flag = false;
                var btn = $('.wrap_date').find('.change_sure_btn')
                content.find(".showVisitTime").not(self.$trigger).each(function(){
                    if($(this).attr("defaultVisitTime")!=$(this).val()){
                        flag = true;
                        return;
                    }
                });
                if(self.$trigger.attr("defaultVisitTime")!=self.$trigger.val()){
                    btn.removeClass('change_sure_btn_stop');
                }else if(flag){
                    btn.removeClass('change_sure_btn_stop');
                }else{
                    btn.addClass('change_sure_btn_stop');
                }
                self.$trigger.prev().val(self.$trigger.val());
            },
            completeCallback:function(self){
            }
        });
        return false
    })
    /****************************/
    function fillData() {
        var self = this;
        var $trigger = self.$trigger;
        var suppGoodsId=$trigger.attr("suppGoodsId");
        var distributorId=$trigger.attr("distributorId");
        var ordProductId=$trigger.attr("ordProductId");
        var itemProductId= $trigger.attr("itemProductId");
        var defaultVisitTime = $trigger.attr("defaultVisitTime");
        var orderId = $trigger.attr("orderId");
        var orderItemId = $trigger.attr("orderItemId");
        var packageFlag="N";
        var url = "/myspace/reschedule/getTimePrice";
        if('Y'==$trigger.attr("packageFlag")){
            packageFlag="Y";
        }
        var thisSale = false;
        /**
         * 获取剩余HTML
         * @param inventory 剩余数量
         * @returns {string} 生成的HTML
         */
        function getStoreHTML(inventory,oversold) {
            var html = "";
            if(oversold == 'Y'){
                return html;
            }

            if (typeof inventory == "number" && inventory <= 0) {
                html = "售罄";
            } else if (typeof inventory == "number" && inventory < 10) {
                html = "余" + inventory
            }
            return html;
        }

        /**
         * 创建浮动框
         * @returns {*|jQuery|HTMLElement}  被创建的浮动框jQuery对象
         */
        function createHover() {
            var $hover = $(".calhover");
            if ($hover.length <= 0) {
                $hover = $('<div class="calhover"><div class="triangle"></div></div>');
            } else {
                $hover.html('<div class="triangle"></div>');
            }
            $("body").append($hover);
            $hover.removeClass("calhover-right");
            return $hover;
        }

        /**
         * 设置显示
         * @param data Ajax返回值
         * @returns {boolean}
         */
        function setDate(result) {
            var $allTd = self.wrap.find('td[data-date-map]');  //所有的日历单元格
            $allTd.children().addClass("caldisabled");  //先禁用所有的日历日期
            if(!result){
                return false;
            }
            var $lastIndex = result.length-1;
            result.forEach(function(data,i){
            if (!data || "success"!=data.code) {
                return false;
            }
            var thisPrice = 0;
            if(content.hasClass("js_one_box")){
                var val =  data.attributes.orderItemId;
                thisPrice = content.find("input[name='orderItemId'][value='"+val+"']").attr("price");
/*            }else if(content.hasClass("js_three_box")){
                content.find(".showVisitTime").each(function(){
                    if($.isNumeric($(this).attr("price"))){
                        thisPrice += parseInt($(this).attr("price"));
                    }
                });*/
            }else{
                thisPrice=$trigger.attr("price");
            }
            //对json对象进行迭代处理
            data.attributes.timePriceList.forEach(function (row) {

                var jsonDateStr = row.specDateStr;  //json单元-日期

                //将json单元日期字符串转化为JS日历对象(new Date())
                var date = lv.calendar.getDateFromFormattedString(jsonDateStr, self.options.dateFormat);

                //将日历对象转换为字符串(只保留参数dateFormat设定的数据，默认值为年月日)
                var dateStr = lv.calendar.dateFormat(date, self.options.dateFormat);
                var subZeroPriceYuan = row.subZeroPriceYuan;
                var inventory = row.stock;
                var sale = row.sale;
                var price = row.price;
                var oversold = row.oversellFlag;
                var stockFlag = row.stockFlag;
                //json单元-日期对应文档中的td单元格
                var $td = self.wrap.find('td[data-date-map=' + dateStr + ']');
                if(i==0){
                    $td.children().attr("index",i);
                }
                var $index=null;
                //如果json中的数据有td单元格相对应，则显示数据信息
                if ($td) {

                    //促销等元素的显示位置
                    var $calActive = $td.find(".calactive");

                    //显示库存
                    $td.find(".calinfo").html(getStoreHTML(inventory,oversold));

                    if (stockFlag == "N" || oversold == "Y" || (typeof inventory !== "number" && inventory > 0)) {
                        //设置可以点击选择当前日期
                        //$td.children().removeClass("caldisabled");
                        if(i>0){
                             $index = $td.children().attr("index");
                            if($.isNumeric($index) && (i==$index+1)){
                                $td.children().attr("index",i);
                            }
                        }
                    } else if (inventory <= 0) {  //库存小1的时候 不可点击 不可购买 不显示
                        $td.find(".calinfo").addClass("sellout");
                        $td.children().removeClass("caldate").addClass("nodate");
                        return false;
                    } else if (inventory <= 3 && inventory > 0) {
                        //$td.children().removeClass("caldisabled");
                        $td.find(".calinfo").addClass("sellouting");
                        if(i>0){
                            $index = $td.children().attr("index");
                            if($.isNumeric($index) &&  (i==$index+1)){
                                $td.children().attr("index",i);
                            }
                        }
                    } else {
                        //$td.children().removeClass("caldisabled");
                        if(i>0){
                            $index = $td.children().attr("index");
                            if($.isNumeric($index) && (i==$index+1)){
                                $td.children().attr("index",i);
                            }
                        }
                    }
                    //显示价格
                    if(thisPrice == price) {
                        $td.find(".calprice").html('<i>&yen;</i><em>' + subZeroPriceYuan + '</em>');
                    }else{
                        $td.find(".calprice").html('<i>&yen;</i><em>' + subZeroPriceYuan + '</em>');
                        $td.children().addClass("caldisabled");
                        //不相等
                        $td.attr("data-price-not-equal","true");
                        $td.children().removeAttr("index");
                    }

                    if(data.attributes.promList!=null && data.attributes.promList.length>0){
                        data.attributes.promList.forEach(function(e){
                            if(!orderItemId || orderItemId!= e.orderItemId){
                                return;
                            }
                            var startVistTime = new Date(e.startVistTime);
                            var endVistTime = new Date(e.endVistTime);
                            if(e.startVistTime){
                                if(date<startVistTime){
                                    $td.children().addClass("caldisabled");
                                    $td.attr("data-sale-not-equal","true");
                                    $td.children().removeAttr("index");
                                }
                            }
                            if(e.endVistTime){
                                if(date>endVistTime){
                                    $td.children().addClass("caldisabled");
                                    $td.attr("data-sale-not-equal","true");
                                    $td.children().removeAttr("index");
                                }
                            }
                        });
                    }

                }
                if(i==$lastIndex){
                    if($.isNumeric($td.children().attr("index")) && i==$td.children().attr("index")){
                        $td.children().removeClass("caldisabled");
                    }
                }
            });
            });
            self.wrap.find('td[data-date-map=' + defaultVisitTime + ']').children().addClass("caldisabled");
            
            (function () {
            
                var festival;  //节日
                var route;  //线路
                var sale;  //促销
            
                //鼠标移开，隐藏浮动框
                self.wrap.on("mouseleave", "[data-date-map]", function () {
                    var $hover = $(".calhover");
                    $hover.hide();
                    $hover.css({
                        left: 0,
                        top: 0
                    });
                });
            
                //鼠标移入，显示浮动框
                self.wrap.on("mouseenter", "[data-date-map]", function () {
                    var hasOnce = false;
            
                    //td单元格
                    var $this = $(this);
            
                    //sting 当前单元格日期字符串
                    var date = $this.attr("data-date-map");
            
                    //创建浮动框jQuery DOM对象
                    var $hover = createHover();
            
                    //休假
                    var $calfestival = $('<p class="calfestival"><i>休</i><span></span></p>');
                    var $calfestivalContent = $calfestival.find("span");
                    //显示坐标
                    var left = $this.offset().left;
                    var top = $this.offset().top + $this.outerHeight();
                    //节日
                    var thatFestival = self.options.festival[date];
                    festival = thatFestival;
                    if (thatFestival) {
                        hasOnce = true;
                        $calfestivalContent.html(thatFestival.vacationName);
                        $hover.append($calfestival);
                    }
            
                    var priceNotEqual = $this.attr("data-price-not-equal");
                    if(priceNotEqual) {
                        hasOnce = true;
                        var $notEqual = $('<p>与原游玩日期的价格不相同<br>不可改期哦</p>');
                        $hover.append($notEqual);
                    }
            
                    var saleNotEqual = $this.attr("data-sale-not-equal");
                    if(saleNotEqual) {
                        hasOnce = true;
                        var $saleNotEqual = $('<p>促销商品不支持改为非促销日期范围内哦！</p>');
                        $hover.append($saleNotEqual);
                    }
                    //页面右侧处理，如果屏幕过小，则显示在左侧
                    var width = $hover.outerWidth();
                    var $table = $this.parents(".caltable");
                    var tableLeft = $table.offset().left;
                    var tableWidth = $table.outerWidth();
                    if (width + left - tableLeft > tableWidth) {
                        left = tableLeft + (tableWidth - width);
                        $hover.addClass("calhover-right");
                    }
            
                    //显示
                    if (hasOnce) {
            
                        if ($this.children().is(".notThisMonth") && self.options.bimonthly) {
                            //hide
                        } else {
                            $hover.show();
                        }
            
                        $hover.css({
                            left: left,
                            top: top
                        });
                        var triangleLeft = ~~($this.offset().left - left + $this.width() / 2);
                        $hover.find(".triangle").css({
                            left: triangleLeft
                        })
            
                        if (self.options.zIndex) {
                            $hover.css("zIndex", self.options.zIndex + 1);
                        }
                    }
                });
            })();
        }
        this.loading();
        //Ajax获取时间价格表数据
        $.ajax({
            url: url,
            data: $.param({"suppGoodsId":suppGoodsId,"distributorId":distributorId,"productId":ordProductId,"itemProductId":itemProductId,"packageFlag":packageFlag,"orderId":orderId}),
            async: true
        }).done(function (data) {
            setDate(data);
            self.loaded();
        }).fail(function (error) {
            //TODO 错误处理
        })
    }
})
