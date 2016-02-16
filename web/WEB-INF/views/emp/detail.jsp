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
      <li><a href="javascript:void (0);">会员管理</a></li>
      <li><a href="javascript:void (0);">会员详情</a></li>
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
          <span>会员详情</span>
        </div>
      </div>
      <div class="box-content">
        <%--<h4 class="page-header">会员详情</h4>--%>
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-sm-2 control-label">用户名</label>
              <div class="col-sm-4">
                  <input type="text" id="mm_emp_nickname" class="form-control" value="${empVO.mm_emp_nickname}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
              </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">用户手机号</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_mobile" class="form-control" value="${empVO.mm_emp_mobile}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">用户密码</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_password" class="form-control" value="${empVO.mm_emp_password}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">用户类型</label>
            <div class="col-lg-8">
              <select class="form-control" id="mm_emp_type">
                <option value="">--选择用户类型--</option>
                <option value="0" ${empVO.mm_emp_type=='0'?'selected':''}>苗木经营</option>
                <option value="1" ${empVO.mm_emp_type=='1'?'selected':''}>苗木会员</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">公司名称</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_company" class="form-control" value="${empVO.mm_emp_company}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">公司类型</label>
            <div class="col-lg-8">
              <select class="form-control" id="mm_emp_company_type">
                <option value="">--选择公司类型--</option>
                <option value="0" ${empVO.mm_emp_company_type=='0'?'selected':''}>苗木</option>
                <option value="1" ${empVO.mm_emp_company_type=='1'?'selected':''}>园林</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">公司地址</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_company_address" class="form-control" value="${empVO.mm_emp_company_address}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">公司简介</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_company_detail" class="form-control" value="${empVO.mm_emp_company_detail}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">VIP星级</label>
            <div class="col-lg-8">
              <select class="form-control" id="mm_level_id">
                <option value="">--选择VIP星级--</option>
                <c:forEach items="${listLevels}" var="e" varStatus="st">
                  <option value="${e.mm_level_id}"  ${empVO.mm_level_id==e.mm_level_id?'selected':''}>${e.mm_level_name}</option>
                </c:forEach>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">Vip到期日期</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_endtime" class="form-control" value="${empVO.mm_emp_endtime}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">注册日期</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_regtime" class="form-control" value="${empVO.mm_emp_regtime}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">会员备注</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_beizhu" class="form-control" value="${empVO.mm_emp_beizhu}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">允许发布信息数量</label>
            <div class="col-sm-4">
              <input type="text" id="mm_emp_msg_num" class="form-control" value="${empVO.mm_emp_msg_num}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">允许登陆</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_login">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_login=='0'?'selected':''}>允许</option>
                <option value="1" ${empVO.is_login=='1'?'selected':''}>不允许</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">发布供应信息权限</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_fabugongying">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_fabugongying=='0'?'selected':''}>不允许</option>
                <option value="1" ${empVO.is_fabugongying=='1'?'selected':''}>允许</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">发布求购信息权限</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_fabuqiugou">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_fabuqiugou=='0'?'selected':''}>不允许</option>
                <option value="1" ${empVO.is_fabuqiugou=='1'?'selected':''}>允许</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">查看供应信息权限</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_fabugongying_see">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_fabugongying_see=='0'?'selected':''}>允许</option>
                <option value="1" ${empVO.is_fabugongying_see=='1'?'selected':''}>不允许</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">查看求购信息权限</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_fabuqiugou_see">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_fabuqiugou_see=='0'?'selected':''}>允许</option>
                <option value="1" ${empVO.is_fabuqiugou_see=='1'?'selected':''}>不允许</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">查看所有信息权限</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_see_all">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_see_all=='0'?'selected':''}>不允许</option>
                <option value="1" ${empVO.is_see_all=='1'?'selected':''}>允许</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">照片发布权限</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_pic">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_pic=='0'?'selected':''}>不允许</option>
                <option value="1" ${empVO.is_pic=='1'?'selected':''}>允许3张</option>
                <option value="1" ${empVO.is_pic=='1'?'selected':''}>允许6张</option>
                <option value="1" ${empVO.is_pic=='1'?'selected':''}>允许9张</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">诚信单位</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_chengxin">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_chengxin=='0'?'selected':''}>否</option>
                <option value="1" ${empVO.is_chengxin=='1'?'selected':''}>是</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">苗木协会</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_miaomu">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_miaomu=='0'?'selected':''}>否</option>
                <option value="1" ${empVO.is_miaomu=='1'?'selected':''}>是</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label">是否禁用</label>
            <div class="col-lg-8">
              <select class="form-control" id="is_use">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.is_use=='0'?'selected':''}>否</option>
                <option value="1" ${empVO.is_use=='1'?'selected':''}>是</option>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">经纬度</label>
            <div class="col-sm-4">
              <input type="text" id="lat" class="form-control" value="${empVO.lat}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
              <input type="text" id="lng" class="form-control" value="${empVO.lng}" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">是否审核</label>
            <div class="col-lg-8">
              <select class="form-control" id="ischeck">
                <option value="">--请选择--</option>
                <option value="0" ${empVO.ischeck=='0'?'selected':''}>未审核</option>
                <option value="1" ${empVO.ischeck=='1'?'selected':''}>已审核</option>
                <option value="1" ${empVO.ischeck=='1'?'selected':''}>未通过</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
              <button type="button" class="btn btn-primary" onclick="saveRole('${empVO.mm_emp_id}')">确定修改</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

  function saveRole(mm_manager_id){
    var mm_manager_password = $("#mm_manager_password").val();
    if(mm_manager_password.replace(/\s/g, '') == ''){
        alert("密码不能为空");
        return;
    }
    if(mm_manager_password.length<6 || mm_manager_password.length>18){
      alert("密码长度至少6位,最多18位");
      return;
    }
    mm_manager_password = hex_md5(mm_manager_password);
    $.ajax({
      cache: true,
      type: "POST",
      url:"/changePass.do",
      data:{"mm_manager_password":mm_manager_password, "mm_manager_id":mm_manager_id},
      async: false,
      success: function(_data) {
        var data = $.parseJSON(_data);
        if(data.success){
          alert("修改成功");
          window.location.href = "#module=admin/list&page=1";
        }else{
          var _case = {1:"修改失败"};
          alert(_case[data.code])
        }
      }
    });
  };



</script>


