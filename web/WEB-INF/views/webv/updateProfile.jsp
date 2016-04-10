<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通完善个人资料</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_完善个人资料"  />
	<meta property="og:description" content="花木通_完善个人资料" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">


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
			<h1 class="head-title">完善个人资料</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content regist w85">
		<div class="input-group-regist"><span>公司名称</span>
			<input type="text" placeholder="公司名称" id="mm_emp_company">
		</div>
		<div class="input-group-regist"><span>公司地址</span>
			<input  placeholder="公司地址" type="text" id="mm_emp_company_address">
		</div>

		<button class="mt4 w10 fill-green" type="submit" onclick="reg()">提交</button>
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

	function reg(){
		var mm_emp_company = $("#mm_emp_company").val();
		var mm_emp_company_address = $("#mm_emp_company_address").val();
		if(mm_emp_company.replace(/\s/g, '') == ''){
			alert("公司名称不能为空");
			return ;
		}
		if(mm_emp_company.length > 12){
			alert("公司名称超出字段限制，最多12个字");
			return ;
		}
		if(mm_emp_company_address.replace(/\s/g, '') == ''){
			alert("公司地址不能为空");
			return ;
		}
		$.ajax({
			cache: true,
			type: "POST",
			url:"/webvProfile/webMemberUpdateProfile.do",
			data:{
				"mm_emp_company":mm_emp_company,
				"mm_emp_company_address":mm_emp_company_address
			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("补充资料成功");
					//登录页面跳转
					window.location.href="/webv/toIndex.do";
				}else{
					var _case = {1:"提交失败",9:"请登录！"};
					alert(_case[data.code])
				}
			}
		});
	}

</script>
</html>