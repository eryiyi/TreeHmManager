<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="um" uri="/unimanager-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<div class="row">
    <div id="breadcrumb" class="col-xs-12">
        <a href="#" class="show-sidebar">
            <i class="fa fa-bars"></i>
        </a>
        <ol class="breadcrumb pull-left">
            <li><a href="javascript:void(0)" onclick="toPage('mainPage','')">主页</a></li>
            <li><a href="javascript:void(0)">公告管理</a></li>
            <li><a href="javascript:void(0)">公告详情</a></li>
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
        <div class="box">
            <div class="box-header">
                <div class="box-name">
                    <i class="fa fa-search"></i>
                    <span>公告详情</span>
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
                <form class="form-horizontal" role="form">
                    <input type="hidden" id="mm_tel_id" value="${levelObj.mm_tel_id}">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">标题</label>

                        <div class="col-sm-4">
                            <input type="text" value="${notice.mm_notice_title}" readonly="true" class="form-control"
                                   data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">详情</label>

                        <div class="col-sm-4">
                            <textarea cols="10" rows="10" class="form-control" value="${notice.mm_notice_content}"
                                      readonly="true" data-toggle="tooltip" data-placement="bottom"
                                      title="Tooltip for name">${notice.mm_notice_content}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">发布时间</label>

                        <div class="col-sm-4">
                            <input type="text" value="${notice.dateline}" readonly="true" class="form-control"
                                   placeholder="服务电话" data-toggle="tooltip" data-placement="bottom"
                                   title="Tooltip for name">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <button type="button" class="btn btn-primary" onclick="javascript :history.back(-1)">返回
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>