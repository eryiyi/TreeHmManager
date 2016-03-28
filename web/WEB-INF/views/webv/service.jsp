<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通服务中心</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_服务中心"  />
	<meta property="og:description" content="花木通_服务中心" />
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
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<h1 class="head-title">用户中心</h1>
	</div>

	<!-- user-info -->
	<div id="Glide" class="glide">
		<!-- 	    <div class="glide__arrows">
                    <button class="glide__arrow prev" data-glide-dir="<">prev</button>
                    <button class="glide__arrow next" data-glide-dir=">">next</button>
                </div> -->
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
	<!-- CONTENT -->
	<div class="content">
		<!-- mine -->
		<h4 class="title">我的</h4>
		<div class="icons clearfix">
			<a href="/webvProfile/toProfile.do?mm_emp_id=${emp.mm_emp_id}" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_profile.png" alt=""></div>
				<h5 class="icon-name">用户资料</h5>
			</a>
			<a href="/webvUpdatePwrController/toFindPwr.do" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_changepw.png" alt=""></div>
				<h5 class="icon-name">修改密码</h5>
			</a>
			<a href="contact.html" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_see.png" alt=""></div>
				<h5 class="icon-name">设置关注区域</h5>
			</a>
			<a href="javaScript:void(0)" onclick="vipClick()" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_VIP.png" alt=""></div>
				<h5 class="icon-name">升级VIP</h5>
			</a>
			<a href="/webvNearbyController/nearby.do" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_nearby.png" alt=""></div>
				<h5 class="icon-name">附近商家</h5>
			</a>
			<a href="/webvMineFavourController/favour.do?mm_emp_id=${emp.mm_emp_id}" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_fav.png" alt=""></div>
				<h5 class="icon-name">我的收藏</h5>
			</a>
			<a href="/webvKefuController/toKefu.do" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_crs.png" alt=""></div>
				<h5 class="icon-name">客服中心</h5>
			</a>
			<a href="/webvSuggestController/toSuggest.do" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_report.png" alt=""></div>
				<h5 class="icon-name">意见反馈</h5>
			</a>
			<a href="/webvWeixinController/toKefu.do" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_weixin.png" alt=""></div>
				<h5 class="icon-name">微信客服</h5>
			</a>
			<a href="javaScript:void(0)" class="icon" onclick="noClick()">
				<div class="icon-pic"><img src="/img/tree_user_zhaoshang.png" alt=""></div>
				<h5 class="icon-name">全国招商合作伙伴</h5>
			</a>
			<a href="/webvNoticeController/list.do?page=1" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_notice.png" alt=""></div>
				<h5 class="icon-name">公告</h5>
			</a>
		</div>

		<!-- services -->
		<h4 class="title">服务</h4>
		<div class="icons clearfix">
			<a href="javaScript:void(0)" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_bank.png" alt=""></div>
				<h5 class="icon-name">农村商业银行</h5>
			</a>
			<a href="/webvFuwuCenterController/toCenter.do?mm_fuwu_type=0" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_shop.png" alt=""></div>
				<h5 class="icon-name">苗木商店</h5>
			</a>
			<a href="/webvFuwuCenterController/toCenter.do?mm_fuwu_type=1" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_worker.png" alt=""></div>
				<h5 class="icon-name">装车工人</h5>
			</a>
			<a href="/webvFuwuCenterController/toCenter.do?mm_fuwu_type=2" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_package.png" alt=""></div>
				<h5 class="icon-name">物流中心</h5>
			</a>

			<a href="/webvFuwuCenterController/toCenter.do?mm_fuwu_type=3" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_graft.png" alt=""></div>
				<h5 class="icon-name">嫁接团队</h5>
			</a>
			<a href="http://hmt.sdhmmm.cn/loginFront.aspx" target="_blank" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_massage.png" alt=""></div>
				<h5 class="icon-name">短信平台</h5>
			</a>
			<a href="/webvFuwuCenterController/toCenter.do?mm_fuwu_type=4" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_crane.png" alt=""></div>
				<h5 class="icon-name">吊车服务</h5>
			</a>
			<a href="/webvAboutUsController/toAboutUs.do" class="icon">
				<div class="icon-pic"><img src="/img/tree_user_aboutus.png" alt=""></div>
				<h5 class="icon-name">关于我们</h5>
			</a>
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
	function vipClick(){
		alert("暂未开通在线支付功能，升级vip请联系客服");
	}
	function noClick(){
		alert("该功能暂未开通");
	}
</script>

</html>