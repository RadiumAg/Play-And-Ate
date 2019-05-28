<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order_2.aspx.cs" Inherits="Play_And_Ate.Order.Order_2" %>

<asp:Content runat="server" ContentPlaceHolderID="Style" ID="Style">
    <link href="../Content/Order/common_wm.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/style.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/order.css" rel="stylesheet" media="screen" type="text/css" />
    <style>
        .Disnone {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content" ID="Content">
    <div class="head1">
        <div class="order top10">
            <!--订单步骤 START-->
            <div class="orderStep">
                <ul class="step2">
                    <li class="li1">填写订单</li>
                    <li class="li2 on">填写游客信息</li>
                    <li class="li3 ">核对订单</li>
                    <li class="li4 ">付款</li>
                    <li class="li5 ">预订成功</li>
                </ul>
            </div>
            <!--订单步骤 END-->
            <div class="orderWrap">
                <div class="userInfo">
                    <div class="notice"><b id="closeNotice"></b>按照旅游局最新规定，请您配合提供所有出行客人姓名，证件号码，联系电话，感谢您的配合！</div>
                    <h2>订单信息确认 <span>请准确填写游客信息，以免在办理相关手续时发生问题。 </span><a id="userInfo"></a>
                    </h2>
                    <!--成人游客 START-->
                    <div id="adult_information">
                    </div>
                    <asp:Label ID="GetLength" class="Disnone" runat="server" Text="1"></asp:Label>
                    <asp:Label ID="GetET" class="Disnone" runat="server" Text="1"></asp:Label>
                    <asp:Label ID="GetZJ" class="Disnone" runat="server" Text="1"></asp:Label>
                    <!--成人游客 END-->
                    <!--儿童游客 START-->
                    <!--儿童游客 END-->
                    <h2>填写联系人信息 <span>请准确填写联系人信息（手机号码、E-mail），以便我们与您联系。</span>
                    </h2>
                    <div class="userType userTypeContact">
                        <div class="bd">
                            <table width="100%" cellpadding="0" cellspacing="0" class="tb1">
                                <tbody>
                                    <tr>
                                        <td class="td1">
                                            <i>*</i> 联系人姓名：
                                        </td>
                                        <td>
                                            <div class="floatDiv">
                                                <input class="input2" id="txt_name" name="txt_name" maxlength="15" value="" />
                                            </div>
                                        </td>
                                        <td class="td1">
                                            <i>*</i> 手机号码：
                                        </td>
                                        <td>
                                            <div class="floatDiv">
                                                <input class="input1" id="txt_mobile" name="txt_mobile" maxlength="11" value="" />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td1">
                                            <i>*</i> 电子邮箱：
                                        </td>
                                        <td>
                                            <div class="floatDiv">
                                                <input class="input2" id="txt_email" maxlength="20" name="txt_email" value="" />
                                            </div>
                                        </td>
                                        <td class="td1">固定电话：
                                        </td>
                                        <td>
                                            <div class="floatDiv">
                                                <input class="input3" id="txt_start_phone" name="txt_start_phone" value="86" type="text"/>
                                                <input class="input4" id="txt_end_phone" name="txt_end_phone"  value="" />
                                                <span style="color: Red;" id="span_phone"></span>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="pT">
                            订单备注
                        </p>
                        <div class="p1">
                            <div class="textArea">
                                <textarea id="txtDes" name="txtDes"></textarea>
                            </div>
                            <p class="p2">
                                （<label id="lbCode">还可以输入</label><em id="eCodeLeft" class="enable">200</em>个字符）
                            </p>
                        </div>
                    </div>
                </div>
                <div class="orderList" style="top: 0px;">
                    <div class="hd">
                        <span></span>预订清单
                    </div>
                    <div class="bd">
                        <ul>
                            <li class="li1">
                                <p class="p1">
                                    旅游团费
                                </p>
                                <p runat="server">
                                    <b>￥<s id="crzjg" runat="server">378</s></b><span id="crjg" runat="server">2成人×￥189</span>
                                </p>
                                <p runat="server">
                                    <b>￥<s id="etzjg" runat="server">0</s></b><span id="etjg" runat="server">0儿童×￥160</span>
                                </p>
                            </li>
                        </ul>
                        <div class="li4">
                            <p>
                                <strong>应付总额：</strong><label>￥<i id="offerPrice" runat="server">378</i></label>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="clearfix">
                </div>
                <div class="userInfoBtn" id="gl_submit" style="display: block;">
                    <input type="submit" id="btn_pre"  value="" style="background: url('/Images/Order/order15.gif'); border-width: 0px; cursor: pointer; width: 139px; height: 44px;" />
                    <input type="submit" id="btn_next" value="" style="background: url('/Images/Order/order19.gif'); border-width: 0px; cursor: pointer; width: 139px; height: 44px;" />
                </div>
                <div class="clearfix">
                </div>
            </div>
            <input type="hidden" id="txtHiddenPId" name="txtHiddenPId" value="1147" />
            <input type="hidden" id="txtHiddenDays" name="txtHiddenDays" value="2" />
            <input type="hidden" id="pid" name="pid" value="1147" />
            <input type="hidden" id="txtHiddenGoDate" name="txtHiddenGoDate" value="2019-05-08" />
            <input type="hidden" id="txtHiddenUzaiPrice" name="txtHiddenUzaiPrice" value="189" />
            <input type="hidden" id="txtHiddenChildPrice" name="txtHiddenChildPrice" value="160" />
            <input type="hidden" id="txtHiddenPersonNum" name="txtHiddenPersonNum" value="2" />
            <input type="hidden" id="txtHiddenChildNum" name="txtHiddenChildNum" value="0" />
            <input type="hidden" id="txtHiddenProcessType" name="txtHiddenProcessType" value="1" />
            <input type="hidden" id="txtHiddenMType" name="txtHiddenMType" value="3" />
            <input type="hidden" id="txtSubmitHiddenAdd" name="txtSubmitHiddenAdd" value="77935^1147^0^5^2.0000^1900-01-01^0^5^3^人^^^^太平洋意外险$77936^1147^0^40^2.0000^1900-01-01^1^40^3^人^^^^单房差$0" />
            <input type="hidden" id="txtSubmitHiddenUb" name="txtSubmitHiddenUb" value="1,0,score" />
            <input type="hidden" id="txtSubmitHiddenUpTrain" name="txtSubmitHiddenUpTrain" value="" />
            <input type="hidden" id="txtHiddenUList" name="txtHiddenUList" value="" />
            <input type="hidden" id="txtHiddenDes" name="txtHiddenDes" value="" />
            <input type="hidden" id="txt_current_date_hz" value="2012-11-20" />
            <input type="hidden" id="allp" name="allp" value="378" />
            <input type="hidden" id="ddl_nums_person" name="ddl_nums_person" value="0" />
        </div>
        <div class="blank"></div>
        <div id="ftw">
            <div id="ft">
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Footer" ID="Footer">
    <script src="/Scripts/Order/Order_2/Index.js"></script>
    <script src="/Plugin/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
</asp:Content>
