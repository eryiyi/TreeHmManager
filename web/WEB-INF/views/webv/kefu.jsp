<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>花木通_客服中心</title>
    <meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会"/>
    <meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务"/>
    <meta property="og:title" content="花木通_客服中心"/>
    <meta property="og:description" content="花木通_客服中心"/>
    <meta name="author" content="花木通"/>
    <meta name="Copyright" content="花木通版权所有"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="/img/logo.png">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/common_2.css">
    <link rel="stylesheet" href="/css/contact.css">

    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/md5.js"></script>
    <script type="text/javascript" src="/js/cookie.js"></script>
    <%--<script type="text/javascript" src="/js/ajaxfileupload.js"></script>--%>
    <script type="text/javascript" src="/js/Util.js"></script>
    <script type="text/javascript" src="/js/validation.js"></script>
    <script type="text/javascript" src="/js/PictureUpload.js"></script>
    <style type="text/css">

        ul {
            list-style: none;
        }

        .Menubox {
            width: 100%;
            /*	background:url(3.gif);*/
            height: 28px;
            line-height: 28px;
        }

        .Menubox ul {
            margin: 0px;
            padding: 0px;
            list-style: none;
            width: 100%;
        }

        .Menubox li {
            padding: 10px 0;
            float: left;
            display: block;
            cursor: pointer;
            text-align: center;
            color: #949694;
            font-weight: bold;
            width: 50%;
        }

        .Menubox li.hover {
            padding: 10px 0;
            background: #4ABA67;
            color: #fff;
            font-weight: bold;
            height: 27px;
            line-height: 27px;
        }

        .Contentbox {
            clear: both;
            margin-top: 0px;
            border-top: none;
            height: 181px;
            text-align: center;
            width: 100%;
        }

        -->
    </style>

    <script>
        <!--
        /*更换显示样式*/
        function setTab(name, cursel, n) {
            for (i = 1; i <= n; i++) {
                var menu = document.getElementById(name + i);
                var con = document.getElementById("con_" + name + "_" + i);
                menu.className = i == cursel ? "hover" : "";
                con.style.display = i == cursel ? "block" : "none";
            }
        }
        //-->
    </script>


</head>
<body>
<div class="container">
    <!-- HEADING -->
    <div class="heading clearfix">
        <a href="javascript:history.back()()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>

        <h1 class="head-title">客服中心</h1>
    </div>
    <!-- CONTENT -->
    <%--<div class="content">
        <ul class="contact-list">

                <c:forEach items="${list}" var="e" varStatus="st">
                    <li>
                        <div class="contact clearfix">
                            <div class="left">
                                <h1 class="name">客服中心</h1>
                                &lt;%&ndash;<h3 class="company">${e.mm_fuwu_content}</h3>&ndash;%&gt;
                            </div>
                            <div class="right">
                                <a href="tel:${e.mm_tel}" class="button-phone-big clearfix">
                                    <img src="/img/tree_button_icon_phone.png" alt="" class="phone-icon">
                                    <h2 class="phone-number">${e.mm_tel}</h2>
                                </a>
                            </div>
                        </div>
                        <div class="duty"></div>
                    </li>
                </c:forEach>

        </ul>
    </div>--%>
    <%--客服分为本地客服与全国客服--%>
    <div class="content">
        <input type="hidden" id="isType" name="isType" value="${query.isType}">
        <div class="Menubox">
            <ul>
                <c:if test="${query.isType=='0'}">
                    <li id="one1" onclick="searchMine('0')" class="hover" style="width: 50%">本地</li>
                    <li id="one2" onclick="searchMine('1')"  style="width: 49%">全国</li>
                </c:if>

                <c:if test="${query.isType=='1'}">
                    <li id="one1" onclick="searchMine('0')" style="width: 50%">本地</li>
                    <li id="one2" onclick="searchMine('1')" class="hover" style="width: 49%">全国</li>
                </c:if>
            </ul>
        </div>
        <div class="Contentbox">
            <ul class="phones">
                <c:forEach items="${list}" var="e" varStatus="st">
                    <li class="phone-list">
                        <div class="pic-holder"><img src="../../../img/btn_phone.png" alt=""/></div>
                        <div class="info">
                            <c:if test="${query.isType=='0'}">
                                <h2 class="name">${e.provinceName}${e.cityName}${e.areaName}</h2>
                            </c:if>
                            <c:if test="${query.isType=='1'}">
                                <h2 class="name">${e.mm_tel}</h2>
                            </c:if>
                            <h3 class="address">${e.mm_tel}</h3>
                        </div>
                        <div class="phone"><a href="tel:${e.mm_tel}" ><img src="../../../img/btn_phone.png" alt=""/></a></div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="toolbar">
            <a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
            <a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
            <a href="javaScript:void(0)" onclick="toPage('/webvTopController/toTop.do','1')" class="recommend"></a>
            <a href="javaScript:void(0)" onclick="toPage('/webvServiceController/toService.do','1')"
               class="mine mine-active"></a>
        </div>
    </div>
</body>
<script>
    function toPage(_url, _page) {
        if (_page != '') {
            window.location.href = _url + "?page=" + _page;
        } else {
            window.location.href = _url;
        }
    }

    function searchMine(_isType){
        //查询本地 全国
        window.location.href = "/webvKefuController/toKefu.do?isType=" + _isType + "&_t=" + new Date().getTime();
    }
</script>
</html>