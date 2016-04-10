<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通金牌榜</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_金牌榜"  />
	<meta property="og:description" content="花木通_金牌榜" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/index.css">

	<link rel="stylesheet" href="/css/glide.core.min.css">
	<link rel="stylesheet" href="/css/glide.theme.min.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>
	<script language="javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/js/jquery_latest.js"></script>
	<script type="text/javascript" src="/js/glide.min.js"></script>

</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<h1 class="head-title">金牌榜</h1>
	</div>
	<!-- CONTENT -->
	<div class="content">
		<c:if test="${listAd !=null && listAd.size() > 0}">
			<div id="Glide" class="glide">
				<div class="glide__wrapper">
					<ul class="glide__track">
						<c:forEach items="${listAd}" var="e" varStatus="st">
							<a href="${e.mm_ad_url}" target="_blank"><li class="glide__slide"><img src="${e.mm_ad_pic}" alt="${e.mm_ad_url}"></li></a>
						</c:forEach>
					</ul>
				</div>
				<div class="glide__bullets"></div>
			</div>
			<script>
				$(function(){
					$('.glide').glide({
						mode:'horizontal',     // 幻灯片走向
						autoplay:5000,         // 自动播放，false为关闭自动播放
						startAt:0,             // 开始于哪个幻灯片
						// paddings:'1rem',       // 幻灯片左右的padding 可以是单位，%
						centered:true,         // 当前幻灯片在slides的中间
						hoverpause:true,       // 鼠标悬停的时候暂停播放
						autoheight:false,      // 设置包裹的slider为当前幻灯片的高度
						keyboard:true,         // 光标方向键使幻灯片左右滑动
						touchDistance:80,      // 最小手指滑动距离，以触发滑动操作
						dragDistance:120,      // 最小鼠标拖动距离，以触发滑动操作
						animationDuration:400 // 动画时间 ms
					});
				})
			</script>
			<!-- GLIDE SLIDE END -->
		</c:if>

		<input type="hidden" id="is_login" name="is_login" value="${is_login}">
		<input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">
		<input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${emp.mm_emp_id}">

		<c:forEach items="${list}" var="e" varStatus="st">
			<div href="javaScript:void(0)"  class="item">
				<div class="item-heading clearfix">
					<a href="/webvProfile/toProfile.do?mm_emp_id=${e.mm_emp_id}"  class="left clearfix">
						<img src="${e.mm_emp_cover}" alt="" class="head-pic">
						<div class="detail">
							<h1 class="company">${e.mm_emp_nickname}</h1>
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
				<a class="item-content" href="/webvProfile/toProfile.do?mm_emp_id=${e.mm_emp_id}">
						${e.mm_emp_company}
						${e.mm_emp_company_detail}
				</a>
				<div class="item-footer clearfix">
					<a s href="tel:${e.mm_emp_mobile}"  class="button-phone"></a>

				</div>
			</div>
		</c:forEach>

		<c:if test="${is_login=='1'}"><a href="/html/download.html" class="warning" target="_blank">下载安卓APP可以查看更多内容...</a></c:if>
		<c:if test="${is_login=='0'}"><a href="/webvLoginController/toLogin.do" class="warning">查看更多信息，请先注册并登录账号...</a></c:if>

		<c:if test="${is_login=='1'}">
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
		</c:if>

	</div>
	<!-- TOOLBAR -->
	<div class="toolbar">

		<c:if test="${is_login=='1'}">
			<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
			<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
			<a href="javaScript:void(0)" onclick="toPage('/webvTopController/toTop.do','1')" class="recommend recommend-active"></a>
			<a href="javaScript:void(0)" onclick="toPage('/webvServiceController/toService.do','1')" class="mine"></a>
		</c:if>
		<c:if test="${is_login=='0'}">
			<a href="javaScript:void(0)" id="cd-popup-trigger1" class="buy"></a>
			<a href="javaScript:void(0)" id="cd-popup-trigger2" class="sell"></a>
			<a href="javaScript:void(0)" id="cd-popup-trigger3" class="recommend recommend-active"></a>
			<a href="javaScript:void(0)" id="cd-popup-trigger4" class="mine"></a>
		</c:if>


	</div>
	<!-- TOOLBAR -->
</div>

<link rel="stylesheet" href="/css/dialog_reset.css"> <!-- CSS reset -->
<link rel="stylesheet" href="/css/dialog_style.css"> <!-- Resource style -->
<script src="/js/dialog_main.js"></script> <!-- Resource jQuery -->

<div class="cd-popup" role="alert">
	<div class="cd-popup-container">
		<p>请先注册或联系管理员</p>
		<ul class="cd-buttons">
			<li><a href="javaScript:void(0)" onclick="reg()">注册</a></li>
			<li><a href="javaScript:void(0)" onclick="login()">登录</a></li>
		</ul>
		<a href="javaScript:void(0)" class="cd-popup-close img-replace">关闭</a>
	</div> <!-- cd-popup-container -->
</div> <!-- cd-popup -->

</body>

<script>
	function toPage(_url, _page){
		if(_page != ''){
			window.location.href=_url+"?page="+_page;
		}else{
			window.location.href=_url;
		}
	}

	function showDetail(_mm_msg_id){
		window.location.href="/webvRecordController/toDetail.do?mm_msg_id="+_mm_msg_id;
	}

	function login(){
		//登录页面跳转
		window.location.href="/webvLoginController/toLogin.do";
	}
	function reg(){
		//注册页面跳转
		window.location.href="/webvRegController/toReg.do";
	}

</script>

<script type="text/javascript" charset="UTF-8">

	function searchIndex(e){
		if(e.keyCode != 13) return;
		var _index = $("#index").val();
		var page = parseInt(_page);
		var size = $("#size").val();
		if(_index <= ${page.pageCount} && _index >= 1){
			window.location.href="/webvTopController/toTop.do?page="+page+"&size="+size;
		}else{
			alert("请输入1-${page.pageCount}的页码数");
		}
	}

	function nextPage(_page) {
		var page = parseInt(_page);
		var size = $("#size").val();
		addCookie("contract_size", size, 36);
		if ((page <= ${page.pageCount} && page >= 1)) {
			window.location.href="/webvTopController/toTop.do?page="+page+"&size="+size;
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