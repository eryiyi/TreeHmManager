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
  <title>花木通|求购信息</title>
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

</head>
<body>
<!-- 顶部 -->
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
            <a title="马上注册，共享无限商机" href="javascript:void(0)" onclick="reg()"
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
<!--头部 导航-->
<div class="type-head top-bg">
  <h1 class="logo">
    <a href="/hmtIndex/toIndex.do?page=1&mm_msg_type=0" title="花木通信息平台"></a>
  </h1>
</div>

<div class="type-nav">
  <div class="nav-con">
    <!-- 顶部栏目-->
    <ul class="nav-con-tit">
      <li><a href="/hmtIndex/toIndex.do?page=1&mm_msg_type=0" class="nav-tstj">求购大厅</a></li>
      <li><a href="/hmtIndex/toIndex.do?page=1&mm_msg_type=1" class="nav-dptj">供应大厅</a></li>
      <li><a href="/netTopController/toTop.do?page=1" class="nav-tstj">金牌榜</a></li>
      <li><a href="/netCenterController/toCenter.do" class="nav-zxhq">服务中心</a></li>
      <li><a href="../html/download.html" target="_blank" class="nav-zxhq">手机版</a></li>
    </ul>
  </div>
</div>
<!--头部 导航 end-->

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
    <c:if test="${recordVO.mm_msg_type=='0'}"><a>求购</a></c:if>
    <c:if test="${recordVO.mm_msg_type=='1'}"><a>供应</a></c:if>
  </a>
  </div>
  <!--内容 start-->
  <div class="info-details">
    <!-- details -->
    <ul class="details-title">
      <li class="details-times">发布时间：${recordVO.dateline}</li>
      <li class="details-author">发布人：<img src="../hmt/images/ico-tel.png" alt="${recordVO.mm_emp_nickname}"/><span><a href="/netProfileController/toProfile.do?page=1&mm_emp_id=${recordVO.mm_emp_id}">${recordVO.mm_emp_nickname}</a></span></li>
      <li class="details-certification"><img src="../hmt/images/ico-tel.png" alt="电话"/> ${recordVO.mm_emp_mobile} </li>
      <li class="details-certification"><img src="../hmt/images/ico-location.png" alt="位置"/> ${recordVO.cityName}${recordVO.area} </li>
      <li class="details-audit">
        <a class="highlight" onclick="favourClick('${recordVO.mm_msg_id}')" href="javascript:void(0);" title="收藏">收藏</a>
      </li>
    </ul>
    <div class="details ">

      <ul class="details-content">
        <li class="c1">
          <p class="c1-name">
            <c:if test="${recordVO.mm_msg_type=='0'}">
              [求购]
            </c:if>
            <c:if test="${recordVO.mm_msg_type=='1'}">
              [供应]
            </c:if>
          ${recordVO.mm_msg_title}
          </p>
        </li>
        <li>
          <%--<p>${recordVO.mm_msg_content}</p>--%>
          <p> Noisli 在线背景环境声音网是一个生产环境音效,
            让你仿佛置身于雨天、森林、海边或者咖啡厅,这样的环境音效站点可以帮助你有个好的睡眠,还能提供工作效率,
            让你免受... Noisli 在线背景环境声音网是一个生产环境音效,让你仿佛置身于雨天、森林、海边或者咖啡厅,
            这样的环境音效站点可以帮助你有个好的睡眠,还能提供工作效率,让你免受...
            <img src="../hmt/images/login-ad.jpg" alt=""/>
            Noisli 在线背景环境声音网是一个生产环境音效,让你仿佛置身于雨天、森林、海边或者咖啡厅,
            这样的环境音效站点可以帮助你有个好的睡眠,还能提供工作效率,让你免受...
            <img src="../hmt/images/login-ad.jpg" alt=""/></p>
        </li>
      </ul>

      <div class="details-contact">
        <div class="map-holder"></div>
        <div class="cqr-holder">
          <div class="weixin"><img src="../hmt/images/weixin_erweima.png" alt=""/></div>
          <div class="app"><img src="../hmt/images/mobile_erweima.png" alt=""/></div>
        </div>
      </div>

      <div class="details-tips">
        <p>交易纠纷时有发生，建议谨慎交易。具体参见 <a href="#">防骗提醒</a>。</p>
        <%--<p class="icon-time">发布日期：${recordVO.dateline}<em class="ml_10"></em></p>--%>
      </div>

      <div class="blank_5"></div>
      <div class="clear"></div>


    </div>
    <!-- //details -->
    <div class="related mb_15">
      <div class="related-title">
        <span>相关信息</span>
      </div>
      <ul class="related-list-title pt_15" >
        <li class="l1">标题</li>
        <li class="l2">发布时间</li>
        <li class="l3">所在地</li>
        <li class="l4">发布人</li>
      </ul>


      <c:forEach items="${listRelate}" var="e" varStatus="st">
        <c:if test="${e.mm_msg_id != recordVO.mm_msg_id}">
          <ul onclick="showDetail('${e.mm_msg_id}')">
            <li class="text-list">
              <a href="javascript:void(0)" target="_blank">
                <span class="l1">
                   <c:if test="${e.mm_msg_type=='0'}">
                     [求购]
                   </c:if>
                  <c:if test="${e.mm_msg_type=='1'}">
                    [供应]
                  </c:if>
                ${e.mm_msg_title}
                </span>
                <span class="l2">${e.dateline}</span>
                <span class="l4">${e.cityName}${e.area}</span>
                <span class="l5">${e.mm_emp_nickname}</span>

               <span class="l6">
                  <c:if test="${e.is_miaomu=='1'}"><img style="width: 25px;height: 32px;" src="../img/tree_icons_trust.png" title="苗木协会"></c:if>
                  <c:if test="${e.is_chengxin=='1'}"><img style="width: 25px;height: 32px;" src="../img/tree_icons_group.png" title="诚信会员"></c:if>
              </span>
              </a>
            </li>
          </ul>
        </c:if>
      </c:forEach>


    </div>
    <div class="security-tips mb_20"><span class="highlight">安全提示：</span>欢迎使用花木通信息平台，请谨慎核实信息内容!</div>

  </div>
  <!--内容 end-->
  <div class="sides mt_15">
    <div class="release-but mb_15"><a href="javascript:void(0)" target="_blank" onclick="addMsg()"><i class="lee-ico lee-fb"></i> &nbsp; 发布供应</a></div>
    <div class="release-but mb_15"><a href="/netKefuController/toKefu.do" target="_blank" ><i class="lee-ico lee-fb"></i> &nbsp; 客服中心</a></div>
    <div class="ad2">


      <a href="../html/download.html" target="_target" title="花木通app" rel="nofollow">
        <img src="../hmt/images/2C604DU858ChRkRlcHTCeAU9-hAAHy19HEc7E108.jpg" alt="花木通app" width="216" height="353">
      </a>


    </div>
    <div class="sides-hot mtb_15">
      <h2>热门信息</h2>
      <ul>
        <c:forEach items="${listsHot}" var="e" varStatus="st">
          <li>
            <c:if test="${e.mm_msg_type=='0'}"><em class="hot">[求购]</em></c:if>
            <c:if test="${e.mm_msg_type=='1'}"><em >[供应]</em></c:if>
            <h3><a target="_blank" href="javascript:void(0)" onclick="showDetail('${e.mm_msg_id}')">${e.mm_msg_title}</a></h3>
            <p></p>
          </li>
        </c:forEach>
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
  function addMsg(){
    var is_login = $("#is_login").val();
    if(is_login == 1) {
      //登陆了
      if(${emp.is_upate_profile == '1'} ){
        window.location.href="/netAddRecordController/toAddRecord.do";
      }else{
        alert("请先完善您的个人资料");
        window.location.href="/netProfileController/toUpdateProfile.do";
      }
    }else{
      //登录页面跳转
      window.location.href="/netLoginController/toLogin.do";
    }
  }
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