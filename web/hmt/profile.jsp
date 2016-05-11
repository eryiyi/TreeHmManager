<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="../img/icon.png" type="image/png" />
  <meta name="renderer" content="webkit">
  <title>花木通|个人主页</title>
  <meta name="keywords" content="花木通,惠民,苗木,花木,苗木交易,花木求购,苗木求购,花木资讯,花木论坛,花木销售,苗木销售,苗木资讯,绿化苗木,花草,苗联通,白蜡,园林,惠民皂户李镇,苗木协会">
  <meta name="Description" content=" 花木通是惠民县本地第一苗木供求信息平台、信息通讯平台，突破了苗木大市场、绿化工程公司、经纪人、苗农之间的信息壁垒，让市场订单苗木不愁买，苗农种植苗木不愁卖！为本地苗木行业发展助力，让经纪人足不出户，随时随地做生意！让苗农及时了解市场行情，苗木卖价更高更容易！">
  <link href="../hmt/css/common/index-type.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/common/common.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/common/base.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/frame.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/category-vegetable/common.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/search/style.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/search/base.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/supply/index.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/buyercommon/base.min.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/buyercommon/common.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/buyer/index.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/buyer/common.css" rel="stylesheet" type="text/css" />

  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/md5.js"></script>
  <script type="text/javascript" src="../js/cookie.js"></script>
  <script type="text/javascript" src="../js/ajaxfileupload.js"></script>
  <script type="text/javascript" src="../js/Util.js"></script>
  <script type="text/javascript" src="../js/validation.js"></script>
  <script language="javascript" src="../js/jquery.js"></script>
  <script type="text/javascript" src="../js/jquery_latest.js"></script>

</head>
<body>
<div class="topbar">
  <div class="container clearfix">
    <ul class="top-login fl">

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
            <a href="javascript:void(0)" target="_blank" rel="nofollow">常见问题</a><a
                  href="javascript:void(0)" target="_blank" rel="nofollow">联系客服</a></p>
        </div>
      </li>
    </ul>
  </div>
</div>

<div class="header">
  <div class="wrap">
    <a href="javascript:void(0)" target="_blank" class="logo"><img src="../hmt/images/category-vegetable/logo_type.png" width="194px" height="38px"></a>
    <div class="webname">
      <h2>用户中心</h2>
      <span>${emp.mm_emp_nickname}</span>
    </div>
  </div>
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
  function reg(){
    //注册页面跳转
    window.location.href="/netRegController/toReg.do";
  }
  function toPage(_url, _page){
    if(_page != ''){
      window.location.href=_url+"?page="+_page;
    }else{
      window.location.href=_url;
    }
  }

  function login(){
    //登录页面跳转
    window.location.href="/netLoginController/toLogin.do";
  }
</script>

<script type="text/javascript" charset="UTF-8">
  function quiteClick(){
    //退出
    $.ajax({
      cache: true,
      type:"POST",
      url:"/netLoginController/toQuite.do",
      data:{},
      async: false,
      success:function(_data){
        var data = $.parseJSON(_data);
        if(data.success){
          alert("您已退出账号，请重新登录！");
          window.location.href="/netLoginController/toLogin.do";
        }else{
          var _case = {1:"退出账号失败！", 9:"账号过期，请重新登录！"};
          alert(_case[data.code])
        }
      }
    });
  }

</script>

</html>

