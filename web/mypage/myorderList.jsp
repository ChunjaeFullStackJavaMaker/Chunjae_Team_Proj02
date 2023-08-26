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
    <title> 주문/배송 조회 </title>
    <c:set var="path" value="<%=request.getContextPath()%>"/>
    <%@ include file="/setting/head.jsp"%>

    <style>
        a {
            color: #333;
        }
        a:hover {
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

    <!-- Hero Section Begin -->
    <%@ include file="/layout/rollup_sideMenu.jsp"%>
    <!-- Hero Section End -->

    <div class="container">
        <div class="row">
            <div class="col col-lg-3 mb-3 p-3">
                <div class="p-4 border">
                    <a href="" class="d-block"> 개인정보 변경 </a>
                    <a href="" class="d-block mt-2" style="color:#7FAD39; font-weight:bold"> 주문/배송 조회 </a>
                    <a href="" class="d-block mt-2"> 취소/반품/교환 조회 </a>
                    <a href="" class="d-block mt-2"> 리뷰 관리</a>
                </div>
            </div>
            <div class="col col-lg-9 mt-3">
                <c:forEach var="order" items="${order}">
                    <c:set var="resdate" value="${order.resdate}"></c:set>
                    <h4> ${order.resdate} </h4>
                    <hr>
                    <c:if test="${resdate eq order.resdate}">
                        <div class="row">
                            <div class="col col-lg-2 d-flex align-items-center">
                                <img src="${path}/img/product/${order.thumb}" alt="${order.description}" width="90px" height="auto">
                            </div>
                            <div class="col col-lg-6">
                                <h4> 책 제목 </h4>
                                <p> 총 1권 / 50,000원 </p>
                            </div>
                            <div class="col col-lg-2 d-flex align-items-center">
                                배송중
                            </div>
                            <div class="col col-lg-2 d-flex align-items-center">
                                <button type="button" class="btn btn-outline-secondary"> 환불 </button>
                            </div>
                        </div>
                        <hr class="mb-5">
                    </c:if>
                </c:forEach>

                <h4> 주문일자 </h4>
                <hr>
                <div class="row">
                    <div class="col col-lg-2 d-flex align-items-center">
                        <img src="${path}/img/product/bookthumb.jpg" alt="" width="90px" height="auto">
                    </div>
                    <div class="col col-lg-6">
                        <h4> 책 제목 </h4>
                        <p> 총 1권 / 50,000원 </p>
                    </div>
                    <div class="col col-lg-2 d-flex align-items-center">
                        배송중
                    </div>
                    <div class="col col-lg-2 d-flex align-items-center">
                        <button type="button" class="btn btn-outline-secondary"> 환불 </button>
                    </div>
                </div>
                <hr class="mb-5">
            </div>
        </div>
    </div>

    <!-- Footer Section Begin -->
    <%@include file="/layout/footer.jsp"%>
    <!-- Footer Section End -->
</div>
</body>

</html>