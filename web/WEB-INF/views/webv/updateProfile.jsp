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
			<div class="input-group-regist"><span>头像</span>
				<input type="hidden" id="mm_emp_cover">
				<img class="img-thumbnail"  name="imagePath" id="imageDiv"  style="cursor: pointer;width: 80px;height: 80px;" />
				<input type="file" name="file" id="fileUpload" style="float: left;" />
				<input type="button" value="上传" onclick="uploadImage()" style="float: left;"/><br/><br/>
			</div>
			<div class="input-group-regist"><span>营业执照或公司门头</span>
				<input type="hidden" id="mm_emp_company_pic">
				<img class="img-thumbnail" name="imageDiv1" id="imageDiv1" style="cursor: pointer;width: 80px;height: 80px;"  />
				<input type="file" name="file" id="fileUpload1" style="float: left;" />
				<input type="button" value="上传" onclick="uploadImage1()" style="float: left;"/><br/><br/>
			</div>
			<button class="mt4 w10 fill-green" type="button" onclick="reg()">提交</button>
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
		var mm_emp_cover = $("#mm_emp_cover").val();
		var mm_emp_company_pic = $("#mm_emp_company_pic").val();
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
		if(mm_emp_company_address.length > 20){
			alert("公司名称超出字段限制，最多20个字");
			return ;
		}
		if(mm_emp_cover.replace(/\s/g, '') == ''){
			alert("请选择头像");
			return ;
		}
		if(mm_emp_company_pic.replace(/\s/g, '') == ''){
			alert("请选择营业执照");
			return ;
		}
		$.ajax({
			cache: true,
			type: "POST",
			url:"/webvProfile/webMemberUpdateProfile.do",
			data:{
				"mm_emp_company":mm_emp_company,
				"mm_emp_company_pic":mm_emp_company_pic,
				"mm_emp_cover":mm_emp_cover,
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

	function uploadImage() {
		$.ajaxFileUpload(
				{
					url:"/uploadUnCompressImage.do?_t=" + new Date().getTime(),            //需要链接到服务器地址
					secureuri:false,//是否启用安全提交，默认为false
					fileElementId:'fileUpload',                        //文件选择框的id属性
					dataType: 'json',                                     //服务器返回的格式，可以是json, xml
					success: function (data, status)  //服务器成功响应处理函数
					{
						if(data.success) {
							document.getElementById('mm_emp_cover').value=  data.data;
							document.getElementById('imageDiv').src= "http://xhmt.sdhmmm.cn:7777/" +  data.data;
						} else {
							if(data.code == 1) {
								alert("上传图片失败");
							} else if(data.code == 2) {
								alert("上传图片格式只能为：jpg、png、gif、bmp、jpeg");
							} else if(data.code == 3) {
								alert("请选择上传图片");
							}else {
								alert("上传失败");
							}
						}
					}
				}
		);
	}

	function uploadImage1() {
		$.ajaxFileUpload(
				{
					url:"/uploadUnCompressImage.do?_t=" + new Date().getTime(),            //需要链接到服务器地址
					secureuri:false,//是否启用安全提交，默认为false
					fileElementId:'fileUpload1',                        //文件选择框的id属性
					dataType: 'json',                                     //服务器返回的格式，可以是json, xml
					success: function (data, status)  //服务器成功响应处理函数
					{
						if(data.success) {
							document.getElementById('mm_emp_company_pic').value=  data.data;
							document.getElementById('imageDiv1').src=  "http://xhmt.sdhmmm.cn:7777/" + data.data;
						} else {
							if(data.code == 1) {
								alert("上传图片失败");
							} else if(data.code == 2) {
								alert("上传图片格式只能为：jpg、png、gif、bmp、jpeg");
							} else if(data.code == 3) {
								alert("请选择上传图片");
							}else {
								alert("上传失败");
							}
						}
					}
				}
		);
	}

	function deleteImage(e, node) {
		if(e.button == 2) {
			if(confirm("确定移除该图片吗？")) {
				$(node).remove();
			}
		}
	};

</script>
</html>