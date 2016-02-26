<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通</title>
	<meta name="description" content="description">
	<meta name="author" content="DevOOPS">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
	<script src="/js/jquery.min.js"></script>
	<script src="/js/Util.js"></script>
	<script src="/js/validation.js"></script>
	<script src="/js/md5.js"></script>
	<script src="/js/ajaxfileupload.js"></script>
	<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>


	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/index.css">

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<div class="icon-group">
			<i class="icon"></i>
			<span class="location">惠民县</span>
		</div>
		<form action="" class="search-bar clearfix">
			<input type="text" placeholder="输入要搜索的内容...">
			<button>搜索</button>
		</form>
		<button class="new"></button>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<a href="item_detail.html" class="item">
			<div class="item-heading clearfix">
				<div class="left clearfix">
					<img src="pics/tree_user_profile.png" alt="" class="head-pic">
					<div class="detail">
						<h1 class="company">文采苗木 王景</h1>
						<h3 class="time">01-04 12:34</h3>
					</div>
				</div>
				<div class="right">
					<div class="top clearfix">
						<img src="pics/tree_icons_trust.png" alt="">
						<img src="pics/tree_icons_group.png" alt="">
					</div>
					<div class="botton clearfix">
						<img src="pics/tree_icons_star_5.png" alt="">
					</div>
				</div>
			</div>
			<div class="item-content">
				山东省惠民县苗木协会现有会员760家，拥有苗木基地24000余亩，苗木品种多，规格全，质量优。
				惠民县苗木是苗木生产企业与科研单位联合的纽带，是苗木生产者与广大用户相联系的桥梁，是苗木行业信息交流平台，是惠民县的苗木购销中心，协会愿竭诚为广大用户服务。
			</div>
			<div class="item-footer clearfix">
				<button class="read-status-unread"></button>
				<button class="button-share"></button>
				<button class="button-phone"></button>
				<button class="button-pic"></button>
			</div>
		</a>
		<a href="item_detail.html" class="item">
			<div class="item-heading clearfix">
				<div class="left clearfix">
					<img src="pics/tree_user_profile.png" alt="" class="head-pic">
					<div class="detail">
						<h1 class="company">文采苗木 王景</h1>
						<h3 class="time">01-04 12:34</h3>
					</div>
				</div>
				<div class="right">
					<div class="top clearfix">
						<img src="pics/tree_icons_trust.png" alt="">
						<img src="pics/tree_icons_group.png" alt="">
					</div>
					<div class="botton clearfix">
						<img src="pics/tree_icons_star_5.png" alt="">
					</div>
				</div>
			</div>
			<div class="item-content">
				山东省惠民县苗木协会现有会员760家，拥有苗木基地24000余亩，苗木品种多，规格全，质量优。
				惠民县苗木是苗木生产企业与科研单位联合的纽带，是苗木生产者与广大用户相联系的桥梁，是苗木行业信息交流平台，是惠民县的苗木购销中心，协会愿竭诚为广大用户服务。
			</div>
			<div class="item-footer clearfix">
				<button class="read-status-readed"></button>
				<button class="button-share"></button>
				<button class="button-phone"></button>
				<button class="button-pic"></button>
			</div>
		</a>
		<a href="about.html" class="warning">下载客户端以查看更多内容...</a>

	</div>
	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex','')" class="buy buy-active"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell','')" class="sell"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvRecommend/toRecommend','')" class="recommend"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvProfile/toProfile','')" class="mine"></a>
	</div>
</div>

</body>

<script>

	function toPage(_url, _page){
		if(_page != ''){
			window.location.href="#module="+_url+"&page="+_page;
		}else{
			window.location.href="#module="+_url;
		}
	}
</script>
</html>