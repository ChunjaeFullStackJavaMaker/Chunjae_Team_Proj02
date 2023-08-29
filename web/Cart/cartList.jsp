<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<<<<<<< HEAD
=======
<c:set var="path" value="<%=request.getContextPath() %>" />
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>장바구니</title>
    
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
<<<<<<< HEAD
<section class="hero hero-normal">
=======
<section class="hero">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
<<<<<<< HEAD
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
=======
                        <span>All Products</span>
                    </div>
                    <ul>
                        <li><a href="#">초등교과서</a></li>
                        <li><a href="#">초등참고서</a></li>
                        <li><a href="#">초등문제집</a></li>
                        <li><a href="#">초등기타</a></li>
                        <li><a href="#">중등교과서</a></li>
                        <li><a href="#">중등참고서</a></li>
                        <li><a href="#">중등문제집</a></li>
                        <li><a href="#">중등기타</a></li>
                        <li><a href="#">고등교과서</a></li>
                        <li><a href="#">고등참고서</a></li>
                        <li><a href="#">고등기타</a></li>
                        <li><a href="#">유아콘텐츠</a></li>
                        <li><a href="#">유아놀이</a></li>
                        <li><a href="#">유아기타</a></li>
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
<<<<<<< HEAD
                            <input type="text" placeholder="What do yo u need?">
=======
                            <input type="text" placeholder="찾으시는 책을 검색해주세요.">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
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
<<<<<<< HEAD
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
                        <span>Shopping Cart</span>
=======
                <div class="container-fluid">
                    <div class="contents" style="min-height:100vh">
                        <h2 class="title" style="padding-left: 15px;">장바구니 목록</h2>
                        <p class="msg">${msg }</p>
                        <div class="container">
                            <div class="box_wrap">
                                <form action="${path }/DelCart.do" method="post">
                                    <table class="table table-secondary" id="tb1">
                                        <thead>
                                        <tr>
                                            <th class="item1">연번</th>
                                            <th class="item2">상품명</th>
                                            <th class="item3">수량</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="cart" items="${cartList }" varStatus="status">
                                            <tr>
                                                <td class="item1">
                                                    <input type="checkbox" name="cartno" id="cartno+${status.count}" value="${cart.cartno }">
                                                        ${status.count }
                                                </td>
                                                <td class="item2">
                                                    <span title="${cart.pno}">${cart.pname }</span>
                                                </td>
                                                <td class="item3">
                                                        ${cart.amount }
                                                    <a href="${path }/AddPayment.do?pno=${cart.pno }&from=cart"></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        <c:if test="${empty cartList}">
                                            <tr>
                                                <td colspan="3">장바구니 목록이 존재하지 않습니다.</td>
                                            </tr>
                                        </c:if>
                                        </tbody>
                                    </table>
                                    <c:if test="${!empty cartList}">
                                        <div class="container">
                                            <input type="submit" value="선택삭제" class="btn btn-primary">
                                        </div>
                                    </c:if>
                                </form>
                            </div>
                        </div>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<<<<<<< HEAD
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <form class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="cartVO" items="${cartVOList}" >
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="../img/cart/cart-1.jpg" alt="">
                                <h5>${cartVO.title }</h5>
                            </td>
                            <td class="shoping__cart__price">
                                ${cartVO.price }
                            </td>
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="${cartVO.amount}">
                                    </div>
                                </div>
                            </td>
                            <td class="shoping__cart__total">
                                ${cartVO.price*cartVO.amount }
                            </td>
                            <td class="shoping__cart__item__close">
                                <span class="icon_close" type="submit" onclick="deleteButton()"></span>
                            </td>
                            <script>
                                function deleteButton(){
                                    $("form").attr("action", "/Cartdelete.do");
                                }
                            </script>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="${path }/ProList.do" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>Cart Total</h5>
                    <ul>
                        <li id="subprice"></li>
                        <li id="totalprice"></li>
                    </ul>
                    <a href="${path}/checkout.do" class="primary-btn">PROCEED TO CHECKOUT</a>
                </div>
            </div>
            <script>
                $(document).ready(function(){
                    var totalPay=0;
                    $(".shoping__cart__total").each(function(){
                        totalPay = totalPay + parseInt($(this).text());
                        console.log(totalPay);
                    });

                    //합계를 출력
                    $("#subprice").html("<span> SubTotal : "+totalPay+"</span>");
                    $("#totalprice").html("<span> Total : "+totalPay+"</span>");
                });
            </script>
        </div>
    </div>
</section>
=======
<!-- Hero Section End -->

<!-- Shoping Cart Section Begin -->
<%--<section class="shoping-cart spad">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="contents" style="min-height:100vh">--%>
<%--            <h2 class="title" style="padding-left: 130px;">장바구니 목록</h2>--%>
<%--            <p class="msg">${msg }</p>--%>
<%--            <div class="container">--%>
<%--                <div class="box_wrap">--%>
<%--                    <form action="${path }/DelCart.do" method="post">--%>
<%--                        <table class="table table-secondary" id="tb1">--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th class="item1">연번</th>--%>
<%--                                <th class="item2">상품명</th>--%>
<%--                                <th class="item3">수량</th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <c:forEach var="cart" items="${cartList }" varStatus="status">--%>
<%--                                <tr>--%>
<%--                                    <td class="item1">--%>
<%--                                        <input type="checkbox" name="cartno" id="cartno+${status.count}" value="${cart.cartno }">--%>
<%--                                            ${status.count }--%>
<%--                                    </td>--%>
<%--                                    <td class="item2">--%>
<%--                                        <span title="${cart.pno}">${cart.pname }</span>--%>
<%--                                    </td>--%>
<%--                                    <td class="item3">--%>
<%--                                            ${cart.amount }--%>
<%--                                        <a href="${path }/AddPayment.do?pno=${cart.pno }&from=cart"></a>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>
<%--                            <c:if test="${empty cartList}">--%>
<%--                                <tr>--%>
<%--                                    <td colspan="3">장바구니 목록이 존재하지 않습니다.</td>--%>
<%--                                </tr>--%>
<%--                            </c:if>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                        <c:if test="${!empty cartList}">--%>
<%--                            <div class="container">--%>
<%--                                <input type="submit" value="선택삭제" class="btn btn-primary">--%>
<%--                            </div>--%>
<%--                        </c:if>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<!-- Shoping Cart Section End -->

<!-- Footer Section Begin -->
<%@ include file="/layout/footer.jsp"%>
<!-- Footer Section End -->

</body>
<<<<<<< HEAD
=======

>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
</html>