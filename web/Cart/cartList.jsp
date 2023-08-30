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
<%@ include file="/layout/sideMenu.jsp"%>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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
                                    $("form").attr("action", "/DelCart.do");
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
<!-- Shoping Cart Section End -->

<!-- Footer Section Begin -->
<%@ include file="/layout/footer.jsp"%>
<!-- Footer Section End -->

</body>
</html>