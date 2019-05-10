<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Play_And_Ate.Map.Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=r2Zz1BGEsC08YcTAH1o61Bqu2PpfGfhz"></script>
    <title>显示全景控件</title>
    <style type="text/css">
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
        }
    </style>
</head>
<body id="allmap" style="width: 100%; height: 100%;">
</body>

</html>
<script type="text/javascript">
    //1.渲染名为"allmap"的div
    var map = new BMap.Map('allmap');
    //2.创建经纬对象
    var point = new BMap.Point(<%= point.Longitude%>, <%= point.Latitude%>);
    //3.初始化地区
    map.centerAndZoom(point, 20);
    //4.创建标注
    var marker = new BMap.Marker(point);
    //5.将标注添加到地图中
    map.addOverlay(marker);
    //6.跳动的动画
    marker.setAnimation(BMAP_ANIMATION_BOUNCE);
    map.enableScrollWheelZoom(true);
    // 7.覆盖区域图层测试
    map.addTileLayer(new BMap.PanoramaCoverageLayer());
    //8.构造全景控件
    var stCtrl = new BMap.PanoramaControl();
    stCtrl.setOffset(new BMap.Size(20, 20));
    //9.添加全景控件
    map.addControl(stCtrl);
    //添加定位相关控件
    //1.添加带有定位的导航控件
    var navigationControl = new BMap.NavigationControl({
        //靠左上角位置
        anchor: BMAP_ANCHOR_TOP_LEFT,
        //LARGE类型
        type: BMAP_NAVIGATION_CONTROL_LARGE,
        //启用显示定位
        enableGeolocation: true
    });
    map.addControl(navigationControl);
    //添加定位控件
    var geolocationControl = new BMap.GeolocationControl();
    geolocationControl.addEventListener("locationSuccess", function (e) {
        //定位成功事件
        var address = '';
        address += e.addressComponent.province;
        address += e.addressComponent.city;
        address += e.addressComponent.district;
        address += e.addressComponent.street;
        address += e.addressComponent.streetNumber;
        alert("当前定位地址为：" + address);
    });
    geolocationControl.addEventListener("locationError", function (e) {
        //定位失败事件
        alert(e.message);
    });
    map.addControl(geolocationControl);
</script>
