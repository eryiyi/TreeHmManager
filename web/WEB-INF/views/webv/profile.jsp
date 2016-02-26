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
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
	<script src="/js/jquery.min.js"></script>
	<script src="/js/Util.js"></script>
	<script src="/js/validation.js"></script>
	<script src="/js/md5.js"></script>
	<script src="/js/ajaxfileupload.js"></script>
	<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>

	<![endif]-->

	<%--<link href="/umeditor/themes/default/css/umeditor.min.css" type="text/css" rel="stylesheet">--%>
	<%--<script src="/umeditor/third-party/jquery.min.js"></script>--%>
	<%--<script type="text/javascript" charset="utf-8" src="/umeditor/umeditor.config.js"></script>--%>
	<%--<script type="text/javascript" charset="utf-8" src="/umeditor/umeditor.min.js"></script>--%>
	<%--<script type="text/javascript" src="/umeditor/lang/zh-cn/zh-cn.js"></script>--%>

	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/index.css">
	<script src="/js/jquery_latest.js"></script>
	<script src="/js/glide.min.js"></script>
	<link rel="stylesheet" href="/css/glide.core.min.css">
	<link rel="stylesheet" href="/css/glide.theme.min.css">

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
			<img src="pics/tree_user_profile.png" alt="头像" class="head-pic">
			<div class="user-info">
				<h2 class="name">邴新科</h2>
				<h3 class="type">个人</h3>
			</div>
		</div>
		<div class="glide__wrapper">
			<ul class="glide__track">
				<li class="glide__slide"><img src="pics/001.jpg" alt=""></li>
				<li class="glide__slide"><img src="pics/002.jpg" alt=""></li>
				<li class="glide__slide"><img src="pics/003.jpg" alt=""></li>
			</ul>
		</div>

		<div class="glide__bullets"></div>

	</div>
	<script>
		$(function(){
			$('.glide').glide({
				mode:'horizontal',     // 幻灯片走向
				autoplay:5000,         // 自动播放，false为关闭自动播放
				startAt:2,             // 开始于哪个幻灯片
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
			<a href="user_change_profile.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_profile.png" alt=""></div>
				<h5 class="icon-name">用户资料</h5>
			</a>
			<a href="passwd.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_changepw.png" alt=""></div>
				<h5 class="icon-name">修改密码</h5>
			</a>
			<a href="report.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_report.png" alt=""></div>
				<h5 class="icon-name">意见反馈</h5>
			</a>
			<a class="icon">
				<div class="icon-pic"><img src="pics/tree_user_setup.png" alt=""></div>
				<h5 class="icon-name">设置</h5>
			</a>
		</div>

		<!-- services -->
		<h4 class="title">服务</h4>
		<div class="icons clearfix">
			<a href="nearby.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_nearby.png" alt=""></div>
				<h5 class="icon-name">附近商家</h5>
			</a>
			<a href="" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_bank.png" alt=""></div>
				<h5 class="icon-name">农商银行</h5>
			</a>
			<a href="contact.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_worker.png" alt=""></div>
				<h5 class="icon-name">装车工人</h5>
			</a>
			<a href="contact.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_package.png" alt=""></div>
				<h5 class="icon-name">物流中心</h5>
			</a>
			<a href="contact.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_graft.png" alt=""></div>
				<h5 class="icon-name">嫁接团队</h5>
			</a>
			<a href="" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_massage.png" alt=""></div>
				<h5 class="icon-name">短信平台</h5>
			</a>
			<a href="contact.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_crane.png" alt=""></div>
				<h5 class="icon-name">吊车服务</h5>
			</a>
			<a href="about.html" class="icon">
				<div class="icon-pic"><img src="pics/tree_user_aboutus.png" alt=""></div>
				<h5 class="icon-name">关于我们</h5>
			</a>
		</div>
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