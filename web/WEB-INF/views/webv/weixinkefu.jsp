<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通_微信客服</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_微信客服"  />
	<meta property="og:description" content="花木通_微信客服" />
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
	<style type="text/css">
		.green {
			color: #008000;
		}
	</style>

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<a href="javascript:history.back()()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
		<h1 class="head-title">微信客服</h1>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<!--修改微信客服样式-->

			<ul class="contact-list">
				<li>
					<div class="contact clearfix">
						<div class="left green">
							<h3 class="phone-number">微信名</h3>
						</div>
						<div class="right green ">
							<h2 class="phone-number">微信号</h2>
						</div>
					</div>
					<div class="duty"></div>
				</li>
				<div style=" height:150px; overflow:auto">
				<c:forEach items="${list}" var="e" varStatus="st">
					<c:if test="${e.mm_weixin_type=='0'}">
						<li>
							<div class="contact clearfix">
								<div class="left">
									<h3 class="phone-number">${e.mm_weixin_name}</h3>
								</div>
								<div class="right">
									<h2 class="phone-number">${e.mm_weixin}</h2>
								</div>
							</div>
							<div class="duty"></div>
						</li>
					</c:if>
				</c:forEach>
				</div>
				</ul>

			<ul class="contact-list" style="margin-top: 20px">
				<li>
					<div class="contact clearfix">
						<div class="left green">
							<h3 class="phone-number">QQ昵称</h3>
						</div>
						<div class="right green">
							<h2 class="phone-number">QQ号</h2>
						</div>
					</div>
					<div class="duty"></div>
				</li>
				<div style=" height:150px; overflow:auto;">
				<c:forEach items="${list}" var="e" varStatus="st">
					<c:if test="${e.mm_weixin_type=='1'}">
						<li>
							<div class="contact clearfix">
								<div class="left">
									<h3 class="phone-number">${e.mm_weixin_name}</h3>
								</div>
								<div class="right">
									<h2 class="phone-number"><a href="tencent://message/?uin=${e.mm_weixin}&Site=&Menu=yes">${e.mm_weixin}</a></h2>
								</div>
							</div>
							<div class="duty"></div>
						</li>
					</c:if>
				</c:forEach>
		</div>
		</ul>
		<div>
			<p style="color: red">*点击QQ号码就能聊天</p>
		</div>
	</div>
	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvTopController/toTop.do','1')" class="recommend"></a>
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

</script>
</html>