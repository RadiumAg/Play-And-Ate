<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Play_And_Ate.Search.Search" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Search/chanel.css" rel="stylesheet" />
    <link href="../Content/Search/css.css" rel="stylesheet" />
    <script src="../Scripts/Special%20topic/jquery-1.7.2.min.js"></script>
    <script src="../Scripts/Search/chengtourUI.js"></script>
    <script src="../Scripts/Search/pindao1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<!-- //div.pnav --> 
<!-- 公共头部结束  --> 
<!--主要内容开始-->
<!-- 小导航开始  -->
<div class="l_lv-crumbs l_wrap">
    <p>
        <b>您当前所处的位置：</b>
        <a href="#">首页</a> &gt; <a href="#">成都出发</a> &gt; 马尔代夫
    </p>
</div>
<!-- 小导航结束  -->
<div class="l_ui-content l_wrap">
     <!-- 右边消息栏开始\\ -->
    <div class="search-aside">
   
    <div class="aside-box lv-bd side-stuan clearfix">
        <h3 class="side-title"><strong>热门景点</strong><small>进行中</small></h3>
        <ul class="stuan-list">
                    <li class="stuan-item">
                        <p class="img">
                            <a target="_blank" href="#" ><img src="images/9O0MF.jpg" width="178" height="89"></a>      </p>
                        <p class="tuan-title"><a rel="nofollow" target="_blank" href="#" >【5.25出发】马尔代夫7日游*【出境游团购】享Kihaad吉哈德度假酒店+回程赠送香港酒店一晚+国泰航空+蜜月特别赠送套餐+酒店餐饮一价全包……度假天堂，怎容错过？</a></p>
                        <p><a rel="nofollow" target="_blank" href="#" class="abtn abtn-block" >立即抢购</a>
                        <span>¥<i>14600</i></span>
                        <dfn>¥<i>13179</i></dfn>
                        </p>
                    </li>
        </ul>
        <p><a rel="nofollow" class="link-more" target="_blank" href="#" >更多团购产品&gt;&gt;</a></p>
    </div>
    <!-- //本期团购 -->
    <!-- 旅游推荐\\ -->
    <div class="aside-box lv-bd travel-index">
        
        <h3 class="side-title">
            <a target="_blank" href="#" >马尔代夫旅游首页</a>
        </h3>
        
        <a target="_blank" href="#" >
            <img src="images/1288335977153_small.jpg" width="178" height="89">
        </a>
        <p>
             这些珊瑚岛中只有约200座有人居住，其中不少隶属于世界知名的酒店集团。一个小岛就是一座度假酒店，设计师们在方寸土地上发挥无尽想象，设计出美轮美奂的花园和梦幻般的水上屋。几乎与世隔绝的环境和舒适的酒店设施、众多的娱乐项目、无微不至的服务。
        <a rel="nofollow" class="link-more" target="_blank" href="#" >更多&gt;&gt;</a>
        </p>
    </div>
    <!-- //旅游推荐 -->
    <!-- 攻略\\ -->
    <div id="guide_data_div" class="aside-box lv-bd side-guide" placeid="3546">
        <h3 class="side-title">
            <a id="guide_title_a" target="_blank" href="#" >马尔代夫旅游攻略</a>
        </h3>
        <div class="imgtext clearfix">
            <p class="img">
                <a target="_blank" href="#">
                    <img src="images/20140327044937977.jpg" width="89" height="124"></a>
            </p>
            <p>攻略版本：<br>第六版<br><br>更新时间：<br>2014-03-27<br>
                <a target="_blank" class="abtn abtn-gray" href="#">去下载</a>
            </p>
        </div> 
        <ul class="guide-list"> 
            <li class="guide-item">
                <a target="_blank" href="#">马尔代夫海龟岛浪漫之旅</a> 
                <span class="guide-item-info">2014-06-01&nbsp;&nbsp;&nbsp;&nbsp;浏览39次</span>
            </li> 
            <li class="guide-item">
                <a target="_blank" href="#">归来 我的马尔代夫香格里拉岛之圆梦之旅</a> 
                <span class="guide-item-info">2014-05-23&nbsp;&nbsp;&nbsp;&nbsp;浏览57次</span>
            </li>
            <li class="guide-item">
                <a target="_blank" href="#">肥肥安游遍全世界——Maldives</a> 
                <span class="guide-item-info">2014-02-06&nbsp;&nbsp;&nbsp;&nbsp;浏览2365次</span>
            </li>
        </ul>
    </div>
    <!-- //攻略 -->
    <!-- //推荐-->
    
</div>
<!-- // div .search-aside 右边结束--> 
<div class="search-main search-line">
<div class="search-result-nav">
    <ul class="search-nav hor clearfix">
        <li class="item-all search-nav-item qbgl search-nav-item-selected ">
            <a href="#" ><b>全部线路</b></a>
        </li>
    </ul>
</div>
<div class="l_cl"></div>


<!-- 搜素筛选开始\\ -->
<div class="search-filter">
    <ul class="filter-tags u-zyx">
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>农家行：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="#" >全部</a>
                                <a rel="nofollow" class="s-tag " href="#" >跟团行(28)</a>
                                <a rel="nofollow" class="s-tag " href="#" >自驾行(27)</a>
                                <a rel="nofollow" class="s-tag " href="#" >自助行(3)</a>
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more"  style="display: inline;">更多<i class="arrow"></i></a>
                        <span>农庄：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="#" >全部</a>
                                <a rel="nofollow" class="s-tag " href="#" >休闲观光(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >度假村(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >温泉农庄(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >科普基地(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >拓展培训(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >生态农庄(1)</a>
                        </p>
                    </li>
                
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>上岛交通：</span>
                        <p>
                            <a class="s-tag selected" href="#" >全部</a>
                                <a class="s-tag " href="#" >农家住宿(8)</a>
                                <a class="s-tag " href="#" >农家小炒(7)</a>
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>生态园：</span>
                        <p>
                            <a class="s-tag selected" href="#" >全部</a>
                                <a class="s-tag " href="#" >养殖园(17)</a>
                                <a class="s-tag " href="#" >采摘园(14)</a>
                                <a class="s-tag " href="#" >观光园(10)</a>
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>垂钓场：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="#" >全部</a>
                             <a rel="nofollow" class="s-tag " href="#" >池塘</a>
                                <a rel="nofollow" class="s-tag " href="#" >农家(34)</a>
                                <a rel="nofollow" class="s-tag " href="#" >湖库(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >野生(1)</a>
                                <a rel="nofollow" class="s-tag " href="#" >放养(1)</a>
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>往返交通：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="#" >全部</a>
                                <a rel="nofollow" class="s-tag " href="#" >直飞(16)</a>
                                <a rel="nofollow" class="s-tag " href="#" >飞机(10)</a>
                                <a rel="nofollow" class="s-tag " href="#" >直飞往返(5)</a>
                                <a rel="nofollow" class="s-tag " href="#" >美佳航空(3)</a>
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>特色品牌：</span>
                        <p>
                            <a class="s-tag selected" href="#" >全部</a>
                                <a class="s-tag " href="#" >超级自由行(31)</a>
                                <a class="s-tag " href="#" >自由行套餐(2)</a>
                        </p>
                    </li>
     </ul>
    <ul class="filter-tags u-qb" style="display:none;">
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>包含地区：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="#" >全部</a>
                                <a class="s-tag " href="#" >钻石岛(1)</a>
                        </p>
                     </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>主　　题：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="" >全部</a>
                                <a rel="nofollow" class="s-tag " href="-C416" >海滨岛屿(19)</a>
                                <a rel="nofollow" class="s-tag " href="-C430" >潜水(17)</a>
                                <a rel="nofollow" class="s-tag " href="-C530" >蜜月(1)</a>
                                <a rel="nofollow" class="s-tag " href="-C431" >摄影(1)</a>
                        </p>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="view-more" >更多<i class="arrow"></i></a>
                        <span>游玩天数：</span>
                        <p>
                            <a rel="nofollow" class="s-tag selected" href="#" >全部</a>
                                <a rel="nofollow" class="s-tag " href="#" >6天(2)</a>
                                <a rel="nofollow" class="s-tag " href="#" >7天(17)</a>
                        </p>
                    </li>
     </ul>
</div>

<!-- //搜素筛选结束 -->

<!-- 线路搜索列表开始\\ -->
<div class="search-result-box search-line-list">

<!-- 筛选排序\\  .filter-order filter-commont filter-commont-desc -->

<div class="filter-order">
    <span class="lv-order current-order">PAA推荐</span>
    <a rel="nofollow" href="#" class="price-order" >价格↑<i class="ico-order"></i></a>
    <a rel="nofollow" href="#" class="price-order order-asc" >价格↓<i class="ico-order"></i></a>
   
        <div class="result-search">
            <input type="text" class="input-text input-result-search" value="">
            <input  type="button" class="button" value="搜索">
        </div>          
</div>
<!-- //筛选排序结束 -->

<!-- //列表开始 -->
<div class="slist-item">
     <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
             <dl class="search-result-item line-info">
                        <dt class="img">
                            <a rel="nofollow" target="_blank" href="#" >
                            <img src="../image/12.jpg" width="168" height="86">
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s-type">特色景点
                            </span>
                        </dt>
                <dd class="info">
		                <dfn class="s-price">¥<i><%# Eval("ProductPrice").ToString().Split('.')[0] %></i>起</dfn>
                        <a rel="nofollow" href="#/comment" target="_blank" class="comment-num comment-num01" >156人付款</a>
                        <a rel="nofollow" href="#/comment" target="_blank" class="comment-num" >361条点评</a>
                </dd>   

                <dd class="intro">
                            <h5>
                            <a rel="nofollow" target="_blank" href="#" onclick="#" ><%# Eval("ProductName") %></a>
                            </h5>
                            <p class="promotions"><%# Eval("ProductName") %></p>
                            <p class="route">
                                <span></span><span></span><span></span><span></span><br>
                                <%# Eval("DetailIntroduction") %>
                              <a rel="nofollow" class="link-more" target="_blank" href="#" >更多</a>
                            </p>
                        </dd>
    </dl>
            </ItemTemplate>
        </asp:Repeater>
     <webdiyer:AspNetPager ID="Pager" AlwaysShow="true" 
         runat="server" CssClass="paginator" 
         CurrentPageButtonClass="cpb" FirstPageText="首页" 
         LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" 
         ShowMoreButtons="true" ShowCustomInfoSection="Right" 
         CustomInfoTextAlign="Right"  LayoutType="Table" 
         ShowPageIndexBox="Never" SubmitButtonText="跳转" 
         PageSize="8" CustomInfoHTML="共%PageCount%页/第%CurrentPageIndex%页，每页%PageSize%条，总记录数：%RecordCount%" OnPageChanged="Pager_PageChanged" OnPageChanging="Pager_PageChanging" >
       
  </webdiyer:AspNetPager>
     
</div>
<!-- //列表结束 -->

<!-- //分页开始 -->
<div class="mb10">
    <div class="pages rosestyle"> 
    <span class="PageSel">1</span>
    <a href="#" class="PageLink" title="第 2 页" rel="nofollow" >2</a>
    <a href="#" title="下一页" class="NextPage PageLink PageLink_page" rel="nofollow" >下一页</a>
</div>

<!-- //分页结束 -->

</div>
</div>
<!-- //线路搜索列表 -->
        
</div>
<div class="l_cl"></div>
</div>
<!-- // 订购指南等开始 -->
<!-- // 订购指南等结束 -->
<!--主要内容结束-->




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
