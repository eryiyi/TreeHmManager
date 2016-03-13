<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通更新密码</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_更新密码"  />
	<meta property="og:description" content="花木通_更新密码" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<!-- HEADING -->
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
			<h1 class="head-title">更新密码</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content w85">
		<div class="input-group-regist"><span>原始密码</span><input type="text" placeholder="请输入原始密码" id="pwr" ></div>
		<%--<div class="input-group-regist verify">--%>
			<%--<span>验证码</span>--%>
			<%--<a class="fill-orange radius">获取验证码</a>--%>
			<%--<input type="number">--%>
		<%--</div>--%>
		<div class="input-group-regist"><span>新密码</span><input type="password" placeholder="请输入密码" id="mm_emp_password"></div>
		<div class="input-group-regist"><span>确认密码</span><input type="password" placeholder="请输入确认密码" id="mm_emp_surepwr"></div>
		<button class="button fill-green mt6 w10 mb5 t-sh" onclick="findPwr()">提交</button>
	</div>
	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvRecommend/toRecommend.do','1')" class="recommend"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvServiceController/toService.do','1')" class="mine mine-active"></a>
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

	function findPwr(){
		var pwr = $("#pwr").val();
		var mm_emp_password = $("#mm_emp_password").val();
		var mm_emp_surepwr = $("#mm_emp_surepwr").val();
		if(pwr.replace(/\s/g, '') == ''){
			alert("原始密码不能为空");
			return ;
		}

		if(mm_emp_password.replace(/\s/g, '') == ''){
			alert("密码不能为空");
			return ;
		}
		if(mm_emp_password.length>18 || mm_emp_password.length<6){
			alert("密码长度在6到18为之间");
			return ;
		}
		if(mm_emp_surepwr.replace(/\s/g, '') == ''){
			alert("确认密码不能为空");
			return ;
		}
		if(mm_emp_password != mm_emp_surepwr){
			alert("两次输入密码不一致，请重新输入");
			return;
		}
		$.ajax({
			cache: true,
			type: "POST",
			url:"/webvUpdatePwrController/findPwr.do",
			data:{
				"mm_emp_mobile":pwr,
				"mm_emp_password":mm_emp_password

			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("修改密码成功，请重新登陆");
					//登录页面跳转
					window.location.href="/webvLoginController/toLogin.do";
				}else{
					var _case = {1:"更新密码失败",2:"原始密码错误"};
					alert(_case[data.code])
				}
			}
		});
	}
</script>
</html>