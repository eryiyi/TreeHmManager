<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>${emp.mm_emp_nickname}个人主页</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_求购信息"  />
	<meta property="og:description" content="花木通_求购信息" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/index.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">
	<link rel="stylesheet" href="/css/user_profile.css">
	<link rel="stylesheet" href="/css/service.css">
	<link rel="stylesheet" href="/css/glide.core.min.css">
	<link rel="stylesheet" href="/css/glide.theme.min.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>
	<script type="text/javascript" src="/js/jquery_latest.js"></script>
	<script type="text/javascript" src="/js/glide.min.js"></script>


</head>
<body style="background-color: #fff;">
<div class="container">
	<div class="heading clearfix">
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
			<h1 class="head-title">个人资料</h1>
		</div>
	</div>
	<div class="content" style="width: 100%">
		<div id="Glide" class="glide">

			<div class="panel clearfix">
				<img src="${emp.mm_emp_cover}" alt="${emp.mm_emp_nickname}" class="head-pic">
				<div class="user-info">
					<h2 class="name">${emp.mm_emp_nickname}</h2>
					<c:if test="${emp.mm_emp_type==0}"><h3 class="type">苗木经营户</h3></c:if>
					<c:if test="${emp.mm_emp_type==1}"><h3 class="type">苗木会员</h3></c:if>
				</div>
			</div>
			<div class="glide__wrapper">
				<ul class="glide__track">
					<c:forEach items="${empAdVO}" var="e" varStatus="st">
						<li class="glide__slide"><img src="${e.mm_emp_ad_pic}" alt="${e.mm_emp_ad_url}"></li>
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

		<!-- user-info -->
		<div class="content regist">
			<div class="user-info w85">

				<%--<div class="input-group-regist"><span>手机号</span><a href="tel:18366883986">18366883986</a></div>--%>
				<%--<div class="input-group-regist"><span>姓名</span><input disabled="ture" placeholder="请输入真实姓名" type="text"></div>--%>
				<%--<div class="select-group mt1"><span>注册类型</span>--%>
					<%--<select disabled="ture" name="" id="" class="bg-f2" disabled="ture">--%>
						<%--<option value="">个人</option>--%>
						<%--<option value="">公司</option>--%>
						<%--<option value="">企业</option>--%>
					<%--</select>--%>
				<%--</div>--%>
				<div class="input-group-regist"><span>公司名称</span><input disabled="ture" type="text" value="${emp.mm_emp_company}"></div>
				<a href="${emp.mm_emp_company_url}" target="_blank" class="btn w85">公司微网站</a>
				<%--<div class="input-group-regist"><span>公司官网</span><input disabled="ture" type="text" placeholder="http://"></div>--%>
				<%--<div disabled="ture" class="select-group mt1"><span>公司类型</span>--%>
					<%--<select name="" id="" class="bg-f2" disabled="ture">--%>
						<%--<option value="">苗木</option>--%>
						<%--<option value="">花卉</option>--%>
						<%--<option value="">销售</option>--%>
					<%--</select>--%>
				<%--</div>--%>
				<%--<div class="input-group-regist"><span>公司地址</span><input disabled="ture" value="山东滨州市" placeholder="20字以内"  type="text"></div>--%>
				<%--<div class="select-group mt1"><span>-（省）</span>--%>
					<%--<select disabled="ture" name="" id="" class="bg-f2">--%>
						<%--<option value="">山东</option>--%>
						<%--<option value="">河南</option>--%>
						<%--<option value="">北京</option>--%>
					<%--</select>--%>
				<%--</div>--%>
				<%--<div class="select-group mt1"><span>--（市）</span>--%>
					<%--<select disabled="ture" name="" id="" class="bg-f2">--%>
						<%--<option value="">滨州</option>--%>
						<%--<option value="">济南</option>--%>
						<%--<option value="">临沂</option>--%>
					<%--</select>--%>
				<%--</div>--%>
				<%--<div class="select-group mt1"><span>---（县）</span>--%>
					<%--<select disabled="ture" name="" id="" class="bg-f2">--%>
						<%--<option value="">惠民</option>--%>
						<%--<option value="">大王</option>--%>
						<%--<option value="">沂水</option>--%>
					<%--</select>--%>
				<%--</div>--%>
			</div>

		</div>
		<div class="recent">
			<div class="w95">
				<c:forEach items="${list}" var="e" varStatus="st">
				<div class="item">
					<div class="item-heading clearfix">
						<a href="javaScript:void(0)" class="left clearfix">
							<img src="${e.mm_emp_cover}" alt="" class="head-pic">
							<div class="detail">
								<h1 class="company">${e.mm_emp_company}&nbsp;${e.mm_emp_nickname}</h1>
								<h3 class="time">${e.dateline} &nbsp;&nbsp; ${e.area}</h3>
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
					<a href="javaScript:void(0)" onclick="showDetail('${e.mm_msg_id}')" class="item-content">
							${e.mm_msg_title}
							${e.mm_msg_content}
					</a>
					<div class="item-footer clearfix">
						<%--<button class="read-status-unread"></button>--%>
						<%--<div  class="share-left">--%>
							<%--<div class="bdsharebuttonbox" >--%>
								<%--<a class="bds_mshare" data-cmd="mshare"></a>--%>
								<%--<a class="bds_qzone" data-cmd="qzone" href="javaScript:void(0)"></a>--%>
								<%--<a class="bds_tsina" data-cmd="tsina"></a>--%>
								<%--<a class="bds_tqq" data-cmd="tqq"></a>--%>
								<%--<a class="bds_more" data-cmd="more">更多</a>--%>
								<%--<a class="bds_count" data-cmd="count"></a>--%>
							<%--</div>--%>
						<%--</div>--%>
						<a type="button" href="javaScript:void(0)" onclick="telClick(${e.mm_emp_mobile})" class="button-phone"></a>
						<a type="button" href="javaScript:void(0)" onclick="favourClick('${e.mm_msg_id}')" class="button-fav"></a>
						<c:if test="${e.mm_msg_picurl !=''}"><a type="button" onclick="showDetail('${e.mm_msg_id}')" class="button-pic"></a></c:if>

					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvSell/toSell.do','1')" class="sell"></a>
		<a href="javaScript:void(0)" onclick="toPage('/webvRecommend/toRecommend.do','1')" class="recommend"></a>
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
</html>