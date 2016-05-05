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
  <title>花木通|供需信息</title>
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
  <link href="../hmt/css/service.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/reset.css" rel="stylesheet" type="text/css" />

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
            <img src="../hmt/images/category-vegetable/topbar-hn-weixin.jpg" alt="花木通官方微信">
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
<!--页头top end /-->

<!-- container -->
<div class="container">

  <div class="wrap-990 pt_20 pb_20">
    <!--tabs-->
    <div class="hc-kf-tabs" id="hcKFTabs">
      <div class="tabHead clearfix">
        <div class="tabLabel current"><a href="http://help.cnhnb.com/service.htm#" rel="#tabID-0"><b>自助服务</b><em>极速</em><span>快速解决常见问题,自助,高效！</span></a></div>
        <div class="tabLabel"><a href="http://help.cnhnb.com/service.htm#" rel="#tabID-1"><b>在线QQ</b><em>极速</em><span>QQ在线为您提供各种在线专业咨询!</span></a></div>
        <div class="tabLabel"><a href="http://help.cnhnb.com/service.htm#" rel="#tabID-2"><b>惠农IM</b><em>极速</em><span>使用惠农原生通讯系统，在线咨询，轻松搞定！</span></a></div>
        <div class="tabLabel"><a href="http://help.cnhnb.com/service.htm#" rel="#tabID-3"><b>客服热线</b><em class="alert">繁忙</em><span>专业的人工电话服务热线，高峰期需要耐心等待。建议先使用自助服务或在线咨询。</span></a></div>
      </div>
      <div class="tabBody">

        <div id="tabID-0" class="tabContent" style="display: block;">
          <div class="wrapper mainWrap">
            <div class="wrap-tit clearfix"><h3 class="wrap-tit-l">热门自助服务</h3><p class="wrap-tit-r"><a href="http://help.cnhnb.com/index.htm" target="_blank">更多&gt;&gt;</a></p></div>
            <div class="wrap-inner">
              <ul class="hotBuzy clearfix">
                <li><a href="http://help.cnhnb.com/problem/detail/309" target="_blank"><span class="pwd"></span><em>找回密码</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9039.htm" target="_blank"><span class="shop"></span><em>店铺管理</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9015.htm" target="_blank"><span class="flow"></span><em>买卖流程及在线支付</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9038.htm" target="_blank"><span class="dist"></span><em>在线咨询</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9043.htm" target="_blank"><span class="anti"></span><em>交易防骗</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9033.htm" target="_blank"><span class="adv"></span><em>排名及广告服务</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9009.htm" target="_blank"><span class="vip"></span><em>会员服务 </em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9008.htm" target="_blank"><span class="real"></span><em>实名认证</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9028.htm" target="_blank"><span class="prd"></span><em>发布产品</em></a></li>
                <li><a href="http://help.cnhnb.com/problem/9026.htm" target="_blank"><span class="mobile"></span><em>手机惠农网</em></a></li>
              </ul>
            </div>
            <div class="wrap-btm clearfix"><div class="wrap-btm-l">&nbsp;</div><div class="wrap-btm-r">&nbsp;</div></div>
          </div><!--/.wrapper-->
          <div class="wrapper sideWrap">
            <div class="wrap-tit clearfix"><h3 class="wrap-tit-l">常见问题</h3><p class="wrap-tit-r"><a href="http://help.cnhnb.com/problem/" target="_blank">更多&gt;&gt;</a></p></div>
            <div class="wrap-inner p10">
              <ul class="faq_list">

                <li><a href="http://help.cnhnb.com/problem/detail/318" target="_blank" title="修改/绑定手机号">修改/绑定手机号</a></li>

                <li><a href="http://help.cnhnb.com/problem/detail/328" target="_blank" title="实名认证">实名认证</a></li>

                <li><a href="http://help.cnhnb.com/problem/detail/362" target="_blank" title="网站会员">网站会员</a></li>

                <li><a href="http://help.cnhnb.com/problem/detail/401" target="_blank" title="手机惠农网">手机惠农网</a></li>

                <li><a href="http://help.cnhnb.com/problem/detail/406" target="_blank" title="惠农网微信微博">惠农网微信微博</a></li>

                <li><a href="http://help.cnhnb.com/problem/detail/380" target="_blank" title="在线咨询">在线咨询</a></li>

              </ul>
            </div>
            <div class="wrap-btm clearfix"><div class="wrap-btm-l">&nbsp;</div><div class="wrap-btm-r">&nbsp;</div></div>
          </div><!--/.wrapper-->
          <div class="clear"></div>
        </div>

        <div id="tabID-1" class="tabContent" style="display: none;">
          <div class="service-qq">
            <p class="tit">人工服务时间：周一至周日 9:00-17:30</p>
            <div class="inner">
              <ul class="clearfix">
                <li class="guide">
                  <h4>操作指引</h4>
                  <p>在惠农网使用中遇到任<br>何问题请与我们联系</p>
                </li>
                <li class="advise">
                  <h4>投诉建议</h4>
                  <p>有投诉？没问题，我们会<br>虚心接受您的意见</p>
                </li>
                <li class="consult">
                  <h4>在线咨询</h4>
                  <p>专业客服为您提供在线服务<br>
                    <a class="btn-qq" href="http://b.qq.com/webc.htm?new=0&sid=4000088688&eid=218808P8z8p8q8Q8Q8q8x&o=www.cnhnb.com&q=7" target="_blank">立即咨询</a>
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div id="tabID-2" class="tabContent" style="display: none;">
          <div class="service-im">
            <p class="tit">人工服务时间：周一至周日 9:00-17:30</p>
            <div class="inner clearfix">
              <!-- IM上线前 -->
              <img src="./联系客服_帮助中心_files/service_im.jpg" width="928" height="304">
              <!-- IM上线后 -->
              <!--<div class="sign-in">
                  <h4>惠农IM</h4>
                  <p>原生惠农沟通平台，一键<a href="#">登录</a>，沟通无忧</p>
              </div>
              <ul class="bb-list">
                  <li class="on"><span>&nbsp;</span><a href="#">宝宝一号</a></li>
                  <li class="on"><span>&nbsp;</span><a href="#">宝宝二号</a></li>
                  <li class="on"><span>&nbsp;</span><a href="#">宝宝三号</a></li>
                  <li><span>&nbsp;</span><a href="#">宝宝四号</a></li>
                  <li><span>&nbsp;</span><a href="#">宝宝五号</a></li>
              </ul>-->
            </div>
          </div>
        </div>

        <div id="tabID-3" class="tabContent" style="display: none;">
          <img src="./联系客服_帮助中心_files/service_number.jpg" width="988" height="391" alt="">
        </div>

      </div>
    </div>
    <!--/tabs-->
  </div>

</div>
<!-- //container -->

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

  function showDetail(_mm_msg_id){
    window.location.href="/netRecordController/toDetail.do?mm_msg_id="+_mm_msg_id;
  }

  function login(){
    //登录页面跳转
    window.location.href="/netLoginController/toLogin.do";
  }
  function selectPro(){
    //页面跳转
    window.location.href="/webvSelectProvinceController/toSelectProvince.do";
  }

  function addMsg(){
    var is_login = $("#is_login").val();
    if(is_login == 1) {
      //登陆了
      if(${emp.is_upate_profile == '1'} ){
        window.location.href="/netAddRecordController/toAddRecord.do";
      }else{
        window.location.href="/webvProfile/toUpdateProfile.do";
      }

    }else{
      //登录页面跳转
      window.location.href="/netLoginController/toLogin.do";
    }
  }
</script>

<script type="text/javascript" charset="UTF-8">
  function searchIndex(e,_page){
    var _index = $("#index").val();
    var page = parseInt(_page);
    var size = $("#size").val();
    var keyword = $("#keyword").val();
    if(_index <= ${page.pageCount} && _index >= 1){
      window.location.href="/hmtIndex/toIndex.do?page="+_index+"&size="+size+"&keyword="+keyword;
    }else{
      alert("请输入1-${page.pageCount}的页码数");
    }
  }

  function nextPage(_page) {
    var page = parseInt(_page);
    var size = $("#size").val();
    var keyword = $("#keyword").val();
    addCookie("contract_size", size, 36);
    if ((page <= ${page.pageCount} && page >= 1)) {
      window.location.href="/hmtIndex/toIndex.do?page="+page+"&size="+size+"&keyword="+keyword;
    } else {
      alert("请输入1-${page.pageCount}的页码数");
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
</script>

</html>
