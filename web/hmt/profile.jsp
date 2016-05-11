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

  <link rel="stylesheet" href="../hmt/css/profileupdate/common.css"/>
  <link rel="stylesheet" href="../hmt/css/profileupdate/common_2.css"/>
  <link rel="stylesheet" href="../hmt/css/profileupdate/service.css"/>
  <link rel="stylesheet" href="../hmt/css/glide.core.min.css"/>
  <link rel="stylesheet" href="../hmt/css/glide.theme.min.css"/>
  <link rel="stylesheet" href="../hmt/css/user_profile.css"/>

  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/md5.js"></script>
  <script type="text/javascript" src="../js/cookie.js"></script>
  <script type="text/javascript" src="../js/ajaxfileupload.js"></script>
  <script type="text/javascript" src="../js/Util.js"></script>
  <script type="text/javascript" src="../js/validation.js"></script>
  <script language="javascript" src="../js/jquery.js"></script>
  <script type="text/javascript" src="../js/jquery_latest.js"></script>
  <script type="text/javascript" src="../js/glide.min.js"></script>
  <style>
    .button{
      color: #fff !important;
    }
    .profile-holder{
      width: 956px;
      float: left;
    }
  </style>
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
    <a href="/hmtIndex/toIndex.do?page=1" target="_blank" class="logo"><img src="../hmt/images/category-vegetable/logo_type.png" width="194px" height="38px"></a>
    <div class="webname">
      <h2>用户中心</h2>
      <span>${emp.mm_emp_nickname}</span>
    </div>
  </div>
</div>
<div class="container wrap-1190">
  <input type="hidden" id="is_login" name="is_login" value="${is_login}">
  <input type="hidden" id="accessToken" name="accessToken" value="${emp.access_token}">

    <div class="profile-holder">
        <div id="Glide" class="glide">
          <div class="panel clearfix">
            <img src="${empVO.mm_emp_cover}" alt="${empVO.mm_emp_nickname}" class="head-pic">
            <div class="user-info">
              <h2 class="name">${empVO.mm_emp_nickname}</h2>
              <%--<c:if test="${emp.mm_emp_type==0}"><h3 class="type">苗木经营户</h3></c:if>--%>
              <%--<c:if test="${emp.mm_emp_type==1}"><h3 class="type">苗木会员</h3></c:if>--%>
              <%--<h3 class="type">${emp.mm_level_num}</h3>--%>
              <c:if test="${emp.mm_level_num==0}"><h3 class="type">等级：vip1</h3></c:if>
              <c:if test="${emp.mm_level_num==1}"><h3 class="type">等级：vip2</h3></c:if>
              <c:if test="${emp.mm_level_num==2}"><h3 class="type">等级：vip3</h3></c:if>
              <c:if test="${emp.mm_level_num==3}"><h3 class="type">等级：vip4</h3></c:if>
              <c:if test="${emp.mm_level_num==4}"><h3 class="type">等级：vip5</h3></c:if>
              <h3 class="name">注册日期：${emp.mm_emp_regtime}</h3>
            </div>
          </div>
          <div class="glide__wrapper">
            <ul class="glide__track">
              <c:forEach items="${empAdVO}" var="e" varStatus="st">
                <li class="glide__slide"><img src="${e.mm_emp_ad_pic}" alt="${e.mm_emp_ad_url}"></li>
              </c:forEach>
            </ul>
          </div>

          <div class="glide__bullets"></div>

        </div>
        <script>
          $(function(){
            $('.glide').glide({
              mode:'horizontal',     // 幻灯片走向
              autoplay:5000,         // 自动播放，false为关闭自动播放
              startAt:0,             // 开始于哪个幻灯片
              // paddings:'1rem',       // 幻灯片左右的padding 可以是单位，%
              centered:true,         // 当前幻灯片在slides的中间
              hoverpause:true,       // 鼠标悬停的时候暂停播放
              autoheight:false,      // 设置包裹的slider为当前幻灯片的高度
              keyboard:true,         // 光标方向键使幻灯片左右滑动
              touchDistance:80,      // 最小手指滑动距离，以触发滑动操作
              dragDistance:120,      // 最小鼠标拖动距离，以触发滑动操作
              animationDuration:400 // 动画时间 ms
            });
          })
        </script>
        <!-- GLIDE SLIDE END -->

        <!-- user-info -->
        <div class="content mb2">
          <div class="user-info w9">
            <h3 class="area-head">公司简介：</h3>
            <p class="company-info mb1">${empVO.mm_emp_company_detail}</p>
            <a class="button fill-green mb2" href="${empVO.mm_emp_company_url}" target="_blank">${empVO.mm_emp_company}</a>

          </div>
          <div class="switcher mt1">
            <div class="w9">
              <h2 class="area-head tac mb1">发布过的信息</h2>
              <div class="button-group-x2">
                <a class="button fill-green" href="javaScript:void(0)" onclick="searchProfile('0')">求购</a>
                <a class="button fill-green" href="javaScript:void(0)" onclick="searchProfile('1')">供应</a>
              </div>
            </div>
          </div>
        </div>

        <div class="recent">
          <c:forEach items="${list}" var="e" varStatus="st">
            <div class="item">
              <div class="item-heading clearfix">
                <a href="javaScript:void(0)"  onclick="showDetail('${e.mm_msg_id}')" class="left clearfix">
                  <img src="${e.mm_emp_cover}" alt="" class="head-pic">
                  <div class="detail">
                    <h1 class="company">${e.mm_emp_company}&nbsp;${e.mm_emp_nickname}</h1>
                    <h3 class="time">${e.dateline} &nbsp;&nbsp; ${e.area}</h3>
                  </div>
                </a>
                <div class="right">
                  <div class="top clearfix">
                    <c:if test="${e.is_miaomu=='1'}"><img src="/img/tree_icons_trust.png" alt=""></c:if>
                    <c:if test="${e.is_chengxin=='1'}"><img src="/img/tree_icons_group.png" alt=""></c:if>
                  </div>
                  <div class="botton clearfix">
                    <c:if test="${e.mm_level_num=='0'}"><img src="/img/tree_icons_star_1.png" alt=""></c:if>
                    <c:if test="${e.mm_level_num=='1'}"><img src="/img/tree_icons_star_2.png" alt=""></c:if>
                    <c:if test="${e.mm_level_num=='2'}"><img src="/img/tree_icons_star_3.png" alt=""></c:if>
                    <c:if test="${e.mm_level_num=='3'}"><img src="/img/tree_icons_star_4.png" alt=""></c:if>
                    <c:if test="${e.mm_level_num=='4'}"><img src="/img/tree_icons_star_5.png" alt=""></c:if>
                  </div>
                </div>
              </div>
              <a href="javaScript:void(0)" onclick="showDetail('${e.mm_msg_id}')" class="item-content">
                  ${e.mm_msg_title}
                  ${e.mm_msg_content}
              </a>
              <div class="item-footer clearfix">
                <a type="button" href="tel:${e.mm_emp_mobile}"  class="button-phone"></a>
                <a type="button" href="javaScript:void(0)" onclick="favourClick('${e.mm_msg_id}')" class="button-fav"></a>
                <c:if test="${e.mm_msg_picurl !=''}"><a type="button" onclick="showDetail('${e.mm_msg_id}')" class="button-pic"></a></c:if>
              </div>
            </div>
          </c:forEach>

          <input type="hidden" id="mm_msg_type" name="mm_msg_type" value="${query.mm_msg_type}">
          <input type="hidden" id="mm_emp_id" name="mm_emp_id" value="${query.mm_emp_id}">
          <!--分页信息，页面跳转-->
          <div class="page clearfix">
            <div class="left hide-phone">
              <a><span>共${page.count}条/${page.pageCount}页</span></a>
              <a>每页显示
                <select name="size" id="size" onchange="nextPage('1')">
                  <option value="10" ${query.size==10?'selected':''}>10</option>
                  <option value="20" ${query.size==20?'selected':''}>20</option>
                  <option value="30" ${query.size==30?'selected':''}>30</option>
                  <option value="100" ${query.size==100?'selected':''}>100</option>
                </select>条
              </a>
            </div>
            <div class="right">
              <c:choose >
                <c:when test="${page.page == 1}">
                  <a href="javascript:void(0)">首页</a>
                  <a href="javascript:void(0)">《</a>
                </c:when>
                <c:otherwise>
                  <a href="javascript:void(0);" onclick="nextPage('1')">首页</a>
                  <a href="javascript:void(0);" onclick="nextPage('${page.page-1}')">《</a>
                </c:otherwise>
              </c:choose>
              <a>第<input type="text" id="index" name="index" onkeyup="searchIndex(event)" value="${page.page}">页</a>
              <c:choose>
                <c:when test="${page.page == page.pageCount}">
                  <a href="javascript:void(0)">》</a>
                  <a href="javascript:void(0)">末页</a>
                </c:when>
                <c:otherwise>
                  <a href="javascript:void(0);" onclick="nextPage('${page.page+1}')">》</a>
                  <a href="javascript:void(0);" onclick="nextPage('${page.pageCount}')">末页</a>
                </c:otherwise>
              </c:choose>
            </div>
          </div>

        </div>
    </div>



<%--边栏--%>
  <div class="sides mt_15">
    <div class="release-but mb_15"><a href="javascript:void(0)" target="_blank" onclick="addMsg()"><i class="lee-ico lee-fb"></i> &nbsp; 发布供应</a></div>
    <div class="release-but mb_15"><a href="/netKefuController/toKefu.do" target="_blank" ><i class="lee-ico lee-fb"></i> &nbsp; 客服中心</a></div>
    <div class="ad2">


      <a href="../html/download.html" target="_blank" title="花木通app" rel="nofollow">
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
  <div class="clear"></div>

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
<script type="text/javascript" charset="UTF-8">
  function searchIndex(e){
    if(e.keyCode != 13) return;
    var _index = $("#index").val();
    var page = parseInt(_page);
    var mm_msg_type = $("#mm_msg_type").val();
    var mm_emp_id = $("#mm_emp_id").val();
    var size = $("#size").val();
    if(_index <= ${page.pageCount} && _index >= 1){
      window.location.href="/netProfileController/toProfile.do?page="+page+"&size="+size+"&mm_msg_type="+mm_msg_type+"&mm_emp_id="+mm_emp_id;
    }else{
      alert("请输入1-${page.pageCount}的页码数");
    }
  }
  function searchProfile(_mm_msg_type){
    var mm_emp_id = $("#mm_emp_id").val();
    window.location.href="/netProfileController/toProfile.do?page=1"+"&size=10"+"&mm_msg_type="+_mm_msg_type+"&mm_emp_id="+mm_emp_id;
  }

  function nextPage(_page) {
    var page = parseInt(_page);
    var mm_msg_type = $("#mm_msg_type").val();
    var size = $("#size").val();
    var mm_emp_id = $("#mm_emp_id").val();
    addCookie("contract_size", size, 36);
    if ((page <= ${page.pageCount} && page >= 1)) {
      window.location.href="/netProfileController/toProfile.do?page="+page+"&size="+size+"&mm_msg_type="+mm_msg_type+"&mm_emp_id="+mm_emp_id;
    } else {
      alert("请输入1-${page.pageCount}的页码数");
    }
  }
</script>
<script>
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


</script>
</html>

