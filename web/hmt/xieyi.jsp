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
  <title>花木通|使用协议</title>
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
            <img src="../hmt/images/category-vegetable/topbar-hn-weixin.jpg" alt="花木通官方微信">
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
    <div class="rightbox_head"><i class="bg"></i>使用协议</div>
    <div class="exp-content format-exp" id="format-exp">
      <div class="exp-content-body">
        <ol class="exp-conent-orderlist">
          <li class="exp-content-list list-item-1">
            <div class="list-icon">1</div>
            <div class="content-list-text">
              <p> <strong>一、概述</strong></p>
            </div>
            <div class="content-list-media">
              <div class="content-list-image clearfix">
                <p class="t2em">本协议是注册会员与山东惠民茹园科技服务有限公司及其关联企业之间的法律协议。</p>
                <p class="mt10 t2em">“注册会员”是指愿意接受或实际上已经接受花木通科技提供的产品和服务的企业或个人。</p>
                <p class="mt10 t2em">此份协议是注册会员接受山东惠民茹园科技服务有限公司产品和服务时适用的通用条款。因此，请您在注册成为山东惠民茹园科技服务有限公司 会员的注册会员前或接受山东惠民茹园科技服务有限公司的产品和服务之前，请您详细地阅读本注册会员协议的所有内容。 </p>
                <p class="mt10 t2em"> 注册会员了解并同意：只要注册会员点击“同意”按钮并完成注册，注册会员就已接受了本注册会员协议及山东惠民县茹园科技服务 有限公司公布的各项服务规则（包括填写实名的联系方式等等），并愿意受其约束。如果发生纠纷，注册会员不得以未仔细阅读 为由进行抗辩。　</p>
                <p class="mt10 t2em">注册会员了解并同意：随着市场经营情况的变化，山东惠民茹园科技服务有限公司有权随时更改本注册会员协议及相关服务规则。修改本注册会员协议时，山东惠民茹园科技服务有限公司将于相关页面公告修改的事实，有权不对注册会员进行个别通知。注册会员应该在每次登录购买商品前查询山东惠民茹园科技服务有限公司官方网站的相关公告，以了解本注册会员协议及其他服务规则的变化。若注册会员不同意本注册会员协议或相关服务规则，或者不同意山东惠民县茹园科技服务有限公司作出的修改，注册会员可以主动停止使用 山东惠民茹园科技服务有限公司提供的产品和服务，如果在山东惠民茹园科技服务有限公司修改协议或服务规则后，注册会员仍继续使用山东惠民县茹园科技 科技有限公司提供的产品和服务，即表示注册会员同意山东惠民茹园科技服务有限公司对本注册会员协议及相关服务规则所做的所有修改。由于注册会员在注册会员协议变更后因未熟悉公告规定而引起的损失，山东惠民茹园科技服务有限公司将不会承担任何责任。</p>
                <p class="mt10 t2em">本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。注册会员必须完全同意所有服务条款并完成注册程序，才能成为本站的注册会员。注册会员确认：本协议条款是处理双方权利义务的当然约定依据，除非违反国家强制性法律，否则始终 有效。</p>
              </div>
            </div>
          </li>
          <li class="exp-content-list list-item-2">
            <div class="list-icon">2</div>
            <div class="content-list-text">
              <p> <strong>二、服务简介</strong></p>
            </div>
            <div class="content-list-media">
              <div class="content-list-image clearfix">
                <p>⒈ 花木通信息平台服务条款</p>
                <p class="mt10 t2em">花木通信息平台立足于电子商务，为客户提供全方位的网络服务。花木通信息平台的各项电子服务的所有权和 运作权归山东惠民茹园科技服务有限公司。花木通信息平台提供的服务将完全按照其发布的章程、服务条款和操作规则严格执行。会员若完全 同意所有服务条款，并依照步骤完成花木通信息平台的新会员注册程序，即可成为花木通信息平台的正式会员。</p>
                <p class="mt10">⒉ 基本条件花木通信息平台以 自己的操作系统，通过互联网络为会员提供网络服务。为此，会员须具备以下基本条件：</p>
                <p class="mt10 t2em">⑴　会员对其发布的信息负责，应提供详尽、真实、准确的企业资料，不得发布 不真实的、有歧义的信息，绝对禁止发布误导性的、恶意的消息。</p>
                <p class="mt10 t2em">⑵　自行负担企业上网所需支付的与此服务有关的电话费用、网络费用。</p>
                <p class="mt10">⒊ 服务条件基于中国 花木通网提供的网络服务的商业性和时效性：</p>
                <p class="mt10 t2em"> ⑴　自行配备上网所需设备，包括电脑、 调制解调器或其它必备上网装置。</p>
                <p class="mt10 t2em"> ⑵　随时更新注册资料，以符合及时、详尽、准确的要求。</p>
                <p class="mt10 t2em"> ⑶　花木通信息平台向会员提供的会员帐号及密码只供会员使用。如果会员将帐号或密码丢失或被盗，应及时重新登记并重新设置密码。 会员造成的帐号失密，应自行承担责任。</p>
                <p class="mt10 t2em"> ⑷　会员若发现花木通信息平台发布的信息不准确或发生错误，应及时通知本网。若问题未能 及时解决，可进入本网的投诉程序。</p>
                <p class="mt10 t2em">⑸　花木通信息平台向会员提供的商品信息之编辑、编制、传播的版权和知识产权，全部由中国 花木通网拥有；未经花木通信息平台事先书面同意，任何人不得以各种形式复制、散布、出售、出版、广播、转播该商品信息。</p>
                <p class="mt10 t2em">⑹　中国 花木通网如发现会员提供的资料包含有不正确的信息，发出警告，并保留停止或终止其会员资格的权利。</p>
                <p class="mt10 t2em">  ⑺　会员如违反本协议 而造成花木通信息平台的经济损失，本网有权追究其经济责任与法律责任。</p>
                <p class="mt10">⒋拒绝提供担保</p>
                <p class="mt10 t2em"> 注册会员个人对网络服务的使用承担风险。本站对此不作任何类型的担保，不论是明确的或隐含的，但是不对商业性的隐含担保、 特定目的和不违反规定的适当担保作限制。本站不担保服务一定能满足注册会员的要求，也不担保服务不会受中断，对服务的 及时性，安全性，出错发生都不作担保。本站对在本站上得到的任何商品购物服务或交易进程，不作担保。</p>
                <p class="mt10">5.有限责任</p>
                <p class="mt10 t2em">如因不可抗力或其他本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等， 本站不承担责任。但是本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。</p>
                <p class="mt10">6.本协议的订立、执行、解释及争议的解决均应适用中国法律。</p>
              </div>
            </div>
            <div class="last-item"><span class="last-item-end">END</span></div>
          </li>
        </ol>
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

