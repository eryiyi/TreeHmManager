<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>花木通注册</title>
	<meta name="Keywords" content="花木通,花木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会" />
	<meta name="Description" content="花木通是最优秀的花木信息软件，为客户提供最优质的服务" />
	<meta property="og:title" content="花木通_注册"  />
	<meta property="og:description" content="花木通_注册" />
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
			<h1 class="head-title">注册</h1>
		</div>
	</div>
	<!-- CONTENT -->
	<div class="content regist w85">
		<div class="input-group-regist"><span>手机号</span>
			<input type="number" placeholder="手机号" id="mm_emp_mobile"></div>
		<div class="input-group-regist"><span>密码</span><input  placeholder="密码" type="password" id="mm_emp_password" name="mm_emp_password"></div>
		<div class="input-group-regist"><span>确认密码</span><input type="password" placeholder="确认密码" id="mm_emp_surepwr" name="mm_emp_surepwr"></div>
		<%--<div class="input-group-regist verify">--%>
			<%--<span>验证码</span>--%>
			<%--<a class="fill-orange radius">获取验证码</a>--%>
			<%--<input type="number">--%>
		<%--</div>--%>
		<div class="input-group-regist"><span>姓名</span><input placeholder="请输入真实姓名" type="text" id="mm_emp_nickname" name="mm_emp_nickname"></div>
		<div class="input-group-regist"><span>身份证号</span><input placeholder="请输入身份证号" type="number" id="mm_emp_card" name="mm_emp_card"></div>
		<%--<div class="select-group mt2 mb2"><span>注册类型</span>--%>
			<%--<select name="mm_emp_type" id="mm_emp_type" class="bg-f2">--%>
				<%--<option value="0">苗木经营户</option>--%>
				<%--<option value="1">苗木会员</option>--%>
			<%--</select>--%>
		<%--</div>--%>
		<%--<div class="input-group-regist"><span>公司名称</span><input type="text" placeholder="请输入公司名称，20字以内" id="mm_emp_company" name="mm_emp_company"></div>--%>
		<%--<div class="select-group mt2 mb2"><span>公司类型</span>--%>
			<%--<select name="mm_emp_company_type" id="mm_emp_company_type" class="bg-f2" >--%>
				<%--<option value="0">苗木</option>--%>
				<%--<option value="1">园林</option>--%>
			<%--</select>--%>
		<%--</div>--%>
		<%--<div class="input-group-regist"><span>公司地址</span><input  placeholder="请输入公司地址"  type="text" id="mm_emp_company_address" name="mm_emp_company_address"></div>--%>
		<div class="select-group mt2 mb2"><span>-（省）</span>

			<select class="bg-f2" name="mm_emp_provinceId" id="mm_emp_provinceId" onchange="selectCitys()">
				<option value="">--选择省份--</option>
				<c:forEach items="${listProvinces}" var="e" varStatus="st">
					<option value="${e.provinceID}" >${e.province}</option>
				</c:forEach>
			</select>

		</div>
		<div class="select-group mt2 mb2"><span>--（市）</span>
			<select class="bg-f2" id="mm_emp_cityId" onchange="selectCountrys()">
				<option value="">--选择城市--</option>
				<c:forEach items="${listCitys}" var="e" varStatus="st">
					<option value="${e.cityID}" >${e.city}</option>
				</c:forEach>
			</select>
		</div>
		<div class="select-group mt2 mb2"><span>---（县）</span>
			<select class="bg-f2" id="mm_emp_countryId" >
				<option value="">--选择县区--</option>
				<c:forEach items="${listsCountry}" var="e" varStatus="st">
					<option value="${e.areaID}" >${e.area}</option>
				</c:forEach>
			</select>
		</div>
		<button class="button fill-blue mt3 w10 t-sh mb4" type="submit" onclick="reg()">注册</button>
		</div>
	<!-- TOOLBAR -->
	<div class="toolbar">
		<a href="javaScript:void(0)" onclick="toPage('/webv/toIndex.do','1')" class="buy buy-active"></a>
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

	function reg(){
		var mm_emp_mobile = $("#mm_emp_mobile").val();
		var mm_emp_card = $("#mm_emp_card").val();
		var mm_emp_nickname = $("#mm_emp_nickname").val();
		var mm_emp_password = $("#mm_emp_password").val();
		var mm_emp_surepwr = $("#mm_emp_surepwr").val();
//		var mm_emp_type = $("#mm_emp_type").val();
//		var mm_emp_company = $("#mm_emp_company").val();
//		var mm_emp_company_type = $("#mm_emp_company_type").val();
//		var mm_emp_company_address = $("#mm_emp_company_address").val();
//		var mm_emp_company_detail = $("#mm_emp_company_detail").val();
//		var mm_emp_company_url = $("#mm_emp_company_url").val();
		var mm_emp_provinceId = $("#mm_emp_provinceId").val();
		var mm_emp_cityId = $("#mm_emp_cityId").val();
		var mm_emp_countryId = $("#mm_emp_countryId").val();


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
		if(mm_emp_nickname.replace(/\s/g, '') == ''){
			alert("姓名不能为空");
			return;
		}
		if(mm_emp_nickname.length>10 || mm_emp_nickname.length<2){
			alert("姓名2到10个字以内");
			return;
		}
		if(mm_emp_card.replace(/\s/g, '') == ''){
			alert("身份证号不能为空");
			return;
		}
		if(mm_emp_card.length != 18){
			alert("身份证号格式不正确");
			return;
		}
//		if(mm_emp_type.replace(/\s/g, '') == ''){
//			alert("请选择注册类型");
//			return;
//		}
//		if(mm_emp_company.replace(/\s/g, '') == ''){
//			alert("公司名称不能为空");
//			return;
//		}
//		if(mm_emp_company.length > 20){
//			alert("公司名称20字以内");
//			return;
//		}
//		if(mm_emp_company_type.replace(/\s/g, '') == ''){
//			alert("请选择公司类型");
//			return;
//		}
//		if(mm_emp_company_address.replace(/\s/g, '') == ''){
//			alert("请输入公司地址");
//			return;
//		}
//		if(mm_emp_company_address.length > 30){
//			alert("公司地址30字以内");
//			return;
//		}
		if(mm_emp_provinceId.replace(/\s/g, '') == ''){
			alert("请选择省份");
			return;
		}
		if(mm_emp_cityId.replace(/\s/g, '') == ''){
			alert("请选择城市");
			return;
		}
		if(mm_emp_countryId.replace(/\s/g, '') == ''){
			alert("请选择县区");
			return;
		}
		$.ajax({
			cache: true,
			type: "POST",
			url:"/webvRegController/empReg.do",
			data:{
				"mm_emp_mobile":mm_emp_mobile,
				"mm_emp_nickname":mm_emp_nickname,
				"mm_emp_card":mm_emp_card,
				"mm_emp_type":"1",
				"mm_emp_password":mm_emp_password,
				"mm_emp_company":"",
				"mm_emp_company_type":"0",
				"mm_emp_company_address":"",
				"mm_emp_company_detail":"",
				"mm_emp_company_url":"",
				"mm_emp_provinceId":mm_emp_provinceId,
				"mm_emp_cityId":mm_emp_cityId,
				"mm_emp_countryId":mm_emp_countryId,
				"mm_emp_endtime":"",
				"mm_level_id":"",
				"mm_emp_beizhu":"",
				"mm_emp_msg_num":"0",
				"is_login":"0",
				"is_fabugongying":"0",
				"is_fabuqiugou":"0",
				"is_fabugongying_see":"0",
				"is_fabuqiugou_see":"0",
				"is_see_all":"0",
				"is_pic":"0",
				"is_chengxin":"0",
				"is_miaomu":"0",
				"is_use":"0",
				"ischeck":"0"
			},
			async: false,
			success: function(_data) {
				var data = $.parseJSON(_data);
				if(data.success){
					alert("注册成功");
					//登录页面跳转
					window.location.href="/webvLoginController/toLogin.do";
				}else{
					var _case = {1:"注册失败",2:"该手机号已经注册，请换个手机号试试"};
					alert(_case[data.code])
				}
			}
		});
	}

	function selectCitys(){
		var citys = ${listCitysAll};
		var province = $("#mm_emp_provinceId").val();
		var ret = '';
		for(var i= citys.length-1; i>=0; i-- ){
			if(citys[i].father==province){
				ret += "<option value='"+citys[i].cityID+"'>"+citys[i].city+"</option>";
			}
		}
		$("#mm_emp_cityId").html(ret);
	};

	function selectCountrys(){
		var countrys = ${listsCountryAll};
		var city = $("#mm_emp_cityId").val();
		var ret = '';
		for(var i= countrys.length-1; i>=0; i-- ){
			if(countrys[i].father==city){
				ret += "<option value='"+countrys[i].areaID+"'>"+countrys[i].area+"</option>";
			}
		}
		$("#mm_emp_countryId").html(ret);
	};

</script>
</html>