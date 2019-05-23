
$(function () {
    let orderId = [];
    ShowOrderData();
    function ShowOrderData() {
        $.ajax({
            url: "/Services/OrderService.ashx?id=2",
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                let result = data;
                $.each(data, function (index, value) {
                    orderId.push({ OrderId: value.OrderId });
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
                                                            <a href="#">查看详情</a>
                                                            <br />
                                                            <a href="#" name="delete">删除订单</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>`;
                    console.log(html);
                    $("#tableContent").append(html);
                    //给删除绑定事件
                    $("a[name='delete']").click(function () {
                        console.log(orderId);
                        console.log("删除订单");
                        $.ajax({
                            url: "/Services/OrderService.ashx?id=1",
                            type: "POST",
                            dataType: "JSON",
                            data: {
                                orderId: JSON.stringify(orderId)
                            },
                            success: function (data) {
                                console.log("删除成功！");
                                ShowOrderData();
                            },
                            error: function (data) {
                                console.log(data);
                            }
                        });
                    });
                    console.log($("a[name='delete']"));
                })
            },
            error: function (data) {
                console.log(data);
            }
        });
    }
})