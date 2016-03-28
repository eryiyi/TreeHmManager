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
	<link rel="stylesheet" href="/css/user_profile.css">
	<link rel="stylesheet" href="/css/service.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<script type="text/javascript" src="/js/ajaxfileupload.js"></script>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>

	<!-- GLIDE SLIDE -->
	<script src="/js/jquery_latest.js"></script>
	<script src="/js/glide.min.js"></script>
	<link rel="stylesheet" href="/css/glide.core.min.css">
	<link rel="stylesheet" href="/css/glide.theme.min.css">

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
		<%--<span>信息标题：</span>--%>
		<%--<input class="report-reason" placeholder="信息标题" type="text" id="mm_msg_title" name="mm_msg_title">--%>
		<span>信息内容：</span>
		<textarea  class="report-reason" name="mm_msg_content"
				   id="mm_msg_content" cols="30" placeholder="请输入您要发布的信息内容，包括您要求的品种、规格、质量及联系方式。您将对您发布信息的真实性负法律责任，请谨慎填写！" rows="10"></textarea>
		<div class="ads clearfix">
			<%--<c:if test="${emp.is_pic !=null && emp.is_pic !='0'}">--%>
				<%--<c:if test="${emp.is_pic =='1'}">--%>
					<%--<a href="">--%>
						<%--<input id="ad_1" type="file" onchange="change('adpic_1','ad_1')">--%>
						<%--<label for="ad_1"><img id="adpic_1" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
					<%--<a href="">--%>
						<%--<input id="ad_2" type="file" onchange="change('adpic_2','ad_2')">--%>
						<%--<label for="ad_2"><img id="adpic_2" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
					<%--<a href="">--%>
						<%--<input id="ad_3" type="file" onchange="change('adpic_3','ad_3')">--%>
						<%--<label for="ad_3"><img id="adpic_3" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>

				<%--</c:if>--%>
				<%--<c:if test="${emp.is_pic =='2'}">--%>
					<%--<a href="">--%>
						<%--<input id="ad_4" type="file" onchange="change('adpic_4','ad_4')">--%>
						<%--<label for="ad_4"><img id="adpic_4" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
					<%--<a href="">--%>
						<%--<input id="ad_5" type="file" onchange="change('adpic_5','ad_5')">--%>
						<%--<label for="ad_5"><img id="adpic_5" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
					<%--<a href="">--%>
						<%--<input id="ad_6" type="file" onchange="change('adpic_6','ad_6')">--%>
						<%--<label for="ad_6"><img id="adpic_6" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
				<%--</c:if>--%>
				<%--<c:if test="${emp.is_pic =='3'}">--%>
					<%--<a href="">--%>
						<%--<input id="ad_7" type="file" onchange="change('adpic_7','ad_7')">--%>
						<%--<label for="ad_7"><img id="adpic_7" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
					<%--<a href="">--%>
						<%--<input id="ad_8" type="file" onchange="change('adpic_8','ad_8')">--%>
						<%--<label for="ad_8"><img id="adpic_8" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
					<%--<a href="">--%>
						<%--<input id="ad_9" type="file" onchange="change('adpic_9','ad_9')">--%>
						<%--<label for="ad_9"><img id="adpic_9" src="/img/pic_add.svg" alt=""></label>--%>
					<%--</a>--%>
				<%--</c:if>--%>
			<%--</c:if>--%>
		</div>
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
//		var mm_msg_title = $("#mm_msg_title").val();
		var mm_msg_content = $("#mm_msg_content").val();
		if(mm_msg_type.replace(/\s/g, '') == ''){
			alert("请选择信息类型");
			return ;
		}
//		if(mm_msg_title.replace(/\s/g, '') == ''){
//			alert("请输入信息标题");
//			return ;
//		}
//		if(mm_msg_title.length>100 || mm_msg_title.length<2){
//			alert("请输入信息标题，内容在2到100个字之间");
//			return ;
//		}
		if(mm_msg_content.replace(/\s/g, '') == ''){
			alert("请输入您要发布的信息内容");
			return ;
		}
		if(mm_msg_content.length>300 || mm_msg_content.length<2){
			alert("请输入您要发布的信息内容，内容在2到300个字之间");
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
				"mm_msg_title":"",
				"mm_msg_content":mm_msg_content
			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("发布信息成功！");
					window.history.go(-1);
				}else{
					var _case = {1:"发布信息失败",2:"已经发布该信息，不能重复发布！",3:"发布信息数量超出限制，您每天最多发布"+"3"+"条",9:"您的账号在其它设备上登录，请重新登录"};
					alert(_case[data.code])
				}
			}
		});
	}


	function change(picId,fileId) {
		var pic = document.getElementById(picId);
		var file = document.getElementById(fileId);
		if(window.FileReader){//chrome,firefox7+,opera,IE10,IE9，IE9也可以用滤镜来实现
			oFReader = new FileReader();
			oFReader.readAsDataURL(file.files[0]);
			oFReader.onload = function (oFREvent) {pic.src = oFREvent.target.result;};
		}
		else if (document.all) {//IE8-
			file.select();
			var reallocalpath = document.selection.createRange().text//IE下获取实际的本地文件路径
			if (window.ie6) pic.src = reallocalpath; //IE6浏览器设置img的src为本地路径可以直接显示图片
			else { //非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现，IE10浏览器不支持滤镜，需要用FileReader来实现，所以注意判断FileReader先
				pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
				pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';//设置img的src为base64编码的透明图片，要不会显示红xx
			}
		}
		else if (file.files) {//firefox6-
			if (file.files.item(0)) {
				var url = file.files.item(0).getAsDataURL();
				pic.src = url;
			}
		}
	}
</script>
</html>