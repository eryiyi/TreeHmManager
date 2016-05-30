<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>花木通_名片分享</title>
    <meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会"/>
    <meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务"/>
    <meta property="og:title" content="花木通_名片分享"/>
    <meta property="og:description" content="花木通_名片分享"/>
    <meta name="author" content="花木通"/>
    <meta name="Copyright" content="花木通版权所有"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="/img/logo.png">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/mingpianshare.css">

</head>
<body>
<div class="container clearfix">
    <div class="share-holder">
        <img src="${empVO.ad_pic}" alt=""/>
    </div>
    <div class="side">
        <div class="side-content">
            <div class="pic-holder">
                <img class="cqr" src="/img/mobile_erweima.png" alt=""/>
            </div>
            <a class="btn-download" href="">长按识别图中二维码-安卓版</a>
        </div>
    </div>
    <div class="side">
        <div class="side-content">
            <div class="pic-holder">
                <img class="cqr" src="/img/weixin_erweima.png" alt=""/>
            </div>
            <a class="btn-download" href="">长按识别图中二维码-微信版</a>
        </div>
    </div>
</div>
</body>
</html>
