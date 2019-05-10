function orderPaySubmit() {
    $("#OrderStatusPop").css("display", "none");
    if ($('#third_party_radio_alipay').attr('checked') || $('#third_party_radio_lakala').attr('checked')) {
        $('#hdPayType').val('THREEPAY');
    }
    else if ($('#third_party_radio_CFT').attr('checked')) {
        $('#hdPayType').val('CAIFUTONG'); //财付通
    }
    else if ($('#third_party_radio_KuaiQian').attr('checked')) {
        $('#hdPayType').val('KUAIQIAN'); //快钱
    }
    else if ($('#third_party_radio_daijinka').attr('checked')) {//代金卡
        $('#hdPayType').val('DAIJINKA');
    }
    else {
        //[支付宝]浦发SPDB、兴业CIB、邮政PSBC-DEBIT、中信CITIC、光大CEBBANK、上海银行SHB
        //[快钱]  浦发SPDB、兴业CIB、邮政PSBC、中信CITIC、光大CEB、上海银行SHB
        var che_SPDB = $('#bankradio_SPDB').attr('checked'); //浦发
        var che_CIB = $('#bankradio_CIB').attr('checked'); //兴业
        var che_PSBC = $('#bankradio_PSBC').attr('checked'); //邮政
        var che_CITIC = $('#bankradio_CITIC').attr('checked'); //中信
        var che_CEB = $('#bankradio_CEB').attr('checked'); //光大
        var che_SHB = $('#bankradio_SHB').attr('checked'); //上海银行
        if (che_SPDB || che_CIB || che_PSBC || che_CITIC || che_CEB || che_SHB) {
            $('#hdPayType').val('KUAIQIAN'); //快钱
        }
        else {
            $('#hdPayType').val('Ali'); //支付宝
        }
        if ($('#bankradio_CMB').attr('checked') && document.getElementById('hdBankCMB') != null) {//招行优惠活动
            $('#hdPayType').val('CMB');
        }
    }
    $('#formpay').submit();
}
function selectTag(showContent, selfObj) {
    // 操作标签
    var tag = document.getElementById("tags").getElementsByTagName("li");
    var taglength = tag.length;
    for (i = 0; i < taglength; i++) {
        tag[i].className = "";
    }
    selfObj.parentNode.className = "nowa_sll";
    // 操作内容
    for (i = 0; j = document.getElementById("tagContent" + i); i++) {
        j.style.display = "none";
    }
    document.getElementById(showContent).style.display = "block";
}
//设置银行优惠价格
function setPayYH() {
    $('input[name=pay_bank]').click(function() {
        var objbankName = 'hdBank' + $(this).val();
        if (document.getElementById(objbankName) != null) {
            $('#bprice').text($('#' + objbankName).val());
            return;
        } else {
            $('#bprice').text($('#hdPayMoney').val());
        }
    });
}
//setPayYH();
//迟美欢 2012-04-25
function editWidget_contract(targeturl) {
    window.scrollTo(0, 0);
    
    var width = document.documentElement.clientWidth + document.documentElement.scrollLeft;
    var height = document.documentElement.clientHeight + document.documentElement.scrollTop;
    var layer = document.createElement('div');
    layer.style.zIndex = 2;
    layer.id = 'layer_contract';
    layer.style.position = 'absolute';
    layer.style.top = '0px';
    layer.style.left = '0px';
    layer.style.height = document.documentElement.scrollHeight + 'px';
    layer.style.width = width + 'px';
    layer.style.backgroundColor = 'black';
    layer.style.opacity = '.3';
    layer.style.filter += ("progid:DXImageTransform.Microsoft.Alpha(opacity=30)");
    document.body.style.position = 'static';
    document.body.appendChild(layer);

    var size = { 'height': 530, 'width': 890 };
    var iframe = document.createElement('iframe');
    iframe.name = 'Widget Editor';
    iframe.id = 'WidgetEditor_contract';
    iframe.scrolling = "no";
    iframe.src = targeturl;
    iframe.style.height = size.height + 'px';
    iframe.style.width = size.width + 'px';
    iframe.style.position = 'absolute';
    iframe.style.zIndex = 3;
    iframe.style.border = "2px";
    iframe.frameBorder = "0px";
    iframe.marginwidth = "0";
    iframe.marginheight = "0";
    iframe.style.top = ((height + document.documentElement.scrollTop) / 2) - (size.height / 2) + 'px';
    iframe.style.left = (width / 2) - (size.width / 2) + 'px';
    document.body.appendChild(iframe);
}

function closeEditor_contract() {
    var we = document.getElementById("WidgetEditor_contract");
    var la = document.getElementById("layer_contract");
    document.body.removeChild(we);
    document.body.removeChild(la);
    document.body.style.position = '';
    addButtonClick();
}



