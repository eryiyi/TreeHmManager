<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通发布信息</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_发布信息"  />
	<meta property="og:description" content="花木通_发布信息" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">
	<link rel="stylesheet" href="/css/report.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>

</head>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<!-- HEADING -->
		<div class="heading clearfix">
			<a href="javascript:history.back()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
			<h1 class="head-title" >发布信息</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content regist w85">
		<div class="select-group mt2 mb2"><span>信息类型</span>
		<select name="mm_msg_type" id="mm_msg_type" class="bg-f2">
		<option value="0">苗木求购</option>
		<option value="1">苗木供应</option>
		</select>
		</div>
		<span>信息标题：</span>
		<input class="report-reason" placeholder="信息标题" type="text" id="mm_msg_title" name="mm_msg_title">
		<span>信息内容：</span>
		<textarea  class="report-reason" name="mm_msg_content"
				   id="mm_msg_content" style="width: 30%;margin:0;padding:0;"  cols="30" rows="10">
		</textarea>
		<button class="button fill-orange mt3 w10 t-sh mb4" onclick="addRecord()">提交</button>
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

	function addRecord(){
		var mm_msg_type = $("#mm_msg_type").val();
		var mm_msg_title = $("#mm_msg_title").val();
		var mm_msg_content = $("#mm_msg_content").val();
		if(mm_msg_type.replace(/\s/g, '') == ''){
			alert("请选择信息类型");
			return ;
		}
		if(mm_msg_title.replace(/\s/g, '') == ''){
			alert("请输入信息标题");
			return ;
		}
		if(mm_msg_title.length>100 || mm_msg_title.length<2){
			alert("请输入信息标题，内容在2到100个字之间");
			return ;
		}
		if(mm_msg_content.replace(/\s/g, '') == ''){
			alert("请输入信息内容");
			return ;
		}
		if(mm_msg_content.length>200 || mm_msg_content.length<2){
			alert("请输入信息内容，内容在2到200个字之间");
			return ;
		}
		if('${emp.is_fabugongying}' == '0' && mm_msg_type=='1'){
			alert("您暂无权限发布苗木供应信息，请联系客服！");
			return;
		}
		if('${emp.is_fabuqiugou}' == '0' && mm_msg_type=='0'){
			alert("您暂无权限发布苗木求购信息，请联系客服！");
			return;
		}

		<%--if('${emp.is_pic}' == '0'){--%>
			<%--alert("您暂无权限发布图片，请联系客服！");--%>
			<%--return;--%>
		<%--}--%>
		$.ajax({
			cache: true,
			type: "POST",
			url:"/webvAddRecordController/addRecord.do",
			data:{
				"mm_msg_type":mm_msg_type,
				"mm_msg_title":mm_msg_title,
				"mm_msg_content":mm_msg_content
			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("发布信息成功！");
				}else{
					var _case = {1:"发布信息失败",2:"已经发布该信息，不能重复发布！",3:"发布信息数量超出限制，您每天最多发布"+"3"+"条",9:"您的账号在其它设备上登录，请重新登录"};
					alert(_case[data.code])
				}
			}
		});
	}
</script>
</html>