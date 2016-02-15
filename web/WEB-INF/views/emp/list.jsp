<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<div class="row">
  <div id="breadcrumb" class="col-xs-12">
    <a href="#" class="show-sidebar">
      <i class="fa fa-bars"></i>
    </a>
    <ol class="breadcrumb pull-left">
      <li><a href="index.html">主页</a></li>
      <li><a href="#">会员管理</a></li>
      <li><a href="#">经营户列表</a></li>
    </ol>
    <div id="social" class="pull-right">
      <a href="#"><i class="fa fa-google-plus"></i></a>
      <a href="#"><i class="fa fa-facebook"></i></a>
      <a href="#"><i class="fa fa-twitter"></i></a>
      <a href="#"><i class="fa fa-linkedin"></i></a>
      <a href="#"><i class="fa fa-youtube"></i></a>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-xs-12 col-sm-12">
    <div class="box ui-draggable ui-droppable">
      <div class="box-header">
        <div class="box-name ui-draggable-handle">
          <i class="fa fa-table"></i>
          <span>经营户列表</span>
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
          <%--<div class="form-group">--%>
            <%--<input type="text" class="form-control" id="emp_name" value="${query.empName}" placeholder="买家名称">--%>
          <%--</div>--%>
          <%--<div class="form-group">--%>
            <%--<input type="tel" class="form-control" id="emp_phone" value="${query.empPhone}" placeholder="买家电话">--%>
          <%--</div>--%>
          <%--<div class="form-group">--%>
            <%--<select class="form-control" id="order_status">--%>
              <%--<option value="">--选择订单状态--</option>--%>
              <%--<option value="1" ${query.orderStatus=='1'?'selected':''}>订单生成</option>--%>
              <%--<option value="2" ${query.orderStatus=='2'?'selected':''}>订单支付</option>--%>
              <%--<option value="3" ${query.orderStatus=='3'?'selected':''}>订单取消</option>--%>
              <%--<option value="4" ${query.orderStatus=='4'?'selected':''}>订单作废</option>--%>
              <%--<option value="5" ${query.orderStatus=='5'?'selected':''}>订单完成</option>--%>
            <%--</select>--%>
          <%--</div>--%>
          <%--<div class="form-group">--%>
            <%--<select class="form-control" id="pay_status">--%>
              <%--<option value="" >--选择付款状态--</option>--%>
              <%--<option value="0" ${query.payStatus=='0'?'selected':''}>未支付</option>--%>
              <%--<option value="1" ${query.payStatus=='1'?'selected':''}>已支付</option>--%>
              <%--<option value="2" ${query.payStatus=='2'?'selected':''}>退款</option>--%>
            <%--</select>--%>
          <%--</div>--%>
          <%--<div class="form-group">--%>
            <%--<select class="form-control" id="distribution_status">--%>
              <%--<option value="">--选择配送状态--</option>--%>
              <%--<option value="0" ${query.distribStatus=='0'?'selected':''}>未支付</option>--%>
              <%--<option value="1" ${query.distribStatus=='1'?'selected':''}>已支付</option>--%>
              <%--<option value="2" ${query.distribStatus=='2'?'selected':''}>退款</option>--%>
            <%--</select>--%>
          <%--</div>--%>
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
            <th>审核状态</th>
            <th>操作</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="e" varStatus="st">
            <tr>
              <td>${e.mm_emp_nickname}</td>
              <td>${e.mm_emp_mobile}</td>
              <td>${e.mm_emp_type}</td>
              <td>${e.mm_emp_company}</td>
              <%--<td>--%>
                <%--<c:if test="${e.create_time!=null && e.create_time!=''}">${um:format(e.create_time, "yyyy-MM-dd HH:mm:ss")}</c:if>--%>
              <%--</td>--%>
              <%--<td>--%>
                <%--<c:if test="${e.pay_time!=null && e.pay_time!=''}">${um:format(e.pay_time, "yyyy-MM-dd HH:mm:ss")}</c:if>--%>
              <%--</td>--%>
              <%--<td>--%>
                <%--<c:if test="${e.send_time!=null && e.send_time!=''}">${um:format(e.send_time, "yyyy-MM-dd HH:mm:ss")}</c:if>--%>
              <%--</td>--%>
              <td>
                <c:if test="${e.mm_emp_company_type=='0'}">苗木</c:if>
                <c:if test="${e.mm_emp_company_type=='1'}">园林</c:if>
              </td>
              <td>${e.areaName}</td>
              <td>
                <c:if test="${e.is_chengxin=='0'}">否</c:if>
                <c:if test="${e.is_chengxin=='1'}">是</c:if>
              </td>
              <td>
                <c:if test="${e.is_miaomu=='0'}">否</c:if>
                <c:if test="${e.is_miaomu=='1'}">是</c:if>
              </td>
              <td>${e.levelName}</td>
              <td>
                <c:if test="${e.ischeck=='0'}">未审核</c:if>
                <c:if test="${e.ischeck=='1'}">已审核</c:if>
                <c:if test="${e.ischeck=='2'}">未通过</c:if>
              </td>
              <td>
                <a class="btn btn-default btn-sm" href="#module=/order/detail&id=${e.order_no}" role="button">编辑</a>
              </td>
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
    var empName = $("#emp_name").val();
    var empPhone = $("#emp_phone").val();
    var orderStatus = $("#order_status").val();
    var payStatus = $("#pay_status").val();
    var distributionStatus = $("#distribution_status").val();
    if(_index <= ${page.pageCount} && _index >= 1){
      window.location.href="#module=/order/list&page="+page+"&size="+size+"&empName="+empName+"&empPhone="+empPhone+"&orderStatus="+orderStatus+"&payStatus="+payStatus+"&distribStatus="+distributionStatus;
    }else{
      alert("请输入1-${page.pageCount}的页码数");
    }
  }
  function nextPage(_page) {
    var page = parseInt(_page);
    var size = $("#size").val();
    var empName = $("#emp_name").val();
    var empPhone = $("#emp_phone").val();
    var orderStatus = $("#order_status").val();
    var payStatus = $("#pay_status").val();
    var distributionStatus = $("#distribution_status").val();
    addCookie("contract_size", size, 36);
    if ((page <= ${page.pageCount} && page >= 1)) {
      window.location.href="#module=/order/list&page="+page+"&size="+size+"&empName="+empName+"&empPhone="+empPhone+"&orderStatus="+orderStatus+"&payStatus="+payStatus+"&distribStatus="+distributionStatus;
    } else {
      alert("请输入1-${page.pageCount}的页码数");
    }
  }

  function searchOrder(_page){
    var page = parseInt(_page);
    var size = $("#size").val();
    var empName = $("#emp_name").val();
    var empPhone = $("#emp_phone").val();
    var orderStatus = $("#order_status").val();
    var payStatus = $("#pay_status").val();
    var distributionStatus = $("#distribution_status").val();
    addCookie("contract_size", size, 36);
    if ((page <= ${page.pageCount} && page >= 1)) {
      window.location.href="#module=/order/list&page="+page+"&size="+size+"&empName="+empName+"&empPhone="+empPhone+"&orderStatus="+orderStatus+"&payStatus="+payStatus+"&distribStatus="+distributionStatus;
    } else {
      alert("请输入1-${page.pageCount}的页码数");
    }
  }
</script>


