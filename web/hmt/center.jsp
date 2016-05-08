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
  <title>花木通|个人中心</title>
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

<div class="header">
  <div class="wrap">
    <a href="javascript:void(0)" target="_blank" class="logo"><img src="../hmt/images/category-vegetable/logo_type.png" width="194px" height="38px"></a>
    <div class="webname">
      <h2>用户中心</h2>
      <span>${emp.mm_emp_nickname}</span>
    </div>
  </div>

</div>
<div class="main wrap" style=" margin-top: 20px;">
  <div class="mains">
    <div class="mainL">
      <div class="info">
        <div class="userinfo">
          <em>
            <img src="${emp.mm_emp_cover}" width="66" height="66" id="userPic">
          </em>
          <div class="text">
            <div class="name">
              <strong>${emp.mm_emp_nickname}</strong>
              <a href="javascript:void(0);">
                <c:if test="${emp.mm_level_num==0}"><img src="../hmt/images/grade-1.png" alt="我的等级" title="县级会员，只能查看注册县区的信息" id="pointPic"></c:if>
                <c:if test="${emp.mm_level_num==1}"><img src="../hmt/images/grade-1.png" alt="我的等级" title="市级会员，只能查看注册地市的信息" id="pointPic"></c:if>
                <c:if test="${emp.mm_level_num==2}"><img src="../hmt/images/grade-1.png" alt="我的等级" title="省级会员，只能查看注册省份的信息" id="pointPic"></c:if>
                <c:if test="${emp.mm_level_num==3}"><img src="../hmt/images/grade-1.png" alt="我的等级" title="全国会员，能查看全部信息" id="pointPic"></c:if>
                <c:if test="${emp.mm_level_num==4}"><img src="../hmt/images/grade-1.png" alt="我的等级" title="顶级会员，能查看所有信息" id="pointPic"></c:if>
            </a>
            </div>
          </div>
        </div>
        <div class="userstate">
          <strong>账户状态：</strong> <span>
            <a href="javascript:void(0);"><img alt="手机认证" title="手机认证" src="../hmt/images/phone-yes.png"></a>
            <c:if test="${emp.is_miaomu=='1'}"><a href="javascript:void(0);"><img alt="诚信单位" title="诚信单位" src="/img/tree_icons_trust.png" style="width: 18px;height: 22px"></a></c:if>
			<c:if test="${emp.is_chengxin=='1'}"><a href="javascript:void(0);"><img alt="苗木会员" title="苗木会员" src="/img/tree_icons_group.png" style="width: 18px;height: 22px"></a></c:if>
	</span>
        </div>
        <div class="userbind userbind-buy">
          <ul>
            <li class="phone isbind"><em><a href="javascript:void(0);"></a></em>
              <span><a id="w3-2" href="javascript:void(0);">修改手机</a></span></li>
            <li class="email"><em><a href="javascript:void(0);"></a></em> <span>
              <a id="w3" href="javascript:void(0);">绑定邮箱</a></span></li>
            <li class="password"><em><a href="javascript:void(0);"></a></em>
              <span><a href="javascript:void(0);">修改密码</a></span></li>
          </ul>
        </div>
      </div>
      <div id="LEFT_FETURES">
        <%--<div class="left-side left-side-3" myid="BUYERS_LEFT_FIX_child0">--%>
          <%--<a href="http://hnuser.cnhnb.com/buyers/attention">--%>
            <%--<h2>我的关注</h2>--%>
            <%--<p>已关注   <span class="number">0</span> 个类别</p>--%>
          <%--</a>--%>
        <%--</div>--%>
        <div class="left-side left-side-4" myid="BUYERS_LEFT_FIX_child1">
        <a href="/netMineFavourController/favour.do?page=1">
          <h2>我的收藏</h2>
          <p> 已收藏 <span class="number">${count}</span> 条</p>
        </a>
      </div></div>
    </div>
    <div class="mainC">
      <!-- module -->
      <div class="module" id="MIDDEL_FETURES">
        <div class="modules modu-wdcg" myid="BUYES_MIDDLE_FEATURES_child0">
          <div class="title">
            <h2>短信平台</h2>
          </div>
          <div class="box">
            <a href="http://mhmt.sdhmmm.cn/loginFront.aspx" target="_blank">
              <h3>苗木通短信平台</h3>
              <p></p>
            </a>
          </div>
        </div><div class="modules modu-wdxd" myid="BUYES_MIDDLE_FEATURES_child1">
        <div class="title">
          <h2>我的关注</h2>
        </div>
        <div class="box">
          <a href="http://im.cnhnb.com" target="_blank">
            <h3>关注区域</h3>
            <p></p>
          </a>
        </div>
      </div><div class="modules modu-jygl" myid="BUYES_MIDDLE_FEATURES_child2">
        <div class="title">
          <h2>我的</h2>
        </div>
        <div class="box">
          <ul class="w594">
            <li class="link">
              <a href="/netNearbyController/nearby.do?page=1" class="number1"></a>
              <p class="txt"><img src="../hmt/images/jygl-ico-1.png"><span>经纪人</span></p>
            </li>
            <li class="line  w180"><span></span></li>
            <li class="link">
              <a href="/netKefuController/toKefu.do" class="number2"></a>
              <p class="txt"><img src="../hmt/images/jygl-ico-3.png"><span>客服中心</span></p>
            </li>
            <li class="line  w180"><span></span></li>
            <li class="link">
              <a href="/netWeixinController/toKefu.do" class="number3"></a>
              <p class="txt"><img src="../hmt/images/jygl-ico-4.png"><span>微信客服</span></p>
            </li>
          </ul>
        </div>
      </div></div>

      <%--<div class="ad-2">--%>
        <%--<a href="#" target="_blank"><img src="../hmt/images/AF443AL303ChRkRlcQolaAKmLNAADMTzN7IQA454.jpg" style="width:1190px;height:90px;"></a>--%>
      <%--</div>--%>
      <%--<div class="browseb-record">--%>
        <%--<!-- browseb-record -->--%>
        <%--<div class="title">最近浏览记录</div>--%>
        <%--<div class="norecord">亲~您还没有浏览过任何商品，赶紧去逛逛吧</div>--%>
      <%--</div>--%>
    </div>

  </div>
  <div class="mainR">
    <div class="plug">
      <h2>快捷入口</h2>
      <ul id="RIGHT_MENU">
        <li menuid="29">
          <a href="/netNoticeController/list.do?page=1">
            <em><img src="../hmt/images/tree_user_notice.png"></em>
            <span>公告信息</span>
          </a>
        </li>
        <li menuid="34">
        <a href="javascript:void(0)" target="_blank">
          <em><img src="../hmt/images/plug-7.png"></em>
          <span>公司招商</span>
        </a>
      </li>
        <li menuid="30">
        <a href="http://www.sdnxs.com/Channel/23166" target="_blank">
          <em><img src="../hmt/images/tree_user_bank.png"></em>
          <span>商业银行</span>
        </a>
      </li><li menuid="35">
        <a href="#">
          <em><img src="../hmt/images/tree_user_shop.png"></em>
          <span>苗木商店</span>
        </a>
      </li><li menuid="36">
        <a href="#">
          <em><img src="../hmt/images/tree_user_worker.png"></em>
          <span>装车工人</span>
        </a>
      </li><li menuid="37">
        <a href="#">
          <em><img src="../hmt/images/tree_user_package.png"></em>
          <span>物流中心</span>
        </a>
      </li><li menuid="32">
        <a href="#">
          <em><img src="../hmt/images/plug-3.png"></em>
          <span>嫁接团队</span>
        </a>
      </li>
        <li class="add" >
        <a href="javascript:void(0);">
          <em><img src="../hmt/images/tree_user_crane.png"></em>
          <span>吊车服务</span>
        </a>
      </li>
      </ul>
    </div>

    <div class="customer">
      <%--<a href="javascript:void(0);" class="btn help" id="newhelp">新版指南</a>--%>
      <%--<a href="#" target="_blank" class="btn old" id="enterold">更新板块</a>--%>
      <%--<a href="http://b.qq.com/webc.htm?new=0&amp;sid=564293010&amp;eid=218808P8z8p8q8Q8Q8q8x&amp;o=www.cnhnb.com&amp;q=7" class="btn-qq">QQ在线客服</a>--%>
      <div class="tel">
        <h3>客服热线：</h3>
        <span>0543-5253666</span>
      </div>
      <div class="mail">
        <h3>客服邮箱：</h3>
        <span>826321978@qq.com</span>
      </div>

    </div>
  </div>
</div>
<div class="popup-plug-add">
  <div class="screen"></div>
  <div class="popup">
    <div class="bg-t"></div>
    <div class="bg-c">
      <div class="title"><h2>新增入口</h2><span><img src="http://static.cnhnb.com/4.0/images/personal/home/popup-close.png"></span></div>
      <div class="box">
        <ul id="menu_add_container">
        </ul>
        <div class="tip">更多快捷入口持续开放中</div>
      </div>
    </div>
    <div class="bg-f"></div>
  </div>
</div>
<div class="popup-modu-add" style="display: none;">
  <div class="screen"></div>
  <div class="popup" style="margin-top: -163.5px;">
    <div class="bg-t"></div>
    <div class="bg-c">
      <div class="title"><h2>模块管理</h2><span><img src="http://static.cnhnb.com/4.0/images/personal/home/popup-close.png"></span></div>
      <div class="box">
        <div class="tip1">更多模块持续开放中</div>
        <!--<ul>
            <li>
                <em><img src="http://static.cnhnb.com/4.0/images/personal/home/plug-11.png" /></em>
                <span>交易管理</span>
            </li>
            <li>
                <em><img src="http://static.cnhnb.com/4.0/images/personal/home/plug-12.png" /></em>
                <span>产品询单</span>
            </li>
        </ul>
        <div class="tip">更多模块持续开放中</div>-->
      </div>
    </div>
    <div class="bg-f"></div>
  </div>
</div>
<script src="../js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../js/highcharts.js" type="text/javascript"></script>
<script src="../js/windows.js" type="text/javascript"></script>
<style>.w-bg{position:fixed; z-index:9998; left:0; top:0; background-color:#000; width:100%; height:100%; opacity:0.5; filter:alpha(opacity=50);}.d-none{display:none;}.fx-wds-m1{text-align:center;}.fx-wds-m2{padding-left:37px;}.fx-wds-m2 span{color:#0684cf;}.fx-wds-m2 a{color:#0684cf;}.fx-wds-m2 a.but{ display:block; width:66px; height:30px; line-height:30px; background-color:#f47912; color:#FFF; margin:10px auto 0 auto; text-align:center; overflow:hidden;}.fx-wds-m3 h3{line-height:36px; padding:5px 0 0 41px; font-size:12px; margin:0px;}.fx-wds-m3 p{width:590px; height:250px; overflow:scroll; margin:0 0 0 41px; padding:8px; border:#cccccc solid 1px; }.fx-wds-m3 span{text-align:center; display:block; line-height:40px; padding-top:12px;}.fx-wds-m3 a{display:block; width:105px; height:29px; line-height:29px; overflow:hidden; text-align:center; background-color:#ccc; color:#666; margin:auto;}.fx-wds-m3 a.agree{margin:40px auto 0 auto;}.fx-wds-m3 a.cur{background-color:#f47912; color:#FFF;}.fx-wds-m4{margin:5px 0 0 26px; color:#666;}.fx-wds-m4 strong{font-size:14px; float:left; display:inline;color:#333;}.fx-wds-m4 img{float:left; display:inline;}.fx-wds-m4 span{color:#333;}.fx-wds-m4 a{width:88px; height:30px; overflow:hidden; display:block; margin:auto; line-height:30px; background-color:#f47912; color:#FFF; text-align:center; font-weight:bold;}.fx-w{position:fixed; z-index:9999; left:50%; top:50%; margin-left:-160px; margin-top:-90px; font-family:"微软雅黑";}.fx-w-3{margin-left:-286px; margin-top:-144px;}.fx-w-4{margin-left:-338px; margin-top:-225px;}.fx-w .fx-s-1{width:345px; height:210px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}.fx-w .fx-s-2{width:676px; height:450px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}.fx-w .fx-s-3{width:572px; height:288px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}.fx-w .fx-s-4{width:676px; height:450px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}.fx-w h2{height:32px; background-color:#f3f3f3; margin:0px;}.fx-w h2 strong{font-weight:bold; line-height:32px; padding-left:19px; float:left; display:inline; font-size:14px;}.fx-w h2 a{float:right; display:inline; margin:0 16px 0 0; line-height:32px; color:#333; text-decoration:none;}.fx-w .fx-s-4 h2{ background-color:#fff; }.fx-w .fx-s-4 h2 a{ font-size:28px; }.fx-w .line{display:block; height:1px; border-bottom:#cccccc solid 1px;}.fx-w .message{line-height:21px; color:#585858; font-size:12px;}.rule-h1{font-weight:bold;font-size:16px;line-height:30px;}.rule-h2{font-size:14px;line-height:28px;}.fx-w-5 .info{line-height:22px; padding-top:30px; text-align:center;}.fx-w-5 .message a{height:30px; float:left; width:80px; text-align:center; line-height:30px; color:#FFF; margin:30px 0 0 50px; cursor:pointer; border-radius:3px;}.fx-w-5 .message .a-yes{background-color:#009435;}.fx-w-5 .message .a-no{background-color:#f47a11;}.w-box{position:fixed; z-index:9999; left:50%; top:50%; margin-left:-160px; margin-top:-90px; font-family:"微软雅黑";}.w-consignee{margin-left:-250px; margin-top:-175px;}.w-consignee-box{width:500px; height:350px; overflow:hidden; border:#b9b8b8 solid 1px; background-color: #fff;}.w-box h2{height:32px; background-color:#f3f3f3; margin:0px;}.w-box h2 strong{font-weight:bold; line-height:32px; padding-left:19px; float:left; display:inline; font-size:14px;}.w-box h2 a{float:right; display:inline; margin:0 16px 0 0; line-height:32px; color:#333; text-decoration:none;}.w-box .line{display:block; height:1px; border-bottom:#cccccc solid 1px;}.w-box .message{}.w-box .message ul{padding-left:20px;}.w-box .message li{height:26px; line-height:26px; padding-top:10px;}.w-box .message li em{float:left; display:inline; width:15px; text-align:center; color:#f00;}.w-box .message li span{float:left; display:inline; width:70px;}.w-box .message li p{float:left; display:inline; width:390px;}.w-box .message li p input{height:24px; line-height:24px; border:#e5e5e5 solid 1px; width:120px; padding-left:10px;}.w-box .message li p input.consignee-street{width:330px;}.w-box .message li p input.consignee-postal{width:120px;}.w-box .message li p input.consignee-phone{width:180px;}.w-box .message li p input.consignee-areaCode{width:40px;}.w-box .message li p input.consignee-tel{width:120px;}.w-box .message li p input.consignee-ext{width:40px;}.w-box .message .consignee-but{padding-top:50px;}.w-box .message .consignee-but p{float:left; display:inline; line-height:24px; margin-left:230px;}.w-box .message .consignee-but p input{margin-top:5px;float:left; display:inline;}.w-box .message .consignee-but .but{float:right; display:inline; line-height:24px; height:24px; width:130px; margin-right:20px;}</style>
<script src="../js/pointmessagetips.js" type="text/javascript"></script>
<script src="../js/jquery.signalR.js" type="text/javascript"></script>
<script src="../js/top_foot.js" type="text/javascript"></script>
<script type="text/javascript">
  var init = {
    userWebUrl: "http://hnuser.cnhnb.com/",
    email: "",
    mobile: "15266788746",
    userPic: "",
    imgUrl: "http://img.cnhnb.com/",
    shopUrl: "",
    shopName: "",
    resoruceUrl: "http://static.cnhnb.com/",
    domain: "cnhnb.com",
    guides: "BUYERS_GUIDE_"
  }
</script>
<script src="../js/jquery.qrcode.min.js" type="text/javascript"></script>
<script src="../js/index.js" type="text/javascript"></script>
<script src="../js/hn.frame.util-0.1.js" type="text/javascript"></script>
<!--<script src="../js/guide.js" type="text/javascript"></script>-->
<script src="../js/binding.js" type="text/javascript"></script>
<script src="../js/features.buyers.mgr.js" type="text/javascript"></script>
<!--内容 end-->

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
        window.location.href="/webvAddRecordController/toAddRecord.do";
      }else{
        window.location.href="/webvProfile/toUpdateProfile.do";
      }

    }else{
      //登录页面跳转
      window.location.href="/webvLoginController/toLogin.do";
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

