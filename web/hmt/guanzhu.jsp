<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="zh_CH">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="../img/icon.png" type="image/png"/>
    <meta name="renderer" content="webkit">
    <title>花木通|关注区域</title>
    <meta name="keywords" content="花木通,惠民,苗木,花木,苗木交易,花木求购,苗木求购,花木资讯,花木论坛,花木销售,苗木销售,苗木资讯,绿化苗木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会">
    <meta name="Description"
          content=" 花木通是惠民县本地第一苗木供求信息平台、信息通讯平台，突破了苗木大市场、绿化工程公司、经纪人、苗农之间的信息壁垒，让市场订单苗木不愁买，苗农种植苗木不愁卖！为本地苗木行业发展助力，让经纪人足不出户，随时随地做生意！让苗农及时了解市场行情，苗木卖价更高更容易！">
    <link href="../hmt/css/common/index-type.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/common/common.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/common/base.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/frame.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/category-vegetable/common.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/search/style.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/search/base.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/supply/index.css" rel="stylesheet" type="text/css"/>
    <link href="../hmt/css/location_focus.css" rel="stylesheet" type="text/css"/>


    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/md5.js"></script>
    <script type="text/javascript" src="../js/cookie.js"></script>
    <script type="text/javascript" src="../js/ajaxfileupload.js"></script>
    <script type="text/javascript" src="../js/Util.js"></script>
    <script type="text/javascript" src="../js/validation.js"></script>
    <script language="javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery_latest.js"></script>
    <style>
        .index-button {
            display: block;
            width: 300px;
            line-height: 150%;
            -webkit-border-radius: 4rem;
            -moz-border-radius: 4rem;
            border-radius: 4rem;
            text-align: center;
            margin: 0 auto;
            font-size: 1.5rem;
            color: #fff !important;
            background-color: #009237;
        }

        .category {
            width: 100%;
            padding: 10px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .category > li {
            float: left;
            display: block;
            width: 19%;
            margin-right: 1%;
        }

        .category > li > .active {
            border: 1px solid #FF250E;
            background-color: #FF6C6C;
            color: #fff;
        }

        .category > li > a {
            text-align: center;
            border: 1px solid #05D000;
            color: #000;
            display: block;
            padding: 10px 15px;
            font-size: 1rem;
            background-color: #acf86a;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }
    </style>


</head>
<body>

<!-- 顶部 -->
<div class="topbar">
    <div class="container clearfix">
        <ul class="top-login fl">
            <c:if test="${is_login=='1'}">
                <ul class="fl">
                    <li>
                        <div class="label" id="userName">
                            <a href="javascript:void(0)">${emp.mm_emp_nickname}</a>
                        </div>
                    </li>
                    <li>
                        <div class="label o-login">
                            <a href="javascript:void(0)" onclick="quiteClick()">退出</a></div>
                    </li>
                    <li>
                        <div class="label pr">
                            <a href="/netNoticeController/list.do?page=1" class="msg">消息<span
                                    class="msg-mark"></span></a></div>
                    </li>
                </ul>
            </c:if>
            <ul class="fl">
                <li class="label orange">您好，欢迎来到花木通信息平台</li>
                <c:if test="${is_login=='0'}">
                    <li class="label p-login">
                        <a title="马上登录，享受更多会员专享服务" href="javascript:void(0)" onclick="login()"
                           rel="nofollow">请登录</a>
                    </li>
                    <li class="label">
                        <a title="马上注册，共享无限商机" href="javascript:void(0)" onclick="reg()"
                           rel="nofollow">免费注册 </a>
                    </li>
                </c:if>
            </ul>
        </ul>
        <ul class="top-nav fr">
            <li id="hn_home_id">
                <div class="label">
                    <a href="/hmtIndex/toIndex.do?page=1">花木通求购信息</a></div>
            </li>
            <c:if test="${is_login=='1'}">
                <li>
                    <div class="label">
                        <a href="/netCenterController/toCenter.do" rel="nofollow">我的中心</a>
                    </div>
                </li>
            </c:if>
            <li class="dropdown">
                <div class="dropdown-label">
                    <i>&nbsp;</i><span><a href="javaScript:void(0)" target="_blank"
                                          rel="nofollow">手机花木通</a></span></div>
                <div class="dropdown-layer dd-hn-qrcode">
                    <div class="qrcode">
                        <img src="../hmt/images/category-vegetable/topbar-hn-app.png" alt="手机花木通">

                        <p>
                            <span>扫一扫下载</span><span>手机花木通App</span></p>
                    </div>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-label">
                    <i>&nbsp;</i><span>关注花木通</span></div>
                <div class="dropdown-layer dd-hn-qrcode">
                    <div class="qrcode">
                        <img src="../hmt/images/category-vegetable/topbar-hn-weixin.png" alt="花木通官方微信">

                        <p>
                            <span>扫码关注</span><span>花木通官方微信</span></p>
                    </div>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-label">
                    <i>&nbsp;</i><span><a href="javascript:void(0)" target="_blank" rel="nofollow">帮助中心</a></span></div>
                <div class="dropdown-layer dd-help-center">
                    <p>
                        <a href="/netWeixinController/toKefu.do" target="_blank" rel="nofollow">微信客服</a>
                        <a href="/netKefuController/toKefu.do" target="_blank" rel="nofollow">电话客服</a></p>
                </div>
            </li>
        </ul>
    </div>
</div>
<!--头部 导航-->
<div class="type-head">
    <h1 class="logo">
        <a href="/hmtIndex/toIndex.do?page=1&mm_msg_type=0" title="花木通信息平台"></a>
    </h1>
</div>

<div class="type-nav">
    <div class="nav-con">
        <!-- 顶部栏目-->
        <ul class="nav-con-tit">
            <li><a href="/hmtIndex/toIndex.do?page=1&mm_msg_type=0" class="nav-tstj">求购大厅</a></li>
            <li><a href="/hmtIndex/toIndex.do?page=1&mm_msg_type=1" class="nav-dptj">供应大厅</a></li>
            <li><a href="/netTopController/toTop.do?page=1" class="nav-tstj">金牌榜</a></li>
            <li><a href="/netCenterController/toCenter.do" class="nav-zxhq">服务中心</a></li>
            <li><a href="../html/download.html" target="_blank" class="nav-zxhq">手机版</a></li>
        </ul>
    </div>
</div>
<!--头部 导航 end-->

<input type="hidden" id="is_login" name="is_login" value="${is_login}">
<input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">
<input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${emp.mm_emp_id}">

<div class="container wrap-1190">

    <form action="supply.htm" id="filterForm" class="fl" style="width: 956px;">
        <%--<div class="noticebar mt_15">--%>
        <%--<input type="text" id="keyword" name="keyword" autocomplete="off" class="notice-input" value="" placeholder="标题|手机号|公司名称|联系人">--%>
        <%--<a href="javaScript:void(0)" onclick="searchIndex(event)" class="notice-submit"> <i class="lee-ico lee-cx"></i>搜索</a>--%>
        <%--<span class="notice-msg"><a href="#" target="_blank" rel="nofollow">欢迎使用花木通信息平台，请谨慎核实信息内容!</a></span>--%>
        <%--</div>--%>
        <div class="pro-list mb_10">
            <%--顶部地区选择--%>
            <ul class="category clearfix">

                <c:forEach items="${listArea}" var="e" varStatus="st">
                    <c:if test="${countryid == e.areaID}">
                        <li><a class="active" href="javaScript:void(0)"
                               onclick="gzClickArea('${e.areaID}')">${e.area}</a></li>
                    </c:if>
                    <c:if test="${countryid != e.areaID}">
                        <li><a href="javaScript:void(0)" onclick="gzClickArea('${e.areaID}')">${e.area}</a></li>
                    </c:if>
                </c:forEach>

            </ul>
            <input type="hidden" id="countryid" name="countryid" value="${countryid}">
            <input type="hidden" id="is_login" name="is_login" value="${is_login}">
            <input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">
            <input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${emp.mm_emp_id}">

        </div>

            <div class="pro-list mb_10">
                <ul class="pro-list-title pt_15">
                    <li class="l2">
                        <select style="width: 80px" class="form-control" id="mm_msg_type" onchange="searchChange()">
                            <option value="">--选择信息类别--</option>
                            <option value="0" ${query.mm_msg_type=='0'?'selected':''}>求购</option>
                            <option value="1" ${query.mm_msg_type=='1'?'selected':''}>供应</option>
                        </select>
                    </li>
                    <li class="l1">内容</li>
                    <li class="l2">所在地区</li>
                    <li class="l3">联系人</li>
                    <li class="l4">时间</li>
                    <li class="l5">信誉</li>
                </ul>
                <ul>
                    <c:forEach items="${list}" var="e" varStatus="st">
                        <li class="text-list">
                            <a href="javascript:void(0)" target="_blank" onclick="showDetail('${e.mm_msg_id}')">

                                <c:if test="${e.mm_msg_type=='0'}"> <span class="l2">[求购]</span></c:if>
                                <c:if test="${e.mm_msg_type=='1'}"> <span class="l2">[供应]</span></c:if>

                                <span class="l1">${e.mm_msg_title}</span>
                                <span class="l2">${e.area}</span>
                                <a class="l3" onclick="showDetail('${e.mm_msg_id}')"><img class="head-pic"
                                                                                          src="${e.mm_emp_cover}"
                                                                                          alt="${e.mm_emp_nickname}"
                                                                                          title="${e.mm_emp_nickname}"/>${e.mm_emp_nickname}
                                </a>
                                <span class="l4" onclick="showDetail('${e.mm_msg_id}')">${e.dateline}</span>
			                <span class="l5" onclick="showDetail('${e.mm_msg_id}')">
                                <c:if test="${e.is_miaomu=='1'}"><img style="width: 25px;height: 32px;"
                                                                      src="../img/tree_icons_trust.png"
                                                                      title="苗木协会"></c:if>
								<c:if test="${e.is_chengxin=='1'}"><img style="width: 25px;height: 32px;"
                                                                        src="../img/tree_icons_group.png"
                                                                        title="诚信会员"></c:if>
			                </span>
             <span class="l6">
               <em class="text-list-view" onclick="showDetail('${e.mm_msg_id}')">查看详情
                   <c:if test="${e.mm_msg_picurl !=''}"><img class="have-pic" src="../img/icon_have_pic_green.png"
                                                             alt="有图" title="有图"/></c:if>
               </em>
             </span>
                            </a>
                        </li>
                    </c:forEach>

                </ul>

                <div class="clear"></div>
            </div>


        <div class="clear"></div>
    </form>
    <div class="sides mt_15">
        <div class="release-but mb_15"><a href="javascript:void(0)" target="_blank" onclick="addMsg()"><i
                class="lee-ico lee-fb"></i> &nbsp; 发布供应</a></div>
        <div class="release-but mb_15"><a href="/netKefuController/toKefu.do" target="_blank"><i
                class="lee-ico lee-fb"></i> &nbsp; 客服中心</a></div>
        <div class="ad2">


            <a href="../html/download.html" target="_blank" title="花木通app" rel="nofollow">
                <img src="../hmt/images/2C604DU858ChRkRlcHTCeAU9-hAAHy19HEc7E108.jpg" alt="花木通app" width="216"
                     height="353">
            </a>


        </div>
        <div class="sides-hot mtb_15">
            <h2>热门信息</h2>
            <ul>
                <c:forEach items="${listsHot}" var="e" varStatus="st">
                    <li>
                        <c:if test="${e.mm_msg_type=='0'}"><em class="hot">[求购]</em></c:if>
                        <c:if test="${e.mm_msg_type=='1'}"><em>[供应]</em></c:if>
                        <h3><a target="_blank" href="javascript:void(0)"
                               onclick="showDetail('${e.mm_msg_id}')">${e.mm_msg_title}</a></h3>

                        <p></p>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <div class="page p_30 mb_10 tr">
        <center>
            <c:if test="${is_login=='1'}">
                <input type="hidden" id="pageCount" value="6443">
                <input type="hidden" name="size" id="size" value="${query.size}">
                <a href="javascript:void(0);" onclick="nextPage('1')">第一页 </a>
                <a href="javascript:void(0);" onclick="nextPage('${page.page-1}')">上一页</a>
                <a href="javascript:void(0);" onclick="nextPage('${page.page+1}')">下一页</a>
                <a href="javascript:void(0);" onclick="nextPage('${page.pageCount}')">最后页</a>
                <span>跳到</span>
        <span><input type="text" id="index" name="index" value="${page.page}"
                     autocomplete="off" maxlength="6"
                     value="${page.page}"
                     onpaste="return false" style="text-align:center;"></span>
                <span>页 </span>
                <span><button type="button" onclick="searchIndex(event, '${page.page}')">GO</button></span>
            </c:if>
            <c:if test="${is_login=='0'}">
                <a class="index-button" href="javaScript:void(0)" onclick="login()">登录查看更多信息</a>
            </c:if>
        </center>
    </div>

</div>
<!--内容 end-->

<jsp:include page="footer.jsp" flush="true"/>

<script src="../hmt/js/home.js" type="text/javascript"></script>
<script src="../hmt/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<!--首页右侧焦点图调用js-->
<!--搜索调用js 会将logo链接至生产-->
<script src="../hmt/js/top_foot.js" type="text/javascript"></script>
<script src="../hmt/js/vegetable.js" type="text/javascript"></script>
<!--蔬菜二级类目调用js--
</html>-->
</body>

<script>
    function reg() {
        //注册页面跳转
        window.location.href = "/netRegController/toReg.do";
    }
    function toPage(_url, _page) {
        if (_page != '') {
            window.location.href = _url + "?page=" + _page;
        } else {
            window.location.href = _url;
        }
    }
    function favourClick(_mm_msg_id) {
        //先判断是否登录
        var is_login = $("#is_login").val();
        if (is_login == 1) {
            //登陆了
            var mm_emp_id = $("#mm_emp_id").val();
            var accessToken = $("#accessToken").val();
            $.ajax({
                cache: true,
                type: "POST",
                url: "/saveFavour.do",
                data: {"mm_msg_id": _mm_msg_id, "accessToken": accessToken, "mm_emp_id": mm_emp_id},
                async: false,
                success: function (_data) {
                    var data = $.parseJSON(_data);
                    if (data.success) {
                        alert("收藏成功");
                    } else {
                        var _case = {1: "收藏失败", 2: "已经收藏，不能重复收藏！", 9: "账号过期，请重新登录！"};
                        alert(_case[data.code])
                    }
                }
            });
        } else {
            //没登陆
            alert("请先登录");
        }
    }

    function showDetail(_mm_msg_id) {
        window.location.href = "/netRecordController/toDetail.do?mm_msg_id=" + _mm_msg_id;
    }

    function login() {
        //登录页面跳转
        window.location.href = "/netLoginController/toLogin.do";
    }
    function selectPro() {
        //页面跳转
        window.location.href = "/webvSelectProvinceController/toSelectProvince.do";
    }

    function addMsg() {
        var is_login = $("#is_login").val();
        if (is_login == 1) {
            //登陆了
            if (${emp.is_upate_profile == '1'}) {
                window.location.href = "/netAddRecordController/toAddRecord.do";
            } else {
                window.location.href = "/webvProfile/toUpdateProfile.do";
            }

        } else {
            //登录页面跳转
            window.location.href = "/netLoginController/toLogin.do";
        }
    }
</script>

<script type="text/javascript" charset="UTF-8">
    function searchIndex(e) {
        if (e.keyCode != 13) return;
        var _index = $("#index").val();
        var page = parseInt(_page);
        var size = $("#size").val();
        var mm_msg_type = $("#mm_msg_type").val();
        var countryid = $("#countryid").val();
        if (_index <= ${page.pageCount} && _index >= 1) {
            window.location.href = "/netGuanzhuController/guanzhuArea.do?page=" + page + "&size=" + size + "&countryid=" + countryid + "&mm_msg_type=" + mm_msg_type+ "&_t=" + new Date().getTime();
        } else {
            alert("请输入1-${page.pageCount}的页码数");
        }
    }

    function searchChange() {
        var size = $("#size").val();
        var mm_msg_type = $("#mm_msg_type").val();
        var countryid = $("#countryid").val();
        window.location.href = "/netGuanzhuController/guanzhuArea.do?page=1" + "&size=" + size + "&countryid=" + countryid + "&mm_msg_type=" + mm_msg_type+ "&_t=" + new Date().getTime();
    }


    function nextPage(_page) {
        var page = parseInt(_page);
        var size = $("#size").val();
        var mm_msg_type = $("#mm_msg_type").val();
        var countryid = $("#countryid").val();
        addCookie("contract_size", size, 36);
        if ((page <= ${page.pageCount} && page >= 1)) {
            window.location.href = "/netGuanzhuController/guanzhuArea.do?page=" + page + "&size=" + size + "&countryid=" + countryid + "&mm_msg_type=" + mm_msg_type+ "&_t=" + new Date().getTime();
        } else {
            alert("请输入1-${page.pageCount}的页码数");
        }
    }

    function gzClickArea(_countryid) {
        var size = $("#size").val();
        var mm_msg_type = $("#mm_msg_type").val();
        window.location.href = "/netGuanzhuController/guanzhuArea.do?page=1" + "&size=" + size + "&countryid=" + _countryid + "&mm_msg_type=" + mm_msg_type+ "&_t=" + new Date().getTime();
    }

    function quiteClick() {
        //退出
        $.ajax({
            cache: true,
            type: "POST",
            url: "/netLoginController/toQuite.do",
            data: {},
            async: false,
            success: function (_data) {
                var data = $.parseJSON(_data);
                if (data.success) {
                    alert("您已退出账号，请重新登录！");
                    window.location.href = "/netLoginController/toLogin.do";
                } else {
                    var _case = {1: "退出账号失败！", 9: "账号过期，请重新登录！"};
                    alert(_case[data.code])
                }
            }
        });
    }
</script>

</html>

