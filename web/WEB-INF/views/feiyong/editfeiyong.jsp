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
      <li><a href="#">费用管理</a></li>
      <li><a href="#">修改费用</a></li>
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
          <span>修改费用</span>
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
        <h4 class="page-header">修改费用</h4>
        <form class="form-horizontal" role="form">
          <input type="hidden" id="mm_feiyong_id" value="${feiyong.mm_feiyong_id}" >
          <div class="form-group">
            <label class="col-sm-2 control-label">费用名称</label>
            <div class="col-sm-4">
              <input type="text" value="${feiyong.mm_feiyong_name}" id="mm_feiyong_name"  class="form-control" placeholder="例如：VIP1半年" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">费用金额（单位元）</label>
            <div class="col-sm-4">
              <input type="text" value="${feiyong.mm_feiyong_jine}" id="mm_feiyong_jine" class="form-control" placeholder="例如：500" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
              <button type="button" class="btn btn-primary" onclick="saveP()">修改</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  function saveP(){
    var mm_feiyong_id = $("#mm_feiyong_id").val();
    var add_one = $("#mm_feiyong_name").val();
    var add_two = $("#mm_feiyong_jine").val();

    if(add_one.replace(/\s/g, '')==''){
      alert("请输入正确的费用名称");
      return;
    }
    if(add_two.replace(/\s/g, '')==''){
      alert("请输入正确的费用金额");
      return;
    }

    $.ajax({
      cache: true,
      type: "POST",
      url:"/feiyong/editFeiyong.do",
      data:{"mm_feiyong_name":add_one, "mm_feiyong_jine":add_two, "mm_feiyong_id":mm_feiyong_id},
      async: false,
      success: function(_data) {
        var data = $.parseJSON(_data);
        if(data.success){
          alert("执行成功");
          window.location.href = "#module=feiyong/list";
        }else{
          alert("执行失败，请检查")
        }
      }
    });
  }
</script>


