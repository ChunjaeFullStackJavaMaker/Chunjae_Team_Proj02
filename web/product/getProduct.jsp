<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${path}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${path}/css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<%@include file="../layout/header_top.jsp"%>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@include file="../layout/header.jsp"%>
<!-- Header Section End -->

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
                        <li><a href="#">교과서</a></li>
                        <li><a href="#">참고서</a></li>
                        <li><a href="#">문제집</a></li>
                        <li><a href="#">기타</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="What do yo u need?">
                            <button type="submit" class="site-btn">SEARCH</button>
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
                    <h2>상품 이름</h2>
                    <div class="breadcrumb__option">
                        <a href="${path}/">대분류</a>
                        <a href="${path}/">중분류</a>
                        <span>상품 이름</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="${path}/img/product/details/product-details-1.jpg" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="${path}/img/product/details/product-details-2.jpg"
                             src="${path}/img/product/details/thumb-1.jpg" alt="">
                        <img data-imgbigurl="${path}/img/product/details/product-details-3.jpg"
                             src="${path}/img/product/details/thumb-2.jpg" alt="">
                        <img data-imgbigurl="${path}/img/product/details/product-details-5.jpg"
                             src="${path}/img/product/details/thumb-3.jpg" alt="">
                        <img data-imgbigurl="${path}/img/product/details/product-details-4.jpg"
                             src="${path}/img/product/details/thumb-4.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>상품 이름</h3>
                    <div class="product__details__price">가격</div>
                    <p>상품의 요약 설명</p>
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="상품 수량">
                            </div>
                        </div>
                    </div>
                    <a href="#" class="primary-btn">장바구니 추가</a>
                    <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">DESCRIPTION</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                               aria-selected="false">VIDEO</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                               aria-selected="false">REVIEW<span>리뷰의 갯수</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>상품 상세 정보</h6>
                                <p>상품의 설명</p>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>비디오</h6>
                                <p>비디오가 들어갈 자리입니다.</p>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>후기</h6>
                                <p>리뷰가 들어갈 자리입니다</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Footer Section Begin -->
<%@ include file="../layout/footer.jsp"%>
<!-- Footer Section End -->

</body>

</html>