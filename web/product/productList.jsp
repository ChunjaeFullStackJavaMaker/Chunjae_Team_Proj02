<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품 목룍</title>


    <%@ include file="/setting/head.jsp"%>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<%@include file="/layout/header_top.jsp"%>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@include file="/layout/header.jsp"%>
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
                        <li><a href="#">영유아</a></li>
                        <li><a href="#">초등</a></li>
                        <li><a href="#">중등</a></li>
                        <li><a href="#">고등</a></li>
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
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Organi Shop</h2>
                    <div class="breadcrumb__option">
                        <a href="../index.html">Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Department</h4>
                        <ul>
                            <c:if test="${param.level eq 'child'}">
                                <li><a href="#">영유아 콘텐츠</a></li>
                                <li><a href="#">영유아 놀이</a></li>
                                <li><a href="#">영유아 기타</a></li>
                            </c:if>
                            <c:if test="${param.level eq 'elementary'}">
                                <li><a href="#">초등 교과서</a></li>
                                <li><a href="#">초등 참고서</a></li>
                                <li><a href="#">초등 문제집</a></li>
                                <li><a href="#">초등 기타</a></li>
                                </c:if>
                            <c:if test="${param.level eq 'middle'}">
                                <li><a href="#">중등 교과서</a></li>
                                <li><a href="#">중등 참고서</a></li>
                                <li><a href="#">중등 문제집</a></li>
                                <li><a href="#">중등 기타</a></li>
                            </c:if>
                            <c:if test="${param.level eq 'high'}">
                                <li><a href="#">고등 교과서</a></li>
                                <li><a href="#">고등 참고서</a></li>
                                <li><a href="#">고등 문제집</a></li>
                                <li><a href="#">고등 기타</a></li>
                            </c:if>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sort By</span>
                                <select>
                                    <option value="0">최신순</option>
                                    <option value="0">인기순</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!--영유아 전체 상품 출력-->
                    <c:if test="${param.level eq 'child'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('Q') and pro.cate_id.contains('R') and pro.cate_id.contains('S')}">
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg" data-setbg="${path }/storage/${pro.img_src}">
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="${path}/getProduct.do?pro_no=${pro.pro_no }">${pro.title}</a></h6>
                                            <h5>${pro.price}</h5>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty proList}">
                            <li class="col-12">해당 상품이 존재하지 않습니다.</li>
                        </c:if>
                    </c:if>

                    <!--초등 전체 상품-->
                    <c:if test="${param.level eq 'elementary'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('A') and pro.cate_id.contains('B') and pro.cate_id.contains('C') and pro.cate_id.contains('D')}">
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg" data-setbg="${path }/storage/${pro.img_src}">
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="${path}/getProduct.do?pro_no=${pro.pro_no }">${pro.title}</a></h6>
                                            <h5>${pro.price}</h5>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty proList}">
                            <li class="col-12">해당 상품이 존재하지 않습니다.</li>
                        </c:if>
                    </c:if>

                    <!--중등 전체 상품 출력-->
                    <c:if test="${param.level eq 'middle'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('E') and pro.cate_id.contains('F') and pro.cate_id.contains('G') and pro.cate_id.contains('H')}">
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg" data-setbg="${path }/storage/${pro.img_src}">
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="${path}/getProduct.do?pro_no=${pro.pro_no }">${pro.title}</a></h6>
                                            <h5>${pro.price}</h5>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty proList}">
                            <li class="col-12">해당 상품이 존재하지 않습니다.</li>
                        </c:if>
                    </c:if>

                    <!--고등 전체 상품 출력-->
                    <c:if test="${param.level eq 'high'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('I') and pro.cate_id.contains('J') and pro.cate_id.contains('K') and pro.cate_id.contains('L')}">
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg" data-setbg="${path }/storage/${pro.img_src}">
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="${path}/getProduct.do?pro_no=${pro.pro_no }">${pro.title}</a></h6>
                                            <h5>${pro.price}</h5>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty proList}">
                            <li class="col-12">해당 상품이 존재하지 않습니다.</li>
                        </c:if>
                    </c:if>
                </div>
                <div class="product__pagination">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<%@include file="/layout/footer.jsp"%>
<!-- Footer Section End -->

</body>

</html>