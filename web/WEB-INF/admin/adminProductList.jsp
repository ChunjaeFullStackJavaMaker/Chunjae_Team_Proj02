<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 상품 관리 </title>
    <c:set var="path" value="<%=request.getContextPath()%>"/>
    <%@ include file="/setting/head.jsp"%>

    <style>
        .menu_item {
            color: #333;
        }
        .menu_item:hover {
            color: #333;
            font-weight: bold;
        }
    </style>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<div class="container-fluid m-0 p-0">
    <!-- Humberger Begin -->
    <%@include file="/layout/header_top.jsp"%>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <%@include file="/layout/header.jsp"%>
    <!-- Header Section End -->

    <!-- Search Section Begin -->
    <%@include file="/layout/rollup_sideMenu.jsp"%>
    <!-- Search Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section" style="background-image: url('${path}/img/breadcrumb.jpg'); background-position: bottom, center; background-size: cover">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2> 상품 관리 </h2>
                        <div class="breadcrumb__option">
                            <a href="${path}/">Home</a>
                            <span> 관리자 페이지 </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <div class="container mt-5" style="min-height:50vh">
        <div class="row">
            <div class="col col-lg-3 mb-3 p-3">
                <div class="p-4 border">
                    <a href="" class="d-block menu_item" style="color:#7FAD39; font-weight:bold"> 상품 관리 </a>
                    <a href="${path}/MyOrderList.do" class="d-block menu_item mt-2"> 입출고 목록 </a>
                    <a href="" class="d-block menu_item mt-2"> 회원 관리 </a>
                    <a href="" class="d-block menu_item mt-2"> 고객지원 관리 </a>
                </div>
            </div>
            <div class="col col-lg-9 mt-3">
                <button onclick="javascript: location.href='${path}/AddProduct.do'" class="btn btn-primary float-right mb-3"> 상품 등록 </button>
                <table class="table table-striped">
                    <thead>
                    <tr class="text-center"><th> 상품번호 </th><th> 책 제목 </th><th> 가격 </th><th> 관리 </th></tr>
                    </thead>
                    <tbody>
                    <c:forEach var="pro" items="${proList}">
                        <tr class="text-center">
                            <td class="align-middle">${pro.pro_cate_no}</td>
                            <td class="align-middle">${pro.title}</td>
                            <td class="align-middle">${pro.price}원 </td>
                            <td class="align-middle">
                                <button class="btn btn-outline-primary" onclick="javascript: location.href='${path}/UpdateProduct.do?pro_no=${pro.pro_no}'"> 수정 </button>
                                <button class="btn btn-outline-primary" onclick="javascript: location.href='${path}/DelProduct.do?pro_no=${pro.pro_no}'"> 삭제 </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Footer Section Begin -->
    <%@include file="/layout/footer.jsp"%>
    <!-- Footer Section End -->
</div>
</body>
</html>