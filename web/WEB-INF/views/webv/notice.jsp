<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通公告</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_公告"  />
	<meta property="og:description" content="花木通公告" />
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
	<script language="javascript" src="/js/jquery.js"></script>
	<style type="text/css">
		.hide{
			display:none;
		}
		.show{
			display:inline-block;
		}
	</style>

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<a href="javascript:history.back()()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
		<h1 class="head-title">公告</h1>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<c:forEach items="${list}" var="e" varStatus="st">
			<div class="item">
				<div class="item-heading clearfix">
					<a href="/webvNoticeController/toDetail.do?id=${e.mm_notice_id}" class="left clearfix">
						<div class="detail">
							<h1 class="company">${e.mm_notice_title}</h1>
							<h3 class="time">${e.mm_notice_content}</h3>
						</div>
					</a>
					<div class="right">
						<div class="top clearfix">
							<h3 class="time">${e.dateline}</h3>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<a href="/html/download.html" class="warning" target="_blank">下载安卓APP可以查看更多内容...</a>

		<!--分页信息，页面跳转-->
		<div class="page clearfix">
			<div class="left hide-phone">
				<a><span>共${page.count}条/${page.pageCount}页</span></a>
				<a>每页显示
					<select name="size" id="size" onchange="nextPage('1')">
						<option value="10" ${query.size==10?'selected':''}>10</option>
						<option value="20" ${query.size==20?'selected':''}>20</option>
						<option value="30" ${query.size==30?'selected':''}>30</option>
						<option value="100" ${query.size==100?'selected':''}>100</option>
					</select>条
				</a>
			</div>
			<div class="right">
				<c:choose >
					<c:when test="${page.page == 1}">
						<a href="javascript:void(0)">首页</a>
						<a href="javascript:void(0)">《</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:void(0);" onclick="nextPage('1')">首页</a>
						<a href="javascript:void(0);" onclick="nextPage('${page.page-1}')">《</a>
					</c:otherwise>
				</c:choose>
				<a>第<input type="text" id="index" name="index" onkeyup="searchIndex(event)" value="${page.page}">页</a>
				<c:choose>
					<c:when test="${page.page == page.pageCount}">
						<a href="javascript:void(0)">》</a>
						<a href="javascript:void(0)">末页</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:void(0);" onclick="nextPage('${page.page+1}')">》</a>
						<a href="javascript:void(0);" onclick="nextPage('${page.pageCount}')">末页</a>
					</c:otherwise>
				</c:choose>
			</div>
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
		if(_index <= ${page.pageCount} && _index >= 1){
			window.location.href="/webvNoticeController/list.do?page="+page+"&size="+size;
		}else{
			alert("请输入1-${page.pageCount}的页码数");
		}
	}

	function nextPage(_page) {
		var page = parseInt(_page);
		var size = $("#size").val();
		addCookie("contract_size", size, 36);
		if ((page <= ${page.pageCount} && page >= 1)) {
			window.location.href="/webvNoticeController/list.do?page="+page+"&size="+size;
		} else {
			alert("请输入1-${page.pageCount}的页码数");
		}
	}
</script>
<script type="text/javascript">
	(function (window, undefined){
		var currentHash;
		function decodeChineseWords(params) {
			if (params["cn"] == undefined || params["cn"] == "") {
				return;
			}
			var cns = params["cn"].split(","), i;
			for (i = 0; i < cns.length; i++) {
				params[cns[i]] = decodeURIComponent(params[cns[i]]);
			}
		}

		function checkHash() {
			var newHash = window.location.hash;
			if (newHash == "") {
//                window.location.hash = "#module=main";
				return;
			}
			if (newHash == currentHash) return;
			currentHash = newHash;
			var paramsString = currentHash.substring(1);
			var paramsArray = paramsString.split("&");
			var params = {};
			for (var i = 0; i < paramsArray.length; i++) {
				var tempArray = paramsArray[i].split("=");
				params[tempArray[0]] = tempArray[1];
			}
			var _url = params["module"].replace(/\./g, "/") + ".do?_t=" + new Date().getTime();
			delete params["module"];
			decodeChineseWords(params);
			$.ajax({url: _url, type: "post", data: params, success: function (data) {
				var editor;
				while ((editor = Util.editors.shift()) != undefined) {
					editor.destroy();
				}
				$("#content").html(data);
			}});
		}
		window.setInterval(checkHash, 100);
	})(window);

</script>

</html>