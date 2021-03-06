<%--
  Created by IntelliJ IDEA.
  User: Dao Van Tam
  Date: 5/4/2019
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
            </ul>
        </div>
        <div class="page-content">
            <c:if test="${not empty message}">
                <div class="alert alert-${alert}">
                        ${message}
                </div>
            </c:if>
            <div class="row">
                <div class="col-xs-12">
                    <div class="widget-box table-filter">
                        <div class="table-btn-controls">
                            <div class="pull-right tableTools-container">
                                <div class="dt-buttons btn-overlap btn-group">
                                    <a flag="info"
                                       class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
                                       data-toggle="tooltip"
                                       title='Thêm Thể Loại' href="/admin/category?type=create">
<span>
<i class="fa fa-plus-circle bigger-110 purple"></i>
</span>
                                    </a>
                                    <button id="btnDelete" type="button" disabled
                                            class="dt-button buttons-html5 btn btn-white btn-primary btn-bold">
<span>
<i class="fa fa-trash-o bigger-110 pink"></i>
</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Số thứ tự</th>
                                        <th>Tên thể loại</th>
                                        <th>Xử lý</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${listCategory}">
                                        <tr>
                                            <th>${item.id}</th>
                                            <th>${item.name}</th>
                                            <th>
                                                <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                   title="cap nhat the loai"
                                                   href="/admin/category?type=edit&id=${item.id}">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                </a>
                                            </th>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
