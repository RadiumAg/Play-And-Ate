<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayTo.aspx.cs" Inherits="Play_And_Ate.Order.PayTo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .font_content {
            font-family: "宋体";
            font-size: 14px;
            color: #FF6600;
        }

        .font_title {
            font-family: "宋体";
            font-size: 16px;
            color: #FF0000;
            font-weight: bold;
        }

        table {
            border: 1px solid #CCCCCC;
        }
    </style>
</head>
<body>
    <table align="center" width="350" cellpadding="5" cellspacing="0">
        <form id="form1" runat="server">
            <tr>
                <td align="center" class="font_title" colspan="2">订单确认</td>
            </tr>
            <tr>
                <td class="font_content" align="right">订单号：</td>
                <td class="font_content" align="left">
                    <asp:Label ID="lbOut_trade_no" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="font_content" align="right">付款总金额：</td>
                <td class="font_content" align="left">
                    <asp:Label ID="lbTotal_fee" runat="server"></asp:Label></td>
            </tr>
        </form>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lbButton" runat="server"></asp:Label></td>
        </tr>
    </table>
    <script>
        window.$sid = 'ASP.NET_SessionId=<%= System.Web.HttpContext.Current.Session.SessionID %>
</script>
</body>
</html>
