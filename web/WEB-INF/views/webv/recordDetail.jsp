<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>${recordVO.mm_emp_company}${recordVO.mm_msg_title}${recordVO.mm_msg_title}</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_详细信息"  />
	<meta property="og:description" content="花木通_详细信息" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/index.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>

</head>
<body style="background-color: #fff;">
<div class="container">
	<!-- HEADING -->
	<div class="heading">
		<!-- HEADING -->
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
			<h1 class="head-title">${recordVO.mm_emp_company}&nbsp;&nbsp;${recordVO.mm_emp_nickname}</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<input type="hidden" id="is_login" name="is_login" value="${is_login}">
		<input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">
		<input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${recordVO.mm_emp_id}">
		<div class="item">
			<div class="item-heading">
				<a href="/webvProfile/toProfile.do?mm_emp_id=${recordVO.mm_emp_id}"  class="left clearfix">
					<img src="${recordVO.mm_emp_cover}" alt="" class="head-pic">
					<div class="detail">
						<h1 class="company">${recordVO.mm_emp_company} &nbsp;&nbsp;${recordVO.mm_emp_nickname}</h1>
						<h3 class="time">${recordVO.dateline}</h3>
					</div>
				</a>
				<div class="right">
					<div class="top clearfix">
						<c:if test="${recordVO.is_miaomu=='1'}"><img src="/img/tree_icons_trust.png" alt=""></c:if>
						<c:if test="${recordVO.is_chengxin=='1'}"><img src="/img/tree_icons_group.png" alt=""></c:if>
					</div>
					<div class="botton clearfix">
						<c:if test="${recordVO.mm_level_num=='0'}"><img src="/img/tree_icons_star_1.png" alt=""></c:if>
						<c:if test="${recordVO.mm_level_num=='1'}"><img src="/img/tree_icons_star_2.png" alt=""></c:if>
						<c:if test="${recordVO.mm_level_num=='2'}"><img src="/img/tree_icons_star_3.png" alt=""></c:if>
						<c:if test="${recordVO.mm_level_num=='3'}"><img src="/img/tree_icons_star_4.png" alt=""></c:if>
						<c:if test="${recordVO.mm_level_num=='4'}"><img src="/img/tree_icons_star_5.png" alt=""></c:if>
					</div>
				</div>
			</div>
			<div class="item-content">
				<p>${recordVO.mm_msg_title}${recordVO.mm_msg_content}</p>
				<div class="img-holder clearfix">

					<c:forEach items="${pics}" var="e" varStatus="st">
						<a href="javaScript:void(0)"><img src="${e}" alt=""></a>
					</c:forEach>

				</div>
			</div>
			<div class="item-footer clearfix">
				<%--<a class="button-share"></a>--%>
				<a class="button-fav" href="javaScript:void(0)" onclick="favourClick('${recordVO.mm_msg_id}')"></a>
				<a href="javaScript:void(0)" onclick="reportClick('${recordVO.mm_emp_id}','${recordVO.mm_msg_id}')" class="button-report"></a>
			</div>
			<a href="tel:(${recordVO.mm_emp_mobile}"  class="button-phone-big clearfix">
				<%--<img src="/img/tree_button_icon_phone.png" alt="" class="phone-icon">--%>
				<h2 class="phone-number">${recordVO.mm_emp_nickname} ${recordVO.mm_emp_mobile}</h2>
			</a>
		</div>
	</div>
	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvTopController/toTop.do','1')" class="recommend"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvServiceController/toService.do','1')" class="mine"></a>
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
	function favourClick(_mm_msg_id){
		//先判断是否登录
		var is_login = $("#is_login").val();
		if(is_login == 1){
			//登陆了
			var mm_emp_id = $("#mm_emp_id").val();
			var accessToken = $("#accessToken").val();
			$.ajax({
				cache: true,
				type:"POST",
				url:"/saveFavour.do",
				data:{"mm_msg_id":_mm_msg_id, "accessToken":accessToken, "mm_emp_id":mm_emp_id},
				async: false,
				success:function(_data){
					var data = $.parseJSON(_data);
					if(data.success){
						alert("收藏成功");
					}else{
						var _case = {1:"收藏失败", 2:"已经收藏，不能重复收藏！",9:"账号过期，请重新登录！"};
						alert(_case[data.code])
					}
				}
			});
		}else{
			//没登陆
			alert("请先登录");
		}
	}


	function telClick(_mobile){
		//先判断是否登录
		var is_login = $("#is_login").val();
		if(is_login == 1){
			//登陆了
			alert(_mobile);
		}else{
			//没登陆
			alert("请先登录");
		}
	}

	function login(){
		//登录页面跳转
		window.location.href="/webvLoginController/toLogin.do";
	}

	function reportClick(_mm_emp_id,_mm_msg_id){
		//举报
		window.location.href="/webvReportController/toReport.do?mm_msg_id="+_mm_msg_id+"&mm_emp_id="+_mm_emp_id;
	}
</script>


</html>