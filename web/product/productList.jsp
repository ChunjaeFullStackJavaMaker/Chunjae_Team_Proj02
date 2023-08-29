<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
=======
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<<<<<<< HEAD
    <title>상품 목록</title>

=======
    <title>Ogani | Template</title>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d

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
<<<<<<< HEAD
                        <li><a href="${path}/ProList.do?cate=child">유아</a></li>
                        <li><a href="${path}/ProList.do?cate=elementary">초등</a></li>
                        <li><a href="${path}/ProList.do?cate=middle">중등</a></li>
                        <li><a href="${path}/ProList.do?cate=high">고등</a></li>
=======
                        <li><a href="#">Fresh Meat</a></li>
                        <li><a href="#">Vegetables</a></li>
                        <li><a href="#">Fruit & Nut Gifts</a></li>
                        <li><a href="#">Fresh Berries</a></li>
                        <li><a href="#">Ocean Foods</a></li>
                        <li><a href="#">Butter & Eggs</a></li>
                        <li><a href="#">Fastfood</a></li>
                        <li><a href="#">Fresh Onion</a></li>
                        <li><a href="#">Papayaya & Crisps</a></li>
                        <li><a href="#">Oatmeal</a></li>
                        <li><a href="#">Fresh Bananas</a></li>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
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
<<<<<<< HEAD
=======
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+65 11.188.888</h5>
                            <span>support 24/7 time</span>
                        </div>
                    </div>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<<<<<<< HEAD
<section class="breadcrumb-section set-bg" style="background-image: url("${path}/img/breadcrumb.jpg")>
=======
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Organi Shop</h2>
                    <div class="breadcrumb__option">
<<<<<<< HEAD
                        <a href="${path}">Home</a>
                        <span>상품 목록</span>
=======
                        <a href="../index.html">Home</a>
                        <span>Shop</span>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
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
<<<<<<< HEAD
                            <c:if test="${param.cate eq 'Q&R&S' || param.cate eq 'Q' || param.cate eq 'R' || param.cate eq 'S'}">
                                <li><a href="${path}/ProList.do?cate=Q">유아 콘텐츠</a></li>
                                <li><a href="${path}/ProList.do?cate=R">유아 놀이</a></li>
                                <li><a href="${path}/ProList.do?cate=S">유아 기타</a></li>
                            </c:if>
                            <c:if test="${param.cate eq 'A&B&C&D' || param.cate eq 'A' || param.cate eq 'B' || param.cate eq 'C' || param.cate eq 'D'}">
                                <li><a href="${path}/ProList.do?cate=A">초등 교과서</a></li>
                                <li><a href="${path}/ProList.do?cate=B">초등 참고서</a></li>
                                <li><a href="${path}/ProList.do?cate=C">초등 문제집</a></li>
                                <li><a href="${path}/ProList.do?cate=D">초등 기타</a></li>
                            </c:if>
                            <c:if test="${param.cate eq 'E&F&G&H' || param.cate eq 'E' || param.cate eq 'F' || param.cate eq 'G' || param.cate eq 'H'}">
                                <li><a href="${path}/ProList.do?cate=E">중등 교과서</a></li>
                                <li><a href="${path}/ProList.do?cate=F">중등 참고서</a></li>
                                <li><a href="${path}/ProList.do?cate=G">중등 문제집</a></li>
                                <li><a href="${path}/ProList.do?cate=H">중등 기타</a></li>
                            </c:if>
                            <c:if test="${param.cate eq 'I&J&K&L' || param.cate eq 'I' || param.cate eq 'J' || param.cate eq 'K' || param.cate eq 'L'}">
                                <li><a href="${path}/ProList.do?cate=I">고등 교과서</a></li>
                                <li><a href="${path}/ProList.do?cate=J">고등 참고서</a></li>
                                <li><a href="${path}/ProList.do?cate=K">고등 문제집</a></li>
                                <li><a href="${path}/ProList.do?cate=L">고등 기타</a></li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="row">
                    <!--유아 전체 상품 출력-->
                    <c:if test="${param.cate eq 'Q&R&S'}">
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

                    <!--유아 콘텐츠 상품 출력-->
                    <c:if test="${param.cate eq 'Q'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('Q')}">
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

                    <!--유아 놀이 상품 출력-->
                    <c:if test="${param.cate eq 'R'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('R')}">
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

                    <!--유아 기타 상품 출력-->
                    <c:if test="${param.cate eq 'S'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('S')}">
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
                    <c:if test="${param.cate eq 'A&B&C&D'}">
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

                    <!--초등 교과서 상품-->
                    <c:if test="${param.cate eq 'A'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('A')}">
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

                    <!--초등 참고서 상품-->
                    <c:if test="${param.cate eq 'B'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('B')}">
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

                    <!--초등 문제집 상품-->
                    <c:if test="${param.cate eq 'C'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('C')}">
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

                    <!--초등 기타 상품-->
                    <c:if test="${param.cate eq 'D'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('D')}">
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
                    <c:if test="${param.cate eq 'E&F&G&H'}">
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

                    <!--중등 교과서 상품 출력-->
                    <c:if test="${param.cate eq 'E'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('E')}">
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

                    <!--중등 참고서 상품 출력-->
                    <c:if test="${param.cate eq 'F'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('F')}">
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

                    <!--중등 문제집 상품 출력-->
                    <c:if test="${param.cate eq 'G'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('G')}">
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

                    <!--중등 기타 상품 출력-->
                    <c:if test="${param.cate eq 'H'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('H')}">
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
                    <c:if test="${param.cate eq 'I&J&K&L'}">
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

                    <!--고등 교과서 상품 출력-->
                    <c:if test="${param.cate eq 'I'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('I')}">
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

                    <!--고등 참고서 상품 출력-->
                    <c:if test="${param.cate eq 'J'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('J')}">
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

                    <!--고등 문제집 상품 출력-->
                    <c:if test="${param.cate eq 'K'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('K')}">
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

                    <!--고등 기타 상품 출력-->
                    <c:if test="${param.cate eq 'L'}">
                        <c:forEach var="pro" items="${proList}">
                            <c:if test="${pro.cate_id ne null and pro.cate_id.contains('L')}">
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
=======
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Price</h4>
                        <div class="price-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="10" data-max="540">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__item sidebar__item__color--option">
                        <h4>Colors</h4>
                        <div class="sidebar__item__color sidebar__item__color--white">
                            <label for="white">
                                White
                                <input type="radio" id="white">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--gray">
                            <label for="gray">
                                Gray
                                <input type="radio" id="gray">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--red">
                            <label for="red">
                                Red
                                <input type="radio" id="red">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--black">
                            <label for="black">
                                Black
                                <input type="radio" id="black">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--blue">
                            <label for="blue">
                                Blue
                                <input type="radio" id="blue">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--green">
                            <label for="green">
                                Green
                                <input type="radio" id="green">
                            </label>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <h4>Popular Size</h4>
                        <div class="sidebar__item__size">
                            <label for="large">
                                Large
                                <input type="radio" id="large">
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="medium">
                                Medium
                                <input type="radio" id="medium">
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="small">
                                Small
                                <input type="radio" id="small">
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="tiny">
                                Tiny
                                <input type="radio" id="tiny">
                            </label>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Latest Products</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../img/latest-product/lp-1.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Crab Pool Security</h6>
                                            <span>$30.00</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../img/latest-product/lp-2.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Crab Pool Security</h6>
                                            <span>$30.00</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../img/latest-product/lp-3.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Crab Pool Security</h6>
                                            <span>$30.00</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../img/latest-product/lp-1.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Crab Pool Security</h6>
                                            <span>$30.00</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../img/latest-product/lp-2.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Crab Pool Security</h6>
                                            <span>$30.00</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="../img/latest-product/lp-3.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Crab Pool Security</h6>
                                            <span>$30.00</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Sale Off</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-1.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Raisin’n’nuts</a></h5>
                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-2.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Vegetables</span>
                                        <h5><a href="#">Vegetables’package</a></h5>
                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-3.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Mixed Fruitss</a></h5>
                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-4.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Raisin’n’nuts</a></h5>
                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-5.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Raisin’n’nuts</a></h5>
                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-6.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Raisin’n’nuts</a></h5>
                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sort By</span>
                                <select>
                                    <option value="0">Default</option>
                                    <option value="0">Default</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>16</span> Products found</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-4.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-5.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-6.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-8.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-9.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-10.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-11.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product-12.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Crab Pool Security</a></h6>
                                <h5>$30.00</h5>
                            </div>
                        </div>
                    </div>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
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