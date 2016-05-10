<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="logo.ico" type="image/x-icon" />
  <meta name="renderer" content="webkit">
  <title>花木通|修改密码</title>
  <meta name="keywords" content="花木通,惠民,苗木,花木,苗木交易,花木求购,苗木求购,花木资讯,花木论坛,花木销售,苗木销售,苗木资讯,绿化苗木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会">
  <meta name="Description" content=" 花木通是惠民县本地第一苗木供求信息平台、信息通讯平台，突破了苗木大市场、绿化工程公司、经纪人、苗农之间的信息壁垒，让市场订单苗木不愁买，苗农种植苗木不愁卖！为本地苗木行业发展助力，让经纪人足不出户，随时随地做生意！让苗农及时了解市场行情，苗木卖价更高更容易！">
  <link href="../hmt/css/base.min.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/common/common.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/common/base.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/frame.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/pass/WdatePicker.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/pass/common(1).css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/pass/common(2).css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/pass/password.css" rel="stylesheet" type="text/css" />



  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/md5.js"></script>
  <script type="text/javascript" src="../js/cookie.js"></script>
  <script type="text/javascript" src="../js/ajaxfileupload.js"></script>
  <script type="text/javascript" src="../js/Util.js"></script>
  <script type="text/javascript" src="../js/validation.js"></script>
  <script type="text/javascript" src="../js/jquery_latest.js"></script>


</head>
<body>

<!-- header -->

<!-- <div></div> --><!--整行替换成网站头部-->

<!-- 顶部 -->
<div class="topbar">
  <div class="container clearfix">
    <ul class="top-login fl">
      <li class="dropdown">
        <div class="dropdown-label dl-city">
          <i>&nbsp;</i><span class="tit">点击选择区域</span></div>
      </li>

      <c:if test="${is_login=='1'}">
        <ul class="fl">
          <li>
            <div class="label" id="userName">
              <a href="javascript:void(0)">${emp.mm_emp_nickname}</a>
            </div>
          </li>
          <li>
            <div class="label o-login">
              <a href="javascript:void(0)" onclick="quiteClick()">退出</a></div>
          </li>
          <li>
            <div class="label pr">
              <a href="/netNoticeController/list.do?page=1" class="msg">消息<span class="msg-mark"></span></a></div>
          </li>
        </ul>
      </c:if>

      <ul class="fl">
        <li class="label orange">您好，欢迎来到花木通信息平台</li>
        <c:if test="${is_login=='0'}">
          <li class="label p-login">
            <a title="马上登录，享受更多会员专享服务" href="javascript:void(0)" onclick="login()"
               rel="nofollow">请登录</a>
          </li>
          <li class="label">
            <a title="马上注册，共享无限农业商机" href="javascript:void(0)" onclick="reg()"
               rel="nofollow">免费注册 </a>
          </li>
        </c:if>
      </ul>

    </ul>
    <ul class="top-nav fr">
      <li id="hn_home_id">
        <div class="label">
          <a href="/hmtIndex/toIndex.do?page=1">花木通求购信息</a></div>
      </li>

      <c:if test="${is_login=='1'}">
        <li>
          <div class="label">
            <a href="/netCenterController/toCenter.do" rel="nofollow">我的中心</a>
          </div>
        </li>
      </c:if>

      <li class="dropdown">
        <div class="dropdown-label">
          <i>&nbsp;</i><span><a href="javaScript:void(0)" target="_blank"
                                rel="nofollow">手机花木通</a></span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode">
            <img src="../hmt/images/category-vegetable/topbar-hn-app.png" alt="手机花木通">
            <p>
              <span>扫一扫下载</span><span>手机花木通App</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown">
        <div class="dropdown-label">
          <i>&nbsp;</i><span>关注花木通</span></div>
        <div class="dropdown-layer dd-hn-qrcode">
          <div class="qrcode">
            <img src="../hmt/images/category-vegetable/topbar-hn-weixin.png" alt="花木通官方微信">
            <p>
              <span>扫码关注</span><span>花木通官方微信</span></p>
          </div>
        </div>
      </li>
      <li class="dropdown">
        <div class="dropdown-label">
          <i>&nbsp;</i><span><a href="javascript:void(0)" target="_blank" rel="nofollow">帮助中心</a></span></div>
        <div class="dropdown-layer dd-help-center">
          <p>
            <a href="/netWeixinController/toKefu.do" target="_blank" rel="nofollow">微信客服</a>
            <a href="/netKefuController/toKefu.do" target="_blank" rel="nofollow">电话客服</a></p>
        </div>
      </li>
    </ul>
  </div>
</div>
<div class="header">
  <div class="wrap">
    <a href="http://www.cnhnb.com/" target="_blank" class="logo"><img src="./修改个人密码_files/logo.png"></a>
    <div class="webname">
      <h2>个人中心:修改密码</h2>
      <span>www.huamutong.com</span>
    </div>
  </div>
</div>
<!--头部 导航-->

<!-- main -->
<div class="main wrap">



  <!-- frame-container -->
  <div class="frame-container">
    <!-- Content Start -->
    <div class="content">
      <div id="updatePassword" class="popbox">
        <div class="popcont">

            <table width="85%" cellspacing="0" cellpadding="0" border="0" class="zh_table">
              <tbody>
              <tr>
                <td width="4%">&nbsp;</td>
                <td class="t_r" width="24%">原始密码:</td>
                <td width="72%"><input type="password" id="pwr" name="oldPwd" minlength="6" class="inpt w150"><br><span style="color: red" class="upPwdErrInfo" id="oldPwdv"></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td class="t_r">新密码:</td>
                <td><input type="password" name="password" id="mm_emp_password" minlength="6" class="inpt w150"><br><span style="color: red" class="upPwdErrInfo" id="passwordv"></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td class="t_r">确认新密码:</td>
                <td><input type="password" minlength="6" maxlength="16" class="inpt w150" id="mm_emp_surepwr" name="newPwd1"><br><span style="color: red" class="upPwdErrInfo" id="newPwd1v"></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td> <input type="button" id="updatePasswordBtn" value="确定" onclick="findPwr()" class="btn_org"></td>
              </tr>
              </tbody></table>
        </div>
      </div>


    </div>
    <!-- Content End -->
  </div>
  <!-- frame-container /-->

</div>

<jsp:include page="footer.jsp" flush="true" />

<script src="../hmt/js/home.js" type="text/javascript"></script>
<script src="../hmt/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<!--首页右侧焦点图调用js-->
<!--搜索调用js 会将logo链接至生产-->
<script src="../hmt/js/top_foot.js" type="text/javascript"></script>
<script src="../hmt/js/vegetable.js" type="text/javascript"></script>
<!--蔬菜二级类目调用js--
</html>-->
</body>
<script>
  function findPwr(){
    var pwr = $("#pwr").val();
    var mm_emp_password = $("#mm_emp_password").val();
    var mm_emp_surepwr = $("#mm_emp_surepwr").val();
    if(pwr.replace(/\s/g, '') == ''){
      alert("原始密码不能为空");
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
      url:"/netUpdatePwrController/findPwr.do",
      data:{
        "mm_emp_mobile":pwr,
        "mm_emp_password":mm_emp_password

      },
      async: false,
      success: function(_data) {
        var data = $.parseJSON(_data);
        if(data.success){
          alert("修改密码成功");
        }else{
          var _case = {1:"更新密码失败",2:"原始密码错误"};
          alert(_case[data.code])
        }
      }
    });
  }
</script>
</html>