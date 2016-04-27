<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通_地区选择</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_地区选择"  />
	<meta property="og:description" content="花木通_地区选择" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">
	<link rel="stylesheet" href="/css/location_select.css">

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
			<h1 class="head-title">地区选择</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content w95">


		<c:if test="${is_guanzhu=='0'}"><span>您已经申请了关注区域！请等待管理员审核</span></c:if>
		<c:if test="${is_guanzhu=='1'}">
			<ul class="location-list clearfix">
				<c:forEach items="${areaNames}" var="e" varStatus="st">
					<li>
						<a href="/webvGuanzhuController/guanzhuArea.do?page=1">
							<span class="list-name">${e}</span>
						</a>
					</li>
				</c:forEach>
			</ul>

		</c:if>
		<c:if test="${is_guanzhu=='2'}"><span>您申请的关注区域未通过审核，请联系客服！</span></c:if>
		<c:if test="${is_guanzhu=='3'}"><span>您尚未申请关注区域，请设置关注区域！</span></c:if>



		<ul class="location-list clearfix">
			<c:forEach items="${list}" var="e" varStatus="st">
				<li>
					<a href="/webvSelectProvinceController/toSelectCity.do?father=${e.provinceID}">
						<span class="list-name">${e.province}</span>
						<span class="list-num">${e.msgNum}</span>
					</a>
				</li>
			</c:forEach>
		</ul>


	</div>
</div>
</body>
</html>