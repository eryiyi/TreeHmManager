<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通_附近商家</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_附近商家"  />
	<meta property="og:description" content="花木通_附近商家" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">
	<link rel="stylesheet" href="/css/index.css">

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
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
			<h1 class="head-title">附近商家</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<input type="hidden" id="is_login" name="is_login" value="${is_login}">
		<input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">
		<input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${emp.mm_emp_id}">
		<c:forEach items="${list}" var="e" varStatus="st">
			<div class="item">
				<div class="item-heading clearfix">
					<a href="/webvProfile/toProfile.do?mm_emp_id=${e.mm_emp_id}" class="left clearfix">
						<img src="${e.mm_emp_cover}" alt="" class="head-pic">
						<div class="detail">
							<h1 class="company">${e.mm_emp_company}&nbsp;${e.mm_emp_nickname}</h1>
							<h3 class="time">${e.mm_emp_company_address}</h3>
						</div>
					</a>
					<div class="right">
						<div class="top clearfix">
							<c:if test="${e.is_miaomu=='1'}"><img src="/img/tree_icons_trust.png" alt=""></c:if>
							<c:if test="${e.is_chengxin=='1'}"><img src="/img/tree_icons_group.png" alt=""></c:if>
						</div>
						<div class="botton clearfix">
							<c:if test="${e.mm_level_num=='0'}"><img src="/img/tree_icons_star_1.png" alt=""></c:if>
							<c:if test="${e.mm_level_num=='1'}"><img src="/img/tree_icons_star_2.png" alt=""></c:if>
							<c:if test="${e.mm_level_num=='2'}"><img src="/img/tree_icons_star_3.png" alt=""></c:if>
							<c:if test="${e.mm_level_num=='3'}"><img src="/img/tree_icons_star_4.png" alt=""></c:if>
							<c:if test="${e.mm_level_num=='4'}"><img src="/img/tree_icons_star_5.png" alt=""></c:if>
						</div>
					</div>
				</div>


			</div>
		</c:forEach>

		<%--<c:if test="${is_login=='1'}"><a href="/html/download.html" class="warning" target="_blank">下载客户端以查看更多内容...</a></c:if>--%>
		<%--<c:if test="${is_login=='0'}"><a href="/webvLoginController/toLogin.do" class="warning">请先登录...</a></c:if>--%>
		<%--<c:if test="${is_login=='1'}">--%>

			<%--<div class="page-num clearfix">--%>
				<%--<div class="brief hide-phone">--%>
					<%--<a><span>共${page.count}条/${page.pageCount}页</span></a>--%>
					<%--<a>每页显示--%>
						<%--<select name="size" id="size" onchange="nextPage('1')">--%>
							<%--<option value="10" ${query.size==10?'selected':''}>10</option>--%>
							<%--<option value="20" ${query.size==20?'selected':''}>20</option>--%>
							<%--<option value="30" ${query.size==30?'selected':''}>30</option>--%>
							<%--<option value="100" ${query.size==100?'selected':''}>100</option>--%>
						<%--</select>条--%>
					<%--</a>--%>
				<%--</div>--%>
				<%--<div class="page-nav fr-screen clearfix">--%>
					<%--<c:choose >--%>
						<%--<c:when test="${page.page == 1}">--%>
							<%--<a href="javascript:void(0)">首页</a>--%>
							<%--<a href="javascript:void(0)">《</a>--%>
						<%--</c:when>--%>
						<%--<c:otherwise>--%>
							<%--<a href="javascript:void(0);" onclick="nextPage('1')">首页</a>--%>
							<%--<a href="javascript:void(0);" onclick="nextPage('${page.page-1}')">《</a>--%>
						<%--</c:otherwise>--%>
					<%--</c:choose>--%>
					<%--<a>第<input type="text" id="index" name="index" onkeyup="searchIndex(event)" value="${page.page}">页</a>--%>
					<%--<c:choose>--%>
						<%--<c:when test="${page.page == page.pageCount}">--%>
							<%--<a href="javascript:void(0)">》</a>--%>
							<%--<a href="javascript:void(0)">末页</a>--%>
						<%--</c:when>--%>
						<%--<c:otherwise>--%>
							<%--<a href="javascript:void(0);" onclick="nextPage('${page.page+1}')">》</a>--%>
							<%--<a href="javascript:void(0);" onclick="nextPage('${page.pageCount}')">末页</a>--%>
						<%--</c:otherwise>--%>
					<%--</c:choose>--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</c:if>--%>
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

	function showDetail(_mm_msg_id){
		window.location.href="/webvRecordController/toDetail.do?mm_msg_id="+_mm_msg_id;
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
</script>

<script type="text/javascript" charset="UTF-8">

	function searchIndex(e){
		if(e.keyCode != 13) return;
		var _index = $("#index").val();
		var page = parseInt(_page);
		var size = $("#size").val();
		var keyword = $("#keyword").val();
		if(_index <= ${page.pageCount} && _index >= 1){
			window.location.href="/webv/toIndex.do?page="+page+"&size="+size+"&keyword="+keyword;
		}else{
			alert("请输入1-${page.pageCount}的页码数");
		}
	}

	function nextPage(_page) {
		var page = parseInt(_page);
		var size = $("#size").val();
		var keyword = $("#keyword").val();
		addCookie("contract_size", size, 36);
		if ((page <= ${page.pageCount} && page >= 1)) {
			window.location.href="/webv/toIndex.do?page="+page+"&size="+size+"&keyword="+keyword;
		} else {
			alert("请输入1-${page.pageCount}的页码数");
		}
	}

</script>

</html>