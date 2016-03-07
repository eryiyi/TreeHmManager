<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通找回密码</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_找回密码"  />
	<meta property="og:description" content="花木通_找回密码" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link href="/plugins/bootstrap/bootstrap.css" rel="stylesheet">
	<link href="/css/cat.css" rel="stylesheet">
	<link href="/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
	<link href="/plugins/xcharts/xcharts.min.css" rel="stylesheet">
	<link href="/plugins/select2/select2.css" rel="stylesheet">
	<link href="/plugins/justified-gallery/justifiedGallery.css" rel="stylesheet">
	<link href="/css/style_v2.css" rel="stylesheet">
	<link href="/plugins/chartist/chartist.min.css" rel="stylesheet">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">

	<script src="/js/jquery.min.js"></script>
	<script src="/plugins/jquery/jquery.min.js"></script>
	<script src="/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="/plugins/bootstrap/bootstrap.min.js"></script>
	<script src="/plugins/justified-gallery/jquery.justifiedGallery.min.js"></script>
	<script src="/plugins/tinymce/tinymce.min.js"></script>
	<script src="/plugins/tinymce/jquery.tinymce.min.js"></script>
	<script src="/js/devoops.js"></script>
	<script src="/js/china2.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script src="/js/validation.js"></script>
	<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
	<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<!-- HEADING -->
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="pics/tree_icons_back.png" alt=""></a>
			<h1 class="head-title">找回密码</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<form action="" class="content w85">
		<div class="input-group-regist"><span>手机号</span><input type="password" ></div>
		<div class="input-group-regist verify">
			<span>验证码</span>
			<a class="fill-orange radius">获取验证码</a>
			<input type="number">
		</div>
		<div class="input-group-regist"><span>新密码</span><input type="password" ></div>
		<div class="input-group-regist"><span>确认密码</span><input type="password"></div>
		<button class="button fill-green mt6 w10 mb5 t-sh">提交</button>
	</form>
	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvRecommend/toRecommend.do','1')" class="recommend"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvProfile/toProfile.do','1')" class="mine"></a>
	</div>
	<!-- TOOLBAR -->
</div>
</body>
<script>
	function toPage(_url, _page){
		if(_page != ''){
			window.location.href=_url+"?page="+_page;
		}else{
			window.location.href=_url;
		}
	}

</script>
</html>