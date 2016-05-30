<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<link rel="stylesheet" href="http://cache.amap.com/lbs/static/main.css?v=1.0"/>
<script type="text/javascript"
        src="http://webapi.amap.com/maps?v=1.3&key=98ec561802a0063ec6d8301ae2321505"></script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <style type="text/css">
        body, html, #container {
            height: 100%;
            margin: 0px
        }
    </style>
    <script type="text/javascript"
            src="http://webapi.amap.com/maps?v=1.3&key=6928be14197e6c629302aa3884084e05"></script>
</head>
<body>
<div id="container" tabindex="0"></div>
<script type="text/javascript">
    var map = new AMap.Map('container', {
        resizeEnable: true,
        zoom: 10,
        center: [${recordVO.lat}, ${recordVO.lng}]
    });
    var marker = new AMap.Marker({
        position: [${recordVO.lat}, ${recordVO.lng}]
    });
    marker.setMap(map);
    map.setCenter(marker.getPosition());

    //    function loadLocationIframe(){
    //        var lat = window.lat;
    //        var lng = window.lnt;
    //        alert(lat + "," + lng);
    //    }
</script>

</body>
</html>
