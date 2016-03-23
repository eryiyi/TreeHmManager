<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通后台管理系统</title>
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
	<script src="/js/jquery.min.js"></script>
	<script src="/js/Util.js"></script>
	<script src="/js/validation.js"></script>
	<script src="/js/md5.js"></script>
	<script src="/js/ajaxfileupload.js"></script>
	<![endif]-->

</head>
<body>
<!--Start Header-->
<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>
<div id="modalbox">
	<div class="devoops-modal">
		<div class="devoops-modal-header">
			<div class="modal-header-name">
				<span>Basic table</span>
			</div>
			<div class="box-icons">
				<a class="close-link">
					<i class="fa fa-times"></i>
				</a>
			</div>
		</div>
		<div class="devoops-modal-inner">
		</div>
		<div class="devoops-modal-bottom">
		</div>
	</div>
</div>
<header class="navbar">
	<div class="container-fluid expanded-panel">
		<div class="row">
			<div id="logo" class="col-xs-12 col-sm-2">
				<a href="javascript:void(0);">花木通后台管理系统</a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<%--<div id="search">--%>
						<%--<input type="text" placeholder="search"/>--%>
						<%--<i class="fa fa-search"></i>--%>
						<%--</div>--%>
					</div>
					<div class="col-xs-8 col-sm-8 top-panel-right">
						<%--<a href="javascript:void(0);" class="about">about</a>--%>
						<%--<a href="javascript:void(0);" class="style1"></a>--%>
						<ul class="nav navbar-nav pull-right panel-menu">
							<li class="dropdown">
								<a href="javascript:void(0);" class="dropdown-toggle account" data-toggle="dropdown">
									<div class="avatar">
										<img src="/img/logo.png" class="img-circle" alt="avatar" />
									</div>
									<i class="fa fa-angle-down pull-right"></i>
									<div class="user-mini pull-right">
										<span class="welcome">Welcome,</span>
										<span>花木通</span>
									</div>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="/logout.do">
											<i class="fa fa-power-off"></i>
											<span>Logout</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->
<!--Start Container-->
<div id="main" class="container-fluid">
	<div class="row">
		<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				<li>
					<a href="javascript:void(0);"  class="active" onclick="toPage('mainPage','')">
						<i class="fa fa-home"></i>
						<span class="hidden-xs">主页</span>
					</a>
				</li>

				<c:if test="${um:permission('LIST_ROLE', sessionScope.powers)||um:permission('ADD_ROLE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-user-md"></i>
							<span class="hidden-xs">角色管理</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('ADD_ROLE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/role/add','')">添加角色</a></li>
							</c:if>
							<c:if test="${um:permission('LIST_ROLE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/role/list','')">角色列表</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>
				<c:if test="${um:permission('MANAGER_LIST_MANAGE', sessionScope.powers) ||um:permission('MANAGER_ADD_MANAGE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-user"></i>
							<span class="hidden-xs">管理员</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('MANAGER_ADD_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/emp/listAddManager','')">添加管理员</a></li>
							</c:if>
							<c:if test="${um:permission('MANAGER_LIST_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/admin/list','1')">管理员列表</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('LIST_EMPLOYEE_JY', sessionScope.powers)||um:permission('LIST_EMPLOYEE_EMP', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-group"></i>
							<span class="hidden-xs">会员管理</span>
						</a>
						<ul class="dropdown-menu">
								<%--<li><a href="javascript:void(0);" onclick="toPage('/role/add','')">添加宝宝</a></li>--%>
									<c:if test="${um:permission('REG_EMP', sessionScope.powers)}">
										<li><a href="javascript:void(0);" onclick="toPage('/emp/toReg','1')">人工注册</a></li>
									</c:if>
									<c:if test="${um:permission('LIST_EMPLOYEE_JY', sessionScope.powers)}">
										<li><a href="javascript:void(0);" onclick="toPageEmp('/emp/list','1','0')">经营户</a></li>
									</c:if>
									<c:if test="${um:permission('LIST_EMPLOYEE_EMP', sessionScope.powers)}">
										<li><a href="javascript:void(0);" onclick="toPageEmp('/emp/list','1','1')">会员</a></li>
									</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('QIUGOU_MSG', sessionScope.powers)||um:permission('GONGYING_MSG', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-comments"></i>
							<span class="hidden-xs">信息管理</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('QIUGOU_MSG', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('record/listQiugou','1')">求购信息</a></li>
							</c:if>
							<c:if test="${um:permission('GONGYING_MSG', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('record/listGongying','1')">供应信息</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('ADD_NOTICE', sessionScope.powers)||um:permission('NOTICE_LIST', sessionScope.powers)}">
				<li class="dropdown">
					<a href="javascript:void (0);" class="dropdown-toggle">
						<i class="fa fa-bullhorn"></i>
						<span class="hidden-xs">公告管理</span>
					</a>
					<ul class="dropdown-menu">
						<c:if test="${um:permission('ADD_NOTICE', sessionScope.powers)}">
							<li><a href="javascript:void(0);" onclick="toPage('role/addPiao','1')">添加公告</a></li>
						</c:if>
						<c:if test="${um:permission('NOTICE_LIST', sessionScope.powers)}">
							<li><a href="javascript:void(0);" onclick="toPage('role/addPiao','1')">公告列表</a></li>
						</c:if>

					</ul>
				</li>
				</c:if>

				<c:if test="${um:permission('PROVINCE_LIST', sessionScope.powers)||um:permission('CITY_LIST', sessionScope.powers)||um:permission('COUNTY_LIST', sessionScope.powers)}">
				<li class="dropdown">
					<a href="javascript:void (0);" class="dropdown-toggle">
						<i class="fa fa-globe"></i>
						<span class="hidden-xs">地区管理</span>
					</a>
					<ul class="dropdown-menu">
						<c:if test="${um:permission('PROVINCE_LIST', sessionScope.powers)}">
							<li><a href="javascript:void(0);" onclick="toPage('province/list','1')">省份列表</a></li>
						</c:if>
						<c:if test="${um:permission('CITY_LIST', sessionScope.powers)}">
							<li><a href="javascript:void(0);" onclick="toPage('city/list','1')">城市列表</a></li>
						</c:if>
						<c:if test="${um:permission('COUNTY_LIST', sessionScope.powers)}">
							<li><a href="javascript:void(0);" onclick="toPage('country/list','1')">地区列表</a></li>
						</c:if>
					</ul>
				</li>
				</c:if>

					<c:if test="${um:permission('LOGO_LIST', sessionScope.powers)}">
						<li class="dropdown">
							<a href="javascript:void (0);" class="dropdown-toggle">
								<i class="fa fa-reorder"></i>
								<span class="hidden-xs">日志管理</span>
							</a>
							<ul class="dropdown-menu">
								<c:if test="${um:permission('LOGO_LIST', sessionScope.powers)}">
									<li><a href="javascript:void(0);" onclick="toPage('/logo/list','1')">日志列表</a></li>
								</c:if>
							</ul>
						</li>
					</c:if>

					<c:if test="${um:permission('REPORT_LIST', sessionScope.powers)}">
						<li class="dropdown">
							<a href="javascript:void (0);" class="dropdown-toggle">
								<i class="fa fa-envelope"></i>
								<span class="hidden-xs">举报管理</span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="javascript:void(0);" onclick="toPage('/report/list','1')">举报列表</a></li>
							</ul>
						</li>
					</c:if>

					<c:if test="${um:permission('ADD_LEVEL', sessionScope.powers)||um:permission('LEVEL_LIST', sessionScope.powers)}">
						<li class="dropdown">
							<a href="javascript:void (0);" class="dropdown-toggle">
								<i class="fa fa-sitemap"></i>
								<span class="hidden-xs">等级管理</span>
							</a>
							<ul class="dropdown-menu">
								<c:if test="${um:permission('ADD_LEVEL', sessionScope.powers)}">
									<li><a href="javascript:void(0);" onclick="toPage('/level/add','')">添加等级</a></li>
								</c:if>
								<c:if test="${um:permission('LEVEL_LIST', sessionScope.powers)}">
									<li><a href="javascript:void(0);" onclick="toPage('/level/list','1')">等级列表</a></li>
								</c:if>
							</ul>
						</li>
					</c:if>

					<c:if test="${um:permission('ADD_FEIYONG', sessionScope.powers)||um:permission('FEIYONG_LIST', sessionScope.powers)}">
						<li class="dropdown">
							<a href="javascript:void (0);" class="dropdown-toggle">
								<i class="fa fa-credit-card"></i>
								<span class="hidden-xs">会费管理</span>
							</a>
							<ul class="dropdown-menu">
								<c:if test="${um:permission('ADD_FEIYONG', sessionScope.powers)}">
									<li><a href="javascript:void(0);" onclick="toPage('feiyong/add','')">会费添加</a></li>
								</c:if>
								<c:if test="${um:permission('FEIYONG_LIST', sessionScope.powers)}">
									<li><a href="javascript:void(0);" onclick="toPage('feiyong/list','1')">会费列表</a></li>
								</c:if>
							</ul>
						</li>
					</c:if>

					<c:if test="${um:permission('ORDER_LIST', sessionScope.powers)}">
						<li class="dropdown">
							<a href="javascript:void (0);" class="dropdown-toggle">
								<i class="fa fa-shopping-cart"></i>
								<span class="hidden-xs">订单管理</span>
							</a>
							<ul class="dropdown-menu">
								<c:if test="${um:permission('ORDER_LIST', sessionScope.powers)}">
									<li><a href="javascript:void(0);" onclick="toPage('order/list','1')">订单列表</a></li>
								</c:if>
							</ul>
						</li>
					</c:if>
				<c:if test="${um:permission('FUWU_LIST', sessionScope.powers)||um:permission('FUWU_ADD', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-leaf"></i>
							<span class="hidden-xs">服务管理</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('FUWU_ADD', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('fuwu/add','')">服务添加</a></li>
							</c:if>
							<c:if test="${um:permission('FUWU_LIST', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('fuwu/list','1')">服务列表</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>
				<c:if test="${um:permission('ABOUT_US_MANA', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-info"></i>
							<span class="hidden-xs">关于我们</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('ABOUT_US_MANA', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('aboutUs/add','')">关于我们</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>
				<c:if test="${um:permission('SUGGEST_MANAGE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-envelope"></i>
							<span class="hidden-xs">意见反馈</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('SUGGEST_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/suggest/list','')">意见反馈</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('TEL_KEFU_MANAGE', sessionScope.powers)||um:permission('ADD_TEL_KEFU_MANAGE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-phone"></i>
							<span class="hidden-xs">客服电话</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('ADD_TEL_KEFU_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/kefu/add','')">添加客服</a></li>
							</c:if>
							<c:if test="${um:permission('TEL_KEFU_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/kefu/list','')">客服列表</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('ADD_AD_MANAGE', sessionScope.powers)||um:permission('AD_LISTMANAGE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-phone"></i>
							<span class="hidden-xs">广告管理</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('ADD_AD_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/adObj/add','')">添加广告</a></li>
							</c:if>
							<c:if test="${um:permission('AD_LISTMANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/adObj/list','')">广告列表</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('SHNEHE_TYPE_MANAGE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-phone"></i>
							<span class="hidden-xs">审核方式</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('SHNEHE_TYPE_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/shenheType/add','')">审核方式</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

				<c:if test="${um:permission('ADD_WEIXIN_KEFU_MANAGE', sessionScope.powers)||um:permission('WEIXIN_KEFU_MANAGE', sessionScope.powers)}">
					<li class="dropdown">
						<a href="javascript:void (0);" class="dropdown-toggle">
							<i class="fa fa-phone"></i>
							<span class="hidden-xs">微信客服</span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${um:permission('ADD_WEIXIN_KEFU_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/weixin/add','')">添加微信</a></li>
							</c:if>
							<c:if test="${um:permission('WEIXIN_KEFU_MANAGE', sessionScope.powers)}">
								<li><a href="javascript:void(0);" onclick="toPage('/weixin/list','')">微信列表</a></li>
							</c:if>
						</ul>
					</li>
				</c:if>

			</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			<div id="about">
				<div class="about-inner">
					<h4 class="page-header">Open-source admin theme for you</h4>
					<p>DevOOPS team</p>
					<p>Homepage - <a href="http://devoops.me" target="_blank">http://devoops.me</a></p>
					<p>Email - <a href="mailto:devoopsme@gmail.com">devoopsme@gmail.com</a></p>
					<p>Twitter - <a href="http://twitter.com/devoopsme" target="_blank">http://twitter.com/devoopsme</a></p>
					<p>Donate - BTC 123Ci1ZFK5V7gyLsyVU36yPNWSB5TDqKn3</p>
				</div>
			</div>
			<div class="preloader">
				<img src="/img/devoops_getdata.gif" class="devoops-getdata" alt="preloader"/>
			</div>
			<div id="ajax-content"></div>
		</div>
		<!--End Content-->
	</div>
</div>
<script src="/plugins/jquery/jquery.min.js"></script>
<script src="/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="/plugins/bootstrap/bootstrap.min.js"></script>
<script src="/plugins/justified-gallery/jquery.justifiedGallery.min.js"></script>
<script src="/plugins/tinymce/tinymce.min.js"></script>
<script src="/plugins/tinymce/jquery.tinymce.min.js"></script>
<script src="/js/devoops.js"></script>
<script src="/js/china2.js"></script>
<script type="text/javascript" src="/js/md5.js"></script>
<script type="text/javascript" src="/js/cookie.js"></script>
<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="/js/Util.js"></script>

</body>
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

	function toPage(_url, _page){
		if(_page != ''){
			window.location.href="#module="+_url+"&page="+_page;
		}else{
			window.location.href="#module="+_url;
		}
	}

	function toPageEmp(_url, _page, mm_emp_type){
		if(_page != ''){
			window.location.href="#module="+_url+"&page="+_page +"&mm_emp_type="+mm_emp_type;
		}else{
			window.location.href="#module="+_url;
		}
	}

</script>
</html>
