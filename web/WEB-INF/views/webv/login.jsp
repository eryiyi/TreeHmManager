<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通登录</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_登录"  />
	<meta property="og:description" content="花木通_登录" />
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
	<link rel="stylesheet" href="/css/login.css">

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

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<!-- HEADING -->
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
			<h1 class="head-title">登录</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content w85">
		<div class="input-group-icon phone">
			<img src="/img/phone.svg" alt="手机">
			<input placeholder="手机号" type="text" id="mobile" name="mobile">
		</div>
		<div class="input-group-icon password">
			<img src="/img/lock.svg" alt="密码">
			<input placeholder="密码" type="password" id="pwr" name="pwr">
		</div>

		<button class="mt4 w10 fill-green" type="submit" onclick="login()">登录</button>
		<div class="regist clearfix">
			<a href="javaScript:void(0)" onclick="reg()">注册</a>
			<a href="javaScript:void(0)" onclick="findpwr()">找回密码</a>
		</div>
	</div>
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

	function reg(){
		//注册页面跳转
		window.location.href="/webvRegController/toReg.do";
	}

	function findpwr(){
		//找回密码页面跳转
		window.location.href="/webvFindPwrController/toFindPwr.do";
	}

	function login(){
		//登录
		var username = $("#mobile").val();
		var password = $("#pwr").val();

		if(username.replace(/\s/g, '') == ''){
			alert("手机号不能为空");
			return;
		}
		if(password.replace(/\s/g, '') == ''){
			alert("密码不能为空");
			return;
		}
		$.ajax({
			cache: true,
			type:"POST",
			url:"/webvLoginController/login.do",
			data:{"username":username, "password":password},
			async: false,
			success:function(_data){
				var data = $.parseJSON(_data);
				if(data.success){
					window.location.href = "/webv/toIndex.do";
				}else{
					var _case = {1:"该用户不存在", 2:"密码不正确", 3:"该用户被禁用了，请联系客服", 4:"该用户尚未审核，请联系客服", 5:"手机号不能为空",6:"密码不能为空",7:"登录失败"};
					alert(_case[data.code])
				}
			}
		});

	}
</script>
</html>