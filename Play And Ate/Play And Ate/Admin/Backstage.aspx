<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Backstage.aspx.cs" Inherits="Play_And_Ate.Admin.Backstage" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>后台</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <script src="../Plugin/public/media/js/jquery-1.10.1.min.js"></script>
    <link rel="stylesheet" href="/Plugin/public/media/css/colpick.css" type="text/css" />
    <link rel="stylesheet" href="/Plugin/public/static/css/website.css" type="text/css" />
    <link rel="stylesheet" href="/Plugin/public/swiper/dist/css/swiper.min.css" type="text/css" />
    <link href="/Plugin/public/media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/Plugin/public/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="/Plugin/public/media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="/Plugin/public/media/css/style-metro.css" rel="stylesheet" type="text/css" />
    <link href="/Plugin/public/media/css/style.css" rel="stylesheet" />
    <link href="/Plugin/public/media/css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="/Plugin/public/media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="/Plugin/public/media/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- mask alert -->
    <link href="/Plugin/public/media/css/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" type="text/css" />
    <link href="/Plugin/public/media/css/bootstrap-modal.css" rel="stylesheet" type="text/css" />
    <!-- mask alert -->
    <!-- END GLOBAL MANDATORY STYLES -->
    <link rel="shortcut icon" href="/Plugin/public/media/image/favicon.png" />
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <script src="../Plugin/public/media/js/bootstrap.min.js"></script>
    <script src="/Plugin/public/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="/Plugin/public/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <!---->
    <script src="/Plugin/public/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="/Plugin/public/media/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="/Plugin/public/media/js/jquery.cookie.min.js" type="text/javascript"></script>
    <script src="/Plugin/public/media/js/jquery.uniform.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="/Plugin/public/media/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/Plugin/public/media/js/jquery.backstretch.min.js" type="text/javascript"></script>

    <!--EasyUI-->
    <script src="../Scripts/jquery.easyui-1.3.6.js"></script>
    <script src="../Scripts/locale/easyui-lang-zh_CN.js"></script>
    <link href="../Content/themes/black/easyui.css" rel="stylesheet" />
    <link href="../Content/themes/icon.css" rel="stylesheet" />
    <script src="../Scripts/datagrid-detailview.js"></script>
    <!--EasyUI-->

    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="/Plugin/public/media/js/app.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script src="/Plugin/public/media/js/bootstrap-modal.js" type="text/javascript"></script>
    <script src="/Plugin/public/media/js/bootstrap-modalmanager.js" type="text/javascript"></script>
    <script src="/Plugin/public/media/js/ui-modals.js"></script>
    <style>
        .setbg input[type="text"],
        .setcol .yu_bgcol {
            background-color: initial !important;
        }
    </style>
</head>
<!-- END HEAD -->
<!-- BEGIN PAGE LEVEL STYLES -->
<!-- color引用 -->

<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN BODY -->


<body class="page-header-fixed">
    <!-- BEGIN HEADER -->
    <div class="header navbar navbar-inverse navbar-fixed-top">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="navbar-inner">
            <div class="container-fluid">
                <!-- BEGIN LOGO -->
                <a class="brand" href="javascript:;">
                    <img src="../Images/Shared/LOGO1.PNG" width="100" />
                </a>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                    <img src="public/media/image/menu-toggler.png" alt="" />
                </a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <!-- BEGIN TOP NAVIGATION MENU -->
                <ul class="nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="brand pull-right text-center" style="margin-top: 10px;">您好，<%= userName %></li>
                    <li class="dropdown" id="header_notification_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-warning-sign"></i>
                            <span class="badge">6</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <li>
                                <p>其他服务</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon-plus"></i></span>功能介绍
                                    <span class="time"></span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-important"><i class="icon-bolt"></i></span>使用指南
                                    <span class="time"></span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img alt="" src="/Plugin/public/media/image/avatar1_small.jpg" />
                            <span class="username"></span>
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="" onclick="return false"><i class="icon-lock"></i>修改密码</a></li>
                            <li><a href="" id="loginOut" onclick="return false"><i class="icon-key"></i>退出</a></li>
                            <script>
                                $("#loginOut").click(function () {
                                    $.ajax({
                                        url: '/Services/Main.ashx?id=5',
                                        data: 'GET',
                                        dataType: 'JSON',
                                        success: function (data) {
                                            console.log(111, typeof (data))
                                            if (data) {
                                                window.open("/LoginAndRegister/Login.aspx", "_Self");
                                            }
                                        }
                                    });
                                });
                            </script>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
                <!-- END TOP NAVIGATION MENU -->
            </div>
        </div>
        <!-- END TOP NAVIGATION BAR -->
    </div>
    <!-- End HEADER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container row-fluid">
        <!-- BEGIN SIDEBAR -->
        <div class="page-sidebar nav-collapse collapse">
            <!-- Begin SIDEBAR MENU -->
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu">
                <li>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler hidden-phone"></div>
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                </li>
                <%if (roleId == "1"){ %>
                <li>
                    <a href="javascript:;">
                        <i class="icon-comments"></i>
                        <span class="title">商户管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#" onclick="return false" id="businesses">商户名单</a>
                            <a href="#" onclick="return false">商户商品请求</a>
                            <a href="#" onclick="return false">商户评分</a>
                        </li>
                    </ul>
                </li>
                <%}else if (roleId == "2"){ %>
                <li>
                    <a href="javascript:;">
                        <i class="icon-comments"></i>
                        <span class="title">订单</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#" onclick="return false" id="products">产品列表</a>
                            <a href="#" onclick="return false">客户订单</a>
                            <a href="#" onclick="return false">交易营收</a>
                        </li>
                    </ul>
                </li>
                <%} %>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN PAGE -->
        <div class="page-content easyui-tabs" data-options="fit:true" id="content">
            <div data-options="title:'首页'">
                <img src="../Images/Admin/Admin.jpg" style="width: 100%; height: 100%;" />
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $("#businesses").click(function () {
                //获取标题
                var title = $(this).html();
                if (!$("#content").tabs("exists", title)) {
                    $("#content").tabs('add', {
                        href: '/Admin/PartialView/ShowBussinessData.html',
                        fit: true,
                        closable: true,
                        title: title,
                    });
                } else {
                    $("#content").tabs("select", title);
                }
            });
        });
    </script>
    <!-- end PAGE -->
    <!-- **** -->
    <!-- **** -->
    <!-- === -->
    <div id="static" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h3 id="titler"></h3>
        </div>
        <div class="modal-body">
            <p id="contenter"></p>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn">确定</button>
            <button type="button" data-dismiss="modal" class="btn green">关闭会话</button>
        </div>
    </div>
    <!-- === -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <!-- END FOOTER -->
    <!-- <script type="text/javascript" src="/media/js/yy_card.js"></script> -->
    <script src="/Plugin/public/media/js/colpick.js"></script>
    <script src="/Plugin/public/media/js/plugin.js"></script>
    <script src="/Plugin/public/media/js/website.js"></script>
    <script src="/Plugin/public/media/js/jquery.upload.js"></script>
    <!--     <script src="/media/js/jquery.rotate.min.js"></script> -->
    <script src="/Plugin/public/swiper/dist/js/swiper.min.js"></script>
    <script>
        jQuery(document).ready(function () {
            App.init();
            UIModals.init();
            // var swiper = new Swiper('.swiper-container');
            $('.datainfo .span12,.loading').hide();
        });


        //上传图片
        function upload(obj, num, b) {
            $.upload({
                // 上传地址
                url: "{:url('user/website/ajax_upload')}",
                // 文件域名字
                fileName: 'file' + num,
                // 其他表单数据
                // 上传完成后, 返回json, text
                dataType: 'json',
                // 上传之前回调,return true表示可继续上传
                onSend: function () {
                    return true;
                },
                // 上传之后回调
                onComplate: function (data) {
                    if (b == 1) {
                        if (data.errcode == 1) {
                            // alert("上传成功");
                            $(obj).attr('src', data.errmsg);
                        } else {
                            alert("网络错误");
                        }
                    } else {
                        $('#wraps').css({
                            'background': 'url(' + data.errmsg + ')  no-repeat',
                            'background-size': '100%',
                        });
                        // $("#containment-wrapper").attr('background','url('+data.errmsg+')');
                    }
                }
            });
        }
        //保存

        function savewebsite() {

            var content = $(".dome_exp").html(); //后台元素    
            $("#website .maininfo img").attr('ondblclick', '');
            $('.ui-widget-header,.ui-resizable-handle').remove();
            $('.datahref :text').attr("disabled", "disabled");

            var web = $("#website").html(); //前台展示
            $.ajax({
                url: "{:url('user/website/savewebsite')}",
                type: 'POST',
                data: {
                    "web": web,
                    'con': content
                },
                dataType: "json",
                success: function (data) {
                    if (data == 1) {
                        alert("提示", "保存成功！")
                    } else {
                        alert("提示", "保存失败！")
                    }
                    setTimeout(function () {
                        location = location;
                    }, 8000);
                }
            });
        }

        function keepdomafter() {
            play();

            $('.loading').hide();
            $('.ui-resizable-se').nextAll().remove();
            var swiper = new Swiper('.swiper-container', {
            });
        }
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>

