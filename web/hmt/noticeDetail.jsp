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
  <title>花木通|通知详情</title>
  <meta name="keywords" content="花木通,苗木,花木,苗木交易,花木求购,苗木求购,花木资讯,花木论坛,花木销售,苗木销售,苗木资讯,绿化苗木">
  <meta name="Description" content=" 花木通是惠民县本地第一苗木供求信息平台、信息通讯平台，突破了苗木大市场、绿化工程公司、经纪人、苗农之间的信息壁垒，让市场订单苗木不愁买，苗农种植苗木不愁卖！为本地苗木行业发展助力，让经纪人足不出户，随时随地做生意！让苗农及时了解市场行情，苗木卖价更高更容易！">
  <link href="../hmt/css/common/index-type.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/common/common.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/common/base.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/frame.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/category-vegetable/common.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/search/style.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/search/base.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/supply/index.css" rel="stylesheet" type="text/css" />

  <link href="../hmt/css/purchase/details.css" rel="stylesheet" type="text/css" />

  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/md5.js"></script>
  <script type="text/javascript" src="../js/cookie.js"></script>
  <script type="text/javascript" src="../js/ajaxfileupload.js"></script>
  <script type="text/javascript" src="../js/Util.js"></script>
  <script type="text/javascript" src="../js/validation.js"></script>
  <script language="javascript" src="../js/jquery.js"></script>
  <script type="text/javascript" src="../js/jquery_latest.js"></script>

  <style type="text/css">
    #bd #detail a.rr-taobao-big
    {
      float: left;
      line-height: 38px;
      padding: 0 15px;
      font-size: 14px;
      border-radius: 2px;
      margin-left: 8px;
      border: 1px #f40 solid;
    }
    #bd #detail a.rrfl-before-big
    {
      background: #f40;
      color: #fff;
    }
    #bd #detail a.rrfl-before-big:hover
    {
      background: #f20;
    }
    #bd #detail a.rrfl-after-big
    {
      background: #fff;
      color: #f40;
    }
    #bd #detail a.rrfl-after-big:hover
    {
      background: #fff;
    }
    #bd #detail a.rr-taobao-normal
    {
      display: inline-block;
      padding: 0 5px;
      border-radius: 2px;
      line-height: 23px;
      margin-left: 5px;
      border: 1px #ff8e1b solid;
    }
    #bd #detail a.rr-taobao-normal:hover
    {
      background: #f60;
    }
    #bd #detail a.rrfl-before-normal
    {
      background: #ff8e1b;
      color: #fff;
    }
    #bd #detail a.rrfl-before-normal:hover
    {
      background: #f60;
    }
    #bd #detail a.rrfl-after-normal
    {
      background: #fff;
      color: #ff8e1b;
    }
    #bd #detail a.rrfl-after-normal:hover
    {
      background: #fff;
    }
    #page a.rr-tmall-big, #page a.rr-tmall-normal
    {
      display: inline-block;
      line-height: 30px;
      padding: 0 10px;
      border-radius: 2px;
      margin-left: 12px;
      border: 1px #c40000 solid;
    }
    #page .tb-attention a.rr-tmall-big, #page .tb-attention a.rr-tmall-normal
    {
      position: absolute;
      right: 50px;
    }
    #page a.rrfl-after-big, #page a.rrfl-after-normal
    {
      background: #fff;
      color: #c40000;
    }
    #page a.rrfl-after-big:hover, #page a.rrfl-after-normal:hover
    {
      background: #fff;
      text-decoration: none;
    }
    #page a.rrfl-before-big, #page a.rrfl-before-normal
    {
      background: #c40000;
      color: #fff;
    }
    #page a.rrfl-before-big:hover, #page a.rrfl-before-normal:hover
    {
      background: #c40000;
      text-decoration: none;
    }
    #itemInfo #choose-btn-append a.rr-jd-big, #itemInfo #choose-btn-append a.rr-jd-normal
    {
      line-height: 36px;
      background-color: rgb(222, 53, 60);
      color: #f0f0f0;
      padding: 0 10px;
      border-radius: 2px;
      text-shadow: 1px 1px 1px #999;
    }
    #itemInfo #choose-btn-append a.rr-jd-big:hover, #itemInfo #choose-btn-append a.rr-jd-normal:hover
    {
      background-color: rgb(237, 82, 87);
      color: #f0f0f0;
      padding: 0 10px;
      border-radius: 2px;
      text-shadow: 1px 1px 1px #999;
    }
  </style>
</head>
<body>

<!-- 顶部 -->
<div class="topbar">
  <div class="container clearfix">
    <ul class="top-login fl">
      <li class="dropdown">
        <div class="dropdown-label dl-city">
          <i>&nbsp;</i><span class="tit">所在地：</span><span id="topbar_address">山东</span></div>
        <div class="dropdown-layer dd-city-list">
          <div class="list">
            <a data-id="45081" href="javascript:void(0)">北京</a><a data-id="45083" href="javascript:void(0)">上海</a><a
                  data-id="45082" href="javascript:void(0)">天津</a><a data-id="45084" href="javascript:void(0)">重庆</a><a
                  data-id="3" href="javascript:void(0)">河北</a><a data-id="4" href="javascript:void(0)">山西</a><a
                  data-id="16" href="javascript:void(0)">河南</a><a data-id="6" href="javascript:void(0)">辽宁</a><a
                  data-id="7" href="javascript:void(0)">吉林</a><a data-id="8" href="javascript:void(0)">黑龙江</a><a
                  data-id="5" href="javascript:void(0)">内蒙古</a><a data-id="10" href="javascript:void(0)">江苏</a><a
                  data-id="15" href="javascript:void(0)" class="selected">山东</a><a data-id="12" href="javascript:void(0)">安徽</a><a
                  data-id="11" href="javascript:void(0)">浙江</a><a data-id="13" href="javascript:void(0)">福建</a><a
                  data-id="17" href="javascript:void(0)">湖北</a><a data-id="18" href="javascript:void(0)"
                                                                  class="">湖南</a>
            <a data-id="19" href="javascript:void(0)">广东</a>
            <a data-id="20" href="javascript:void(0)">广西</a><a
                  data-id="14" href="javascript:void(0)">江西</a><a data-id="23" href="javascript:void(0)">四川</a><a
                  data-id="21" href="javascript:void(0)">海南</a><a data-id="24" href="javascript:void(0)">贵州</a><a
                  data-id="25" href="javascript:void(0)">云南</a><a data-id="26" href="javascript:void(0)">西藏</a><a
                  data-id="27" href="javascript:void(0)">陕西</a><a data-id="28" href="javascript:void(0)">甘肃</a><a
                  data-id="29" href="javascript:void(0)">青海</a><a data-id="30" href="javascript:void(0)">宁夏</a><a
                  data-id="31" href="javascript:void(0)">新疆</a><a data-id="32" href="javascript:void(0)">台湾</a><a
                  data-id="33" href="javascript:void(0)">香港</a><a data-id="34" href="javascript:void(0)">澳门</a></div>
        </div>
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
              <a href="javascript:void(0)" onclick="quiteClick()">
                退出</a></div>
          </li>
          <li>
            <div class="label pr">
              <a href="javascript:void(0)" class="msg">消息<span class="msg-mark"></span></a></div>
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
          <a href="index.htm">花木通求购信息</a></div>
      </li>

      <c:if test="${is_login=='1'}">
        <li>
          <div class="label">
            <a href="buyer/main.htm" rel="nofollow">我的中心</a>
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
          <i>&nbsp;</i><span><a href="#" target="_blank" rel="nofollow">帮助中心</a></span></div>
        <div class="dropdown-layer dd-help-center">
          <p>
            <a href="#" target="_blank" rel="nofollow">常见问题</a><a
                  href="#" target="_blank" rel="nofollow">联系客服</a></p>
        </div>
      </li>
    </ul>
  </div>
</div>
<!--头部 导航-->


<!--内容-->
<input type="hidden" id="is_login" name="is_login" value="${is_login}">
<input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">
<input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${recordVO.mm_emp_id}">
<!--banner-->
<div class="blank_10"></div>
<div class="container wrap-1190">
  <!--// banner-->
  <div class="position">
    <a href="/hmtIndex/toIndex.do?page=1">花木通信息平台</a> &gt; <a href="javascript:void(0)">
   <a  href="/netNoticeController/list.do?page=1">通知列表</a>
  </a>
  </div>
  <!--内容 start-->
  <div class="info-details">
    <!-- details -->
    <ul class="details-title">
      <li class="details-times">发布时间：${notice.dateline}</li>
      <li class="details-certification">

      </li>

    </ul>
    <div class="details ">

      <ul class="details-content">
        <li class="c1">
          <p class="c1-name">
          ${notice.mm_notice_title}
          </p>
        </li>
        <li>

        </li>
        <li>
          <p>${notice.mm_notice_content}</p>
        </li>
      </ul>

    </div>
    <!-- //details -->

  </div>
  <!--内容 end-->
  <div class="sides">
    <div class="ad2">
      <a href="javaScript:void(0)" target="_target" title="点击进入花更少的钱 买更好的蛋页面" rel="nofollow">
        <img src="../hmt/images/B7FB71C00EChRkRlcDJuSAR_zUAAEs43XuKFw721.jpg" alt="这是一张花更少的钱 买更好的蛋的展示图片" width="216" height="353">
      </a>
    </div>

    <div class="hot-purchase mtb_15">
      <h2>最热采购</h2>
      <ul class="hotwords clearfix">

        <li class="li_0 li_color_0 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="玉米">
            玉米
          </a>
        </li>

        <li class="li_1 li_color_1 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="苹果">
            苹果
          </a>
        </li>

        <li class="li_2 li_color_0 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="大米">
            大米
          </a>
        </li>

        <li class="li_3 li_color_0 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="鸡蛋">
            鸡蛋
          </a>
        </li>

        <li class="li_4 li_color_0 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="鸡">
            鸡
          </a>
        </li>

        <li class="li_5 li_color_1 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="小麦">
            小麦
          </a>
        </li>

        <li class="li_6 li_color_1 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="其它蔬果加工">
            其它蔬果加工
          </a>
        </li>

        <li class="li_7 li_color_0 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="蜂蜜">
            蜂蜜
          </a>
        </li>

        <li class="li_8 li_color_0 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="肥料">
            肥料
          </a>
        </li>

        <li class="li_9 li_color_1 button-slide">
          <a href="purchasedetail.htm" target="_blank" class="hotwords_li_a" title="土豆">
            土豆
          </a>
        </li>

      </ul>
    </div>

  </div>
</div>
<!--页脚footer-->

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

<script type="text/javascript" charset="UTF-8">

  function login(){
    //登录页面跳转
    window.location.href="/netLoginController/toLogin.do";
  }

  function favourClick(_mm_msg_id){
    //先判断是否登录
    var is_login = $("#is_login").val();
    if(is_login == 1){
      //登陆了
      var mm_emp_id = $("#mm_emp_id").val();
      var accessToken = $("#accessToken").val();
      $.ajax({
        cache: true,
        type:"POST",
        url:"/saveFavour.do",
        data:{"mm_msg_id":_mm_msg_id, "accessToken":accessToken, "mm_emp_id":mm_emp_id},
        async: false,
        success:function(_data){
          var data = $.parseJSON(_data);
          if(data.success){
            alert("收藏成功");
          }else{
            var _case = {1:"收藏失败", 2:"已经收藏，不能重复收藏！",9:"账号过期，请重新登录！"};
            alert(_case[data.code])
          }
        }
      });
    }else{
      //没登陆
      alert("请先登录");
    }
  }

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

  function showDetail(_mm_msg_id){
    var is_login = $("#is_login").val();
    if(is_login == 1){
      window.location.href="/netRecordController/toDetail.do?mm_msg_id="+_mm_msg_id;
    }else{
      //没登陆
      alert("请先登录");
    }

  }
</script>
</html>