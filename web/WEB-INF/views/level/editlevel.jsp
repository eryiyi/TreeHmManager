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
      <li><a href="#">等级管理</a></li>
      <li><a href="#">修改等级</a></li>
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
    <div class="box">
      <div class="box-header">
        <div class="box-name">
          <i class="fa fa-search"></i>
          <span>修改等级</span>
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
        <h4 class="page-header">修改等级</h4>
        <form class="form-horizontal" role="form">
          <input type="hidden" id="mm_level_id" value="${levelObj.mm_level_id}">
          <div class="form-group">
            <label class="col-sm-2 control-label">等级名称</label>
            <div class="col-sm-4">
              <input type="text" id="add_one" value ="${levelObj.mm_level_name}" class="form-control" placeholder="等级名称" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">等级描述</label>
            <div class="col-sm-4">
              <input type="text" id="add_two" value ="${levelObj.mm_level_cont}"  class="form-control" placeholder="等级描述" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
              <button type="button" class="btn btn-primary" onclick="saveP()">确定</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  function saveP(){
    var mm_level_id = $("#mm_level_id").val();
    var add_one = $("#add_one").val();
    var add_two = $("#add_two").val();

    if(add_one.replace(/\s/g, '')==''){
      alert("请输入正确的等级名称");
      return;
    }
    if(add_two.replace(/\s/g, '')==''){
      alert("请输入正确的等级描述");
      return;
    }

    $.ajax({
      cache: true,
      type: "POST",
      url:"/level/editLevel.do",
      data:{"mm_level_name":add_one, "mm_level_cont":add_two, "mm_level_id":mm_level_id},
      async: false,
      success: function(_data) {
        var data = $.parseJSON(_data);
        if(data.success){
          alert("执行成功");
          window.location.href = "#module=level/list";
        }else{
          alert("执行失败，请检查")
        }
      }
    });
  }
</script>


