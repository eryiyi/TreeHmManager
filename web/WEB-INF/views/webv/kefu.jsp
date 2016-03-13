<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通_客服中心</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_客服中心"  />
	<meta property="og:description" content="花木通_客服中心" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">
	<link rel="stylesheet" href="/css/contact.css">

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
		<a href="javascript:history.back()()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
		<h1 class="head-title">客服中心</h1>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<ul class="contact-list">

				<c:forEach items="${list}" var="e" varStatus="st">
					<li>
						<div class="contact clearfix">
							<div class="left">
								<h1 class="name">客服中心</h1>
								<%--<h3 class="company">${e.mm_fuwu_content}</h3>--%>
							</div>
							<div class="right">
								<a href="javaScript:void(0)" class="button-phone-big clearfix">
									<img src="/img/tree_button_icon_phone.png" alt="" class="phone-icon">
									<h2 class="phone-number">${e.mm_tel}</h2>
								</a>
							</div>
						</div>
						<div class="duty"></div>
					</li>
				</c:forEach>

		</ul>
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
		var mm_emp_mobile = $("#mm_emp_mobile").val();
		var mm_emp_password = $("#mm_emp_password").val();
		var mm_emp_surepwr = $("#mm_emp_surepwr").val();
		if(mm_emp_mobile.replace(/\s/g, '') == ''){
			alert("手机号不能为空");
			return ;
		}
		if(mm_emp_mobile.length != 11){
			alert("手机号格式不正确");
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
			url:"/webvFindPwrController/findPwr.do",
			data:{
				"mm_emp_mobile":mm_emp_mobile,
				"mm_emp_password":mm_emp_password

			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("找回密码成功");
					//登录页面跳转
					window.location.href="/webvLoginController/toLogin.do";
				}else{
					var _case = {1:"找回密码失败",2:""};
					alert(_case[data.code])
				}
			}
		});
	}
</script>
</html>