<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通_客服中心</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_客服中心"  />
	<meta property="og:description" content="花木通_客服中心" />
	<meta name="author" content="花木通" />
	<meta name="Copyright" content="花木通版权所有" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/img/logo.png">
	<link rel="stylesheet" href="/css/reset.css">
	<link rel="stylesheet" href="/css/common.css">
	<link rel="stylesheet" href="/css/common_2.css">
	<link rel="stylesheet" href="/css/contact.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/md5.js"></script>
	<script type="text/javascript" src="/js/cookie.js"></script>
	<%--<script type="text/javascript" src="/js/ajaxfileupload.js"></script>--%>
	<script type="text/javascript" src="/js/Util.js"></script>
	<script type="text/javascript" src="/js/validation.js"></script>
	<script type="text/javascript" src="/js/PictureUpload.js"></script>
	<style type="text/css">
		<!--
		/*选项卡*/
		/*#Tab1{
			width:460px;
			margin:0px;
			padding:0px;
			margin:0 auto;}*/
		/*菜单class*/
		.Menubox {
			width:100%;
		/*	background:url(3.gif);*/
			height:28px;
			line-height:28px;
		}
		.Menubox ul{
			margin:0px;
			padding:0px;
			list-style:none;
			width: 100%;
		}
		.Menubox li{
			float:left;
			display:block;
			cursor:pointer;
			/*width:114px;*/
			text-align:center;
			color:#949694;
			font-weight:bold;
			width: 50%;
		}
		.Menubox li.hover{
			padding:0px;
			background:#fff;
			/*border-left:1px solid #A8C29F;
			border-top:1px solid #A8C29F;
			border-right:1px solid #A8C29F;*/
			/*background:url(20080115123242961.gif);*/
			color:#739242;
			font-weight:bold;
			height:27px;
			line-height:27px;
		}
		.Contentbox{
			clear:both;
			margin-top:0px;
			/*border:1px solid #A8C29F;*/
			border-top:none;
			height:181px;
			text-align:center;
			padding-top:8px;
			width: 99.5%;
		}
		-->
	</style>

	<script>
		<!--
		/*更换显示样式*/
		function setTab(name,cursel,n){
			for(i=1;i<=n;i++){
				var menu=document.getElementById(name+i);
				var con=document.getElementById("con_"+name+"_"+i);
				menu.className=i==cursel?"hover":"";
				con.style.display=i==cursel?"block":"none";}}
		//-->
	</script>


</head>
<body>
<div class="container">
	<!-- HEADING -->
	<div class="heading clearfix">
		<a href="javascript:history.back()()" class="back"><img src="/img/tree_icons_back.png" alt=""></a>
		<h1 class="head-title">客服中心</h1>
	</div>
	<!-- CONTENT -->
	<%--<div class="content">
		<ul class="contact-list">

				<c:forEach items="${list}" var="e" varStatus="st">
					<li>
						<div class="contact clearfix">
							<div class="left">
								<h1 class="name">客服中心</h1>
								&lt;%&ndash;<h3 class="company">${e.mm_fuwu_content}</h3>&ndash;%&gt;
							</div>
							<div class="right">
								<a href="tel:${e.mm_tel}" class="button-phone-big clearfix">
									<img src="/img/tree_button_icon_phone.png" alt="" class="phone-icon">
									<h2 class="phone-number">${e.mm_tel}</h2>
								</a>
							</div>
						</div>
						<div class="duty"></div>
					</li>
				</c:forEach>

		</ul>
	</div>--%>
	<%--客服分为本地客服与全国客服--%>
	<div class="content">
		<div class="Menubox">
		<ul>
			<li id ="one1"onclick="setTab('one',1,2)" class="hover" style="width: 50%">本地</li>
			<li id="one2" onclick="setTab('one',2,2)"  style="width: 49%">全国</li>
		</ul>
		</div>
		<div class="Contentbox">
			<div id="con_one_1" class="hover">
				<c:forEach items="${list}" var="e" varStatus="st">
					<li>
						<div class="contact clearfix">
							<div class="left">
								<h1 class="name">本地客服</h1>
								<%--&lt;%&ndash;<h3 class="company">${e.mm_fuwu_content}</h3>&ndash;%&gt;--%>
							</div>
							<div class="right">
								<a href="tel:${e.mm_tel}" class="button-phone-big clearfix">
									<img src="/img/tree_button_icon_phone.png" alt="" class="phone-icon">
									<h2 class="phone-number">${e.mm_tel}</h2>
								</a>
							</div>
						</div>
						<div class="duty"></div>
					</li>
				</c:forEach>
			</div>
			<div id="con_one_2" style="display:none">
				<c:forEach items="${listAll}" var="e" varStatus="st">
					<li>
						<div class="contact clearfix">
							<div class="left">
								<h1 class="name">全国客服</h1>
							</div>
							<div class="right">
								<a href="tel:${e.mm_tel}" class="button-phone-big clearfix">
									<img src="/img/tree_button_icon_phone.png" alt="" class="phone-icon">
									<h2 class="phone-number">${e.mm_tel}</h2>
								</a>
							</div>
						</div>
						<div class="duty"></div>
					</li>
				</c:forEach>
			</div>
		</div>

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

	function findPwr(){
		var mm_emp_mobile = $("#mm_emp_mobile").val();
		var mm_emp_password = $("#mm_emp_password").val();
		var mm_emp_surepwr = $("#mm_emp_surepwr").val();
		if(mm_emp_mobile.replace(/\s/g, '') == ''){
			alert("手机号不能为空");
			return ;
		}
		if(mm_emp_mobile.length != 11){
			alert("手机号格式不正确");
			return ;
		}
		if(mm_emp_password.replace(/\s/g, '') == ''){
			alert("密码不能为空");
			return ;
		}
		if(mm_emp_password.length>18 || mm_emp_password.length<6){
			alert("密码长度在6到18为之间");
			return ;
		}
		if(mm_emp_surepwr.replace(/\s/g, '') == ''){
			alert("确认密码不能为空");
			return ;
		}
		if(mm_emp_password != mm_emp_surepwr){
			alert("两次输入密码不一致，请重新输入");
			return;
		}
		$.ajax({
			cache: true,
			type: "POST",
			url:"/webvFindPwrController/findPwr.do",
			data:{
				"mm_emp_mobile":mm_emp_mobile,
				"mm_emp_password":mm_emp_password

			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("找回密码成功");
					//登录页面跳转
					window.location.href="/webvLoginController/toLogin.do";
				}else{
					var _case = {1:"找回密码失败",2:""};
					alert(_case[data.code])
				}
			}
		});
	}
</script>
<script>
	var filechooser = document.getElementById("choose");
	//    用于压缩图片的canvas
	var canvas = document.createElement("canvas");
	var ctx = canvas.getContext('2d');
	//    瓦片canvas
	var tCanvas = document.createElement("canvas");
	var tctx = tCanvas.getContext("2d");
	var maxsize = 100 * 1024;
	$("#upload").on("click", function () {
		filechooser.click();
	})
			.on("touchstart", function () {
				$(this).addClass("touch")
			})
			.on("touchend", function () {
				$(this).removeClass("touch")
			});
	filechooser.onchange = function () {
		if (!this.files.length) return;
		var files = Array.prototype.slice.call(this.files);
		if (files.length > 9) {
			alert("最多同时只可上传9张图片");
			return;
		}
		files.forEach(function (file, i) {
			if (!/\/(?:jpeg|png|gif)/i.test(file.type)) return;
			var reader = new FileReader();
			var li = document.createElement("li");
//          获取图片大小
			var size = file.size/1024 > 1024 ? (~~(10*file.size/1024/1024))/10 + "MB" :  ~~(file.size/1024) + "KB";
			li.innerHTML = '<div class="progress"><span></span></div><div class="size">'+size+'</div>';
			$(".img-list").append($(li));
			reader.onload = function () {
				var result = this.result;
				var img = new Image();
				img.src = result;
				$(li).css("background-image", "url(" + result + ")");
				//如果图片大小小于100kb，则直接上传
				if (result.length <= maxsize) {
					img = null;
					upload(result, file.type, $(li));
					return;
				}
//                图片加载完毕之后进行压缩，然后上传
				if (img.complete) {
					callback();
				} else {
					img.onload = callback;
				}
				function callback() {
					var data = compress(img);
					upload(data, file.type, $(li));
					img = null;
				}
			};
			reader.readAsDataURL(file);
		})
	};
	//    使用canvas对大图片进行压缩
	function compress(img) {
		var initSize = img.src.length;
		var width = img.width;
		var height = img.height;
		//如果图片大于四百万像素，计算压缩比并将大小压至400万以下
		var ratio;
		if ((ratio = width * height / 4000000)>1) {
			ratio = Math.sqrt(ratio);
			width /= ratio;
			height /= ratio;
		}else {
			ratio = 1;
		}
		canvas.width = width;
		canvas.height = height;
//        铺底色
		ctx.fillStyle = "#fff";
		ctx.fillRect(0, 0, canvas.width, canvas.height);
		//如果图片像素大于100万则使用瓦片绘制
		var count;
		if ((count = width * height / 1000000) > 1) {
			count = ~~(Math.sqrt(count)+1); //计算要分成多少块瓦片
//            计算每块瓦片的宽和高
			var nw = ~~(width / count);
			var nh = ~~(height / count);
			tCanvas.width = nw;
			tCanvas.height = nh;
			for (var i = 0; i < count; i++) {
				for (var j = 0; j < count; j++) {
					tctx.drawImage(img, i * nw * ratio, j * nh * ratio, nw * ratio, nh * ratio, 0, 0, nw, nh);
					ctx.drawImage(tCanvas, i * nw, j * nh, nw, nh);
				}
			}
		} else {
			ctx.drawImage(img, 0, 0, width, height);
		}
		//进行最小压缩
		var ndata = canvas.toDataURL('image/jpeg', 0.1);
		console.log('压缩前：' + initSize);
		console.log('压缩后：' + ndata.length);
		console.log('压缩率：' + ~~(100 * (initSize - ndata.length) / initSize) + "%");
		tCanvas.width = tCanvas.height = canvas.width = canvas.height = 0;
		return ndata;
	}
	//    图片上传，将base64的图片转成二进制对象，塞进formdata上传
	function upload(basestr, type, $li) {
		// 发送到后端
		var xhr = new XMLHttpRequest();
		var data = {
			base64: basestr,
			size: basestr.length // 校验用，防止未完整接收
		};

		$.ajax({
			type: "POST",
			url: "/pictureUploadController/uploadPic.do",
			data: data,
			dataType:"json",
			success: function(data){
				var path = data.path;   //文件名称
				var src="../uploads/"+path;
				alert("src:"+src);
				$("#gimage_pic").attr("src", "../uploads/"+path);   //要显示的图片
				$("#gimage_lb").val(path);   //文件名称
			},
			complete :function(XMLHttpRequest, textStatus){
			},
			error:function(XMLHttpRequest, textStatus, errorThrown){ //上传失败
				//alert(XMLHttpRequest.status);
				//alert(XMLHttpRequest.readyState);
				//alert(textStatus);
			}
		});
		/*var text = window.atob(basestr.split(",")[1]);
		var buffer = new Uint8Array(text.length);
		var pecent = 0 , loop = null;
		for (var i = 0; i < text.length; i++) {
			buffer[i] = text.charCodeAt(i);
		}
		var blob = getBlob(buffer, type);
		var xhr = new XMLHttpRequest();
		var formdata = new FormData();
		formdata.append('imagefile', blob);*/
		/*xhr.open('post', '/cupload');*/
		/*xhr.onreadystatechange = function () {
			*//* if (xhr.readyState == 4 && xhr.status == 200) {
			 var jsonData = JSON.parse(xhr.responseText);
			 console.log('上传成功：' + jsonData[0].path);
			 clearInterval(loop);
			 //当收到该消息时上传完毕
			 $li.find(".progress span").animate({'width': "100%"}, pecent < 95 ? 200 : 0, function () {
			 $(this).html("上传成功");
			 });
			 //$(".pic-list").append('<a href="' + jsonData[0].path + '">' +jsonData[0].path + '（' + jsonData

			 //[0].size+'）<img src="' + jsonData[0].path + '" /></a>');
			 }*//*
		};*/
		//数据发送进度，前50%展示该进度
		/*xhr.upload.addEventListener('progress', function (e) {
			if (loop) return;
			pecent = ~~(100 * e.loaded / e.total) / 2;
			$li.find(".progress span").css('width', pecent + "%");
			if (pecent == 50) {
				mockProgress();
			}
		}, false);*/
		//数据后50%用模拟进度
		/*function mockProgress() {
			if (loop) return;
			loop = setInterval(function () {
				pecent++;
				$li.find(".progress span").css('width', pecent + "%");
				if (pecent == 99) {
					clearInterval(loop);
				}
			}, 100)
		}*/
		/*xhr.send(formdata);*/
	}
	// 获取blob对象的兼容性写法
	function getBlob(buffer, format){
		var Builder = window.WebKitBlobBuilder || window.MozBlobBuilder;
		if(Builder){
			var builder = new Builder;
			builder.append(buffer);
			return builder.getBlob(format);
		} else {
			return new window.Blob([ buffer ], {type: format});
		}
	}

</script>
</html>