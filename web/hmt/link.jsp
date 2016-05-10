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
  <title>花木通|友情链接</title>
  <meta name="keywords" content="花木通,苗木,花木,苗木交易,花木求购,苗木求购,花木资讯,花木论坛,花木销售,苗木销售,苗木资讯,绿化苗木">
  <meta name="Description" content=" 花木通是惠民县本地第一苗木供求信息平台、信息通讯平台，突破了苗木大市场、绿化工程公司、经纪人、苗农之间的信息壁垒，让市场订单苗木不愁买，苗农种植苗木不愁卖！为本地苗木行业发展助力，让经纪人足不出户，随时随地做生意！让苗农及时了解市场行情，苗木卖价更高更容易！">

  <link rel="stylesheet" href="../hmt/css/help/base.css"/>
  <link rel="stylesheet" href="../hmt/css/help/common.css"/>
  <link href="../hmt/css/help/public.css" rel="stylesheet" type="text/css" />
  <link href="../hmt/css/help/service.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="../hmt/js/jquery-1.7.2.min.js"></script>
  <script type="text/javascript" src="../hmt/js/home.js"></script>
  <script async="" src="../hmt/js/agt.js"></script>
  <script src="../hmt/js/hm.js"></script>

</head>
<body>
<!-- 顶部 -->

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
<!--/.topbar-->
<!--head-->
<div class="service_head ">
  <a title="花木通信息平台" href="/hmtIndex/toIndex.do?page=1" target="_blank"><div class="logo"></div></a>
  <div class="rightfont">精彩源于花木通，服务开创未来</div>
</div>
<!--nav-->
<div class="service_dh"></div>
<!--wrap-->
<div id="wrapper">
  <div class="leftbox">
    <div class="leftbox_head">花木通信息平台</div>
    <ul class="leftmenu">
      <li><a href="/netAboutUsController/toLegal.do">法律声明</a></li>
      <li><a href="/netAboutUsController/toLink.do">友情链接</a></li>
      <li><a href="/netAboutUsController/toPrivacy.do">版权隐私</a></li>
      <li><a href="/netAboutUsController/toXieyie.do">使用协议</a></li>
      <li><a href="/netAboutUsController/toAboutUs.do">关于我们</a></li>
    </ul>
  </div>
  <div class="rightbox">
    <div class="rightbox_head"><i class="bg"></i>友情链接</div>
    <div class="link_tit"><span>友情链接</span></div>
    <div class="link_con">
      <ul class="linklist">
        <li><a href="http://www.zgncpw.com/" target="_blank">中国农产品网</a></li>
        <li><a href="http://www.chunguowang.com/" target="_blank">水果网</a></li>
        <li><a href="http://www.asae.cn/" target="_blank">亚洲渔港海鲜网</a></li>
        <li><a href="http://www.mvomvo.com/" target="_blank">礼物网</a></li>
        <li><a href="http://jk.lcxw.cn/" target="_blank">健康养生</a></li>
        <li><a href="http://www.zhebabai.cn/" target="_blank">折八百</a></li>
        <li><a href="http://www.xn121.com/" target="_blank">中国兴农网</a></li>
        <li><a href="http://www.nx28.com/" target="_blank">农享网</a></li>
        <li><a href="http://www.agronet.com.cn/" target="_blank">农业网</a></li>
        <li><a href="http://www.ysali.com/" target="_blank">渔商阿里</a></li>
        <li><a href="http://www.nongyao001.com/" target="_blank">中国农药第一网</a></li>
        <li><a href="http://www.cx987.cn/" target="_blank">今日苗木网</a></li>
        <li><a href="http://www.shuichan.cc/" target="_blank">中国水产养殖网</a></li>
        <li><a href="http://www.jbzyw.com/" target="_blank">鸡病专业网</a></li>
        <li><a href="http://www.114guoshu.com/" target="_blank">水果批发网</a></li>
        <li><a href="http://www.nongyao168.com/" target="_blank">中国农药网</a></li>
        <li><a href="http://www.ync365.com/" target="_blank">云农场</a></li>
        <li><a href="http://www.quandier.com/" target="_blank">农地圈</a></li>
      </ul>
    </div>
    <div class="link_tit"><span>申请链接</span></div>
    <div class="link_con">
      <ul class="linksteps">
        <h3>申请步骤:</h3>
        <li><i class="nums">1</i> 请先在贵网站做好中国花木通网的文字友情链接, 链接文字： 中国花木通网链接地址：http://www.cnhnb.com</li>
        <li><i class="nums">2</i>做好链接后，请填写申请信息。</li>
        <li><i class="nums">3</i>已经开通我站友情链接且内容健康，符合本站友情链接要求的网站，经中国花木通网管理员审核后，可以显示在此友情链接页面。</li>
      </ul>
      <div class="servicebox">
        <p><strong>中国花木通网客服热线:</strong></p>
        <p><strong>400-008-8688</strong></p>
        <p class="mt15">工作时间：周一至周日9:00 - 17:30</p>
        <p><a href="http://b.qq.com/webc.htm?new=0&sid=4000088688&eid=218808P8z8p8q8Q8Q8q8x&o=www.cnhnb.com&q=7" class="linkbtn">QQ交谈</a></p>
      </div>

    </div>
  </div>
</div>
<div class="clear"></div>
<!-- footer_wrapper -->
<jsp:include page="footer.jsp" flush="true" />
<!--/.footer-->
<script src="../hmt/js/home.js" type="text/javascript"></script>
<script src="../hmt/js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<!--首页右侧焦点图调用js-->
<!--搜索调用js 会将logo链接至生产-->
<script src="../hmt/js/top_foot.js" type="text/javascript"></script>
<script src="../hmt/js/vegetable.js" type="text/javascript"></script>
<!--蔬菜二级类目调用js--
</html>-->
</body>

</html>
