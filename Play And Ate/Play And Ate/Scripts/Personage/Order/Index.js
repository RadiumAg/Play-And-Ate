
/*订单操作JS*/
$(function () {
    //设置页显示的行数
    var pageSum = 2;

    //初始化显示第一页记录
    ShowOrderData(1, pageSum);
    InitPager();

    // 初始化分页控件
    function InitPager() {
        $.ajax({
            url: "/Services/OrderService.ashx?id=2",
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                let result = parseInt(data.total);
                console.log(result);
                $("#page").paging({
                    pageNum: 1, // 当前页面
                    totalNum: Math.ceil(result / pageSum), // 总页码
                    totalList: result, // 记录总数量
                    callback: function (num) { //回调函数
                        //1.清空原来的
                        $("#tableContent").children().remove();
                        //2.重新添加
                        ShowOrderData(this.pageNum, pageSum);
                    }
                });
                console.log($("#page"));
            }
        });
    }

    //保存订单号的数组
    let orderId = [];
    //展示订单信息
    function ShowOrderData(pageNum, pageSum) {
        $.ajax({
            url: "/Services/OrderService.ashx?id=2",
            type: "GET",
            dataType: "JSON",
            data: {
                page: pageNum,
                rows: pageSum
            },
            success: function (data) {
                console.log("请求的数据为:" + data);
                let result = data.rows;
                console.log("数据为：" + result);
                if (Object.keys(result).length != 0) {
                    //1.清空原来的
                    $("#tableContent").children().remove();
                    $.each(result, function (index, value) {
                        let success = value.Success == true ? "已支付" : "未支付";
                        let html = `<table class="order_table">
                                                <tbody>
                                                    <tr class="sep-row">
                                                        <td class="order_td">订单号:<a href="#" style="font-size: 20px;"><strong>`+ value.OrderName + `</strong></a></td>
                                                        <td>联系人姓名：<span>`+ value.ContactsName + `</span>
                                                            <br />
                                                            <br />
                                                            出发日期:<span>2019-02-25</span>
                                                            <br />
                                                            <br />
                                                            订单金额:<span>￥<strong>`+ value.OrderPrice + `</strong></span>
                                                        </td>
                                                        <td>
                                                            <div style="height: 80px; line-height: 80px; width: 60px; font-size: 18px">
                                                                <a href="#">`+ success + `</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <br />
                                                            <a href="#" onClick='return false' name="delete" data-value="`+ value.OrderId + `">删除订单</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>`;
                        $("#tableContent").append(html);

                        //给删除标签绑定事件
                        $("a[name='delete']").click(function () {
                            let flag = window.confirm("确认要删除（删除后将无法恢复）？");
                            if (flag) {
                                console.log("当前删除的订单OrderId为：" + $(this).data('value'));
                                orderId.push({ OrderId: $(this).data('value') });
                                $.ajax({
                                    url: "/Services/OrderService.ashx?id=1",
                                    type: "POST",
                                    dataType: "JSON",
                                    data: {
                                        orderId: JSON.stringify(orderId)
                                    },
                                    success: function (data) {
                                        window.alert("删除成功！");
                                        ShowOrderData(1, pageSum);
                                        InitPager();
                                    },
                                    error: function (data) {
                                        console.log(data);
                                    }
                                });
                            }
                        });
                        console.log($("a[name='delete']"));
                    })
                }
                else {
                    //1.清空原来的
                    $("#tableContent").children().remove();
                    let html = "<h1 style='height:50px;'>暂无订单</h1>";
                    $("#tableContent").append($(html));
                }
            },
            error: function (data) {
                console.log(data);
            }
        });
    }
})
/*订单操作JS*/
$(".newmember_leftside dl").children("dd").slideUp();

/*侧边栏收放JS*/
$(function () {
    $(".newmember_leftside dl")
        .children("dt")
        .click(function () {
            $(this).siblings("dd").slideToggle();
        })
});
/*侧边栏收放JS*/