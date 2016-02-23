<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<div class="row">
  <div id="breadcrumb" class="col-xs-12">
    <a href="#" class="show-sidebar">
      <i class="fa fa-bars"></i>
    </a>
    <ol class="breadcrumb pull-left">
      <li><a href="javascript:void(0)"  onclick="toPage('mainPage','')">主页</a></li>
      <li><a href="javascript:void(0)">会员管理</a></li>
      <li><a href="javascript:void(0)">经营户列表</a></li>
    </ol>
    <div id="social" class="pull-right">
      <a href="javascript:void(0)"><i class="fa fa-google-plus"></i></a>
      <a href="javascript:void(0)"><i class="fa fa-facebook"></i></a>
      <a href="javascript:void(0)"><i class="fa fa-twitter"></i></a>
      <a href="javascript:void(0)"><i class="fa fa-linkedin"></i></a>
      <a href="javascript:void(0)"><i class="fa fa-youtube"></i></a>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-xs-12 col-sm-12">
    <div class="box ui-draggable ui-droppable">
      <div class="box-header">
        <div class="box-name ui-draggable-handle">
          <i class="fa fa-table"></i>
          <c:if test="${mm_emp_type=='0'}"><span>经营户</span></c:if>
          <c:if test="${mm_emp_type=='1'}"><span>会员</span></c:if>
        </div>
        <div class="box-icons">
          <a class="collapse-link">
            <i class="fa fa-chevron-up"></i>
          </a>
          <a class="expand-link">
            <i class="fa fa-expand"></i>
          </a>
          <a class="close-link">
            <i class="fa fa-times"></i>
          </a>
        </div>
        <div class="no-move"></div>
      </div>
      <div class="box-content">
        <form class="form-inline">
          <input type="hidden" id="mm_emp_type" value="${mm_emp_type}" >
          <c:if test="${is_manager=='0'}">
            <div class="form-group">
              <div class="col-sm-4">
                <select class="form-control" id="mm_emp_provinceId" onchange="selectCitys()">
                  <option value="">--选择省份--</option>
                  <c:forEach items="${listProvinces}" var="e" varStatus="st">
                    <option value="${e.provinceID}" >${e.province}</option>
                  </c:forEach>
                </select>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-4">
                <select class="form-control" id="mm_emp_cityId" onchange="selectCountrys()">
                  <option value="">--选择城市--</option>
                  <c:forEach items="${listCitys}" var="e" varStatus="st">
                    <option value="${e.cityID}" >${e.city}</option>
                  </c:forEach>
                </select>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-4">
                <select class="form-control" id="mm_emp_countryId" onchange="selectArea()">
                  <option value="">--选择县区--</option>
                  <c:forEach items="${listsCountry}" var="e" varStatus="st">
                    <option value="${e.areaID}" >${e.area}</option>
                  </c:forEach>
                </select>
              </div>
            </div>
          </c:if>

          <div class="form-group">
            <select class="form-control" id="ischeck">
              <option value="">--审核状态--</option>
              <option value="0" ${query.ischeck=='0'?'selected':''}>未审核</option>
              <option value="1" ${query.ischeck=='1'?'selected':''}>已审核</option>
              <option value="1" ${query.ischeck=='2'?'selected':''}>未通过</option>
            </select>
          </div>
          <%--<div class="form-group">--%>
            <%--<select class="form-control" id="mm_emp_type">--%>
              <%--<option value="">--注册类型--</option>--%>
              <%--<option value="0" ${query.mm_emp_type=='0'?'selected':''}>苗木经营</option>--%>
              <%--<option value="1" ${query.mm_emp_type=='1'?'selected':''}>苗木会员</option>--%>
            <%--</select>--%>
          <%--</div>--%>
          <div class="form-group">
            <select class="form-control" id="mm_emp_company_type">
              <option value="">--公司类型--</option>
              <option value="0" ${query.mm_emp_company_type=='0'?'selected':''}>苗木</option>
              <option value="1" ${query.mm_emp_company_type=='1'?'selected':''}>园林</option>
            </select>
          </div>

          <div class="form-group">
            <select class="form-control" id="mm_level_id">
              <option value="">--VIP星级--</option>
              <c:forEach items="${listLevels}" var="e" varStatus="st">
                <option value="${e.mm_level_id}" ${query.mm_level_id=='0'?'selected':''}>${e.mm_level_name}</option>
              </c:forEach>
            </select>
          </div>

          <button type="submit" onclick="searchOrder('1')" class="btn btn-default btn-sm">查找</button>
        </form>
        <%--<p>For basic styling add the base class <code>.table</code> to any <code>&lt;table&gt;</code>.</p>--%>
        <table class="table">
          <thead>
          <tr>
            <th>姓名</th>
            <th>电话</th>
            <th>用户类型</th>
            <th>公司名称</th>
            <th>公司类型</th>
            <th>所属地区</th>
            <th>诚信</th>
            <th>协会</th>
            <th>星级</th>
            <th>到期时间</th>
            <th>审核状态</th>
            <th>操作</th>
            <c:if test="${is_manager=='0'}">
              <th>操作</th>
              <th>操作</th>
            </c:if>

          </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="e" varStatus="st">
            <tr>
              <td>${e.mm_emp_nickname}</td>
              <td>${e.mm_emp_mobile}</td>
              <td>
                <c:if test="${e.mm_emp_type=='0'}">苗木经营</c:if>
                <c:if test="${e.mm_emp_type=='1'}">苗木会员</c:if>
              </td>
              <td>${e.mm_emp_company}</td>
              <td>
                <c:if test="${e.mm_emp_company_type=='0'}">苗木</c:if>
                <c:if test="${e.mm_emp_company_type=='1'}">园林</c:if>
              </td>
              <td>${e.provinceName}${e.cityName}${e.areaName}</td>
              <td>
                <c:if test="${e.is_chengxin=='0'}">否</c:if>
                <c:if test="${e.is_chengxin=='1'}">是</c:if>
              </td>
              <td>
                <c:if test="${e.is_miaomu=='0'}">否</c:if>
                <c:if test="${e.is_miaomu=='1'}">是</c:if>
              </td>
              <td>${e.levelName}</td>
              <td>${e.mm_emp_endtime}</td>
              <td>
                <c:if test="${e.ischeck=='0'}">未审核</c:if>
                <c:if test="${e.ischeck=='1'}">已审核</c:if>
                <c:if test="${e.ischeck=='2'}">未通过</c:if>
              </td>
              <td>
                <a class="btn btn-default btn-sm" href="#module=/emp/toUpdatePwr&mm_emp_id=${e.mm_emp_id}" role="button">修改密码</a>
              </td>
              <c:if test="${is_manager=='0'}">
                <td>
                  <a class="btn btn-default btn-sm" href="#module=/empAd/list&mm_emp_id=${e.mm_emp_id}" role="button">轮播图</a>
                </td>
                <td>
                  <a class="btn btn-default btn-sm" href="#module=/emp/detail&mm_emp_id=${e.mm_emp_id}" role="button">编辑</a>
                </td>
              </c:if>
            </tr>
          </c:forEach>
          </tbody>
        </table>

          <div style="margin-top: 20px;border-top: 1px solid #dedede;padding-bottom:15px; height: 50px">
            <span style="line-height:28px;margin-top:25px;padding-left:10px; float: left">共${page.count}条/${page.pageCount}页</span>
            <ul class="pagination" style="padding-left:100px; float: right">
              <li>
                <a style="margin-right:20px">每页显示&nbsp;<select name="size" id="size" onchange="nextPage('1')">
                  <option value="10" ${query.size==10?'selected':''}>10</option>
                  <option value="20" ${query.size==20?'selected':''}>20</option>
                  <option value="30" ${query.size==30?'selected':''}>30</option>
                  <option value="100" ${query.size==100?'selected':''}>100</option>
                </select>&nbsp;条</a>
              </li>
              <c:choose >
                <c:when test="${page.page == 1}">
                  <li><a href="javascript:void(0)">首页</a></li>
                  <li><a href="javascript:void(0)"><span class="left">《</span></a></li>
                </c:when>
                <c:otherwise>
                  <li><a href="javascript:void(0);" onclick="nextPage('1')">首页</a></li>
                  <li><a href="javascript:void(0);" onclick="nextPage('${page.page-1}')"><span class="left">《</span></a></li>
                </c:otherwise>
              </c:choose>
              <li><a style="height: 30px; width: 100px">第<input style="width: 40px;height:20px;" type="text" id="index" name="index" onkeyup="searchIndex(event)" value="${page.page}"/> 页</a></li>

              <c:choose>
                <c:when test="${page.page == page.pageCount}">
                  <li><a href="javascript:void(0)"><span class="right">》</span></a></li>
                  <li><a href="javascript:void(0)">末页</a></li>
                </c:when>
                <c:otherwise>
                  <li><a href="javascript:void(0);" onclick="nextPage('${page.page+1}')"><span class="right">》</span></a></li>
                  <li><a href="javascript:void(0);" onclick="nextPage('${page.pageCount}')">末页</a></li>
                </c:otherwise>
              </c:choose>
            </ul>
          </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  function searchIndex(e){
    if(e.keyCode != 13) return;
    var _index = $("#index").val();
    var size = getCookie("contract_size");
    var mm_emp_type = $("#mm_emp_type").val();
    var mm_emp_company_type = $("#mm_emp_company_type").val();
    var mm_level_id = $("#mm_level_id").val();
    var ischeck = $("#ischeck").val();
    if(_index <= ${page.pageCount} && _index >= 1){
      window.location.href="#module=/emp/list&page="+page+"&size="+size+"&mm_emp_type="+mm_emp_type
      +"&mm_emp_company_type="+mm_emp_company_type
      +"&mm_level_id="+mm_level_id
      +"&ischeck="+ischeck;
    }else{
      alert("请输入1-${page.pageCount}的页码数");
    }
  }
  function nextPage(_page) {
    var page = parseInt(_page);
    var size = $("#size").val();
    var mm_emp_type = $("#mm_emp_type").val();
    var mm_emp_company_type = $("#mm_emp_company_type").val();
    var mm_level_id = $("#mm_level_id").val();
    var ischeck = $("#ischeck").val();
    addCookie("contract_size", size, 36);
    if ((page <= ${page.pageCount} && page >= 1)) {
      window.location.href="#module=/emp/list&page="+page+"&size="+size
      +"&mm_emp_type="+mm_emp_type
      +"&mm_emp_company_type="+mm_emp_company_type
      +"&mm_level_id="+mm_level_id
      +"&ischeck="+ischeck;
    } else {
      alert("请输入1-${page.pageCount}的页码数");
    }
  }

  function searchOrder(_page){
    var page = parseInt(_page);
    var size = $("#size").val();
    var mm_emp_type = $("#mm_emp_type").val();
    var mm_emp_company_type = $("#mm_emp_company_type").val();
    var mm_level_id = $("#mm_level_id").val();
    var ischeck = $("#ischeck").val();
    addCookie("contract_size", size, 36);
    if ((page <= ${page.pageCount} && page >= 1)) {
      window.location.href="#module=/emp/list&page="+page+"&size="+size
      +"&mm_emp_type="+mm_emp_type
      +"&mm_emp_company_type="+mm_emp_company_type
      +"&mm_level_id="+mm_level_id
      +"&ischeck="+ischeck;
    } else {
      alert("请输入1-${page.pageCount}的页码数");
    }
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

    var mm_emp_provinceId = $("#mm_emp_provinceId").val();

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

    var mm_emp_provinceId = $("#mm_emp_provinceId").val();
    var mm_emp_cityId = $("#mm_emp_cityId").val();

  };

  function selectArea(){
    var mm_emp_provinceId = $("#mm_emp_provinceId").val();
    var mm_emp_cityId = $("#mm_emp_cityId").val();
    var mm_emp_countryId = $("#mm_emp_countryId").val();

  };


</script>


