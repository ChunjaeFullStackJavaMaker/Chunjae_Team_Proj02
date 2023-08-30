<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>입고 처리</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@include file="../../setting/head.jsp"%>
    <style>
        .breadcrumb-section {background-image: url("${path }/img/breadcrumb.jpg");}
    </style>
</head>
<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<%@include file="../../layout/header_top.jsp"%>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@include file="../../layout/header.jsp"%>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<%@ include file="../../layout/rollup_sideMenu.jsp"%>
<!-- Hero Section End -->


<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>All departments</span>
                    </div>
                    <ul>
                        <li><a href="${path}/ProList.do?cate=child">유아</a></li>
                        <li><a href="${path}/ProList.do?cate=elementary">초등</a></li>
                        <li><a href="${path}/ProList.do?cate=middle">중등</a></li>
                        <li><a href="${path}/ProList.do?cate=high">고등</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div>
                            <input type="text" placeholder="어떤 책이 필요하신가요?">
                            <button type="submit" class="site-btn">검색</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="${path}/img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>${pro.title }</h2>
                    <div class="breadcrumb__option">
                        <a href="${path}/">Home</a>
                        <a href="${path}/">${pro.title}</a>
                        <span>${pro.title}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- 제품 상세 보기 및 입고 처리 -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="${path }/storage/${pro.img_src }" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>${pro.title}</h3>
                    <div class="product__details__price">${pro.price }</div>
                    <p>${pro.description}</p>
                    <div class="product__details__quantity">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>입고 수량<span>*</span></p>
                                    <input type="number" name="receive" id="receive" min="1" max="100" value="1" >
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p><span></span></p>
                                    <button type="button" id="receive_btn" class="site-btn" onclick="javascript:location.href='${path}/ReceivePro.do?pro_no=${pro.pro_no}'">RECEIVE</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 제품 상세 보기 및 입고 처리  -->

</body>
</html>