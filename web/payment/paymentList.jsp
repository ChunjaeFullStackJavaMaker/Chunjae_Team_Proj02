<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>주문 목록</title>

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
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+65 11.188.888</h5>
                            <span>support 24/7 time</span>
                        </div>
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
                    <h2>Shopping Cart</h2>
                    <div class="breadcrumb__option">
                        <a href="${path }">Home</a>
                        <span>결제 목록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- 결제 주문 목록 테이블-->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <form class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">Products</th>
                            <th>Pay Method</th>
                            <th>Pay Com</th>
                            <th>Pay_ Price</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="pay" items="${payList}" >
                            <tr>
                                <td class="shoping__cart__item">
                                    <img src="../img/cart/cart-1.jpg" alt="">
                                    <h5>${pay.pay_no }</h5>
                                </td>
                                <td class="shoping__cart__price">
                                        ${pay.pay_method }
                                </td>
                                <td class="shoping__cart__quantity">
                                        ${pay.pay_com }
                                </td>
                                <td class="shoping__cart__total">
                                        ${pay.pay_price }
                                </td>
                                <td class="shoping__cart__item__close">
                                    <c:if test="${pay.pstate==0}">
                                        <a href="${path }/ReturnPayment.do?pay_no=${pay.pay_no }" class="icon_close">반품 요청</a>
                                    </c:if>
                                    <c:if test="${pay.pstate==1}">
                                        <a href="${path }/Delivery.do?pay_no=${pay.pay_no }" class="icon_close">배송 조회</a>
                                    </c:if>
                                    <c:if test="${pay.pstate==6}">
                                        <span class="btn btn-primary">배송 완료</span>
                                        <a href="${path }/AddReview.do?pay_no=${pay.pay_no }" class="icon_close">구매 결정</a>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty payList}">
                            <tr>
                                <td colspan="4">결제된 상품이 존재하지 않습니다.</td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- 결제 주문 테이블 끝 -->

<!-- Footer Section Begin -->
<%@ include file="/layout/footer.jsp"%>
<!-- Footer Section End -->

</body>
</html>