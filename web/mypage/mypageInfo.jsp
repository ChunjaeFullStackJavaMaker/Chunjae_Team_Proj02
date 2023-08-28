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
    <title>Ogani | Template</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@include file="/setting/head.jsp"%>
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
                    <h2>MY PAGE</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Home</a>
                        <span>MY PAGE</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__item">
                        <h4>MY PAGE</h4>
                        <ul>
                            <li><a href="${path }/mypageInfo.do">개인정보 변경</a></li>
                            <li><a href="${path }/MyOrderList.do">주문/배송 관리</a></li>
                            <li><a href="#">리뷰 관리</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <form action="${path}/mypageInfoPro.do" method="post">
                    <div class="row">
                        <div class="checkout__input">
                            <p>아이디<span>*</span></p>
                            <input type="text" value="${mem.id }" name="id" id="id" readonly required>
                        </div>
                        <div class="checkout__input">
                            <p>비밀번호<span>*</span></p>
                            <input type="text" value="${mem.pw }" name="pw" id="pw" required>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>주소<span>*</span></p>
                                    <input type="text" name="postcode" id="postcode" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p><span></span></p>
                                    <button type="button" id="post_btn" onclick="findAddr()" class="site-btn" >우편번호검색</button>
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input">
                            <input type="text" name="address1" id="address1" placeholder="기본 주소 입력" required>
                        </div>
                        <div class="checkout__input">
                            <input type="text" name="address2" id="address2" placeholder="상세 주소 입력" required>
                        </div>
                        <div class="checkout__input">
                            <p>전화번호<span>*</span></p>
                            <input type="tel" value="${mem.tel }" name="tel" id="tel" required >
                        </div>
                        <div class="checkout__input">
                            <p>이메일<span>*</span></p>
                            <input type="email" value="${mem.email }" name="email" id="email" required >
                        </div>
                        <div class="checkout__input">
                            <p>생년월일<span>*</span></p>
                            <input type="birth" value="${mem.birth }" name="birth" id="birth" required>
                        </div>
                        <div>
                            <button type="submit" class="site-btn">개인정보수정</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<%@include file="/layout/footer.jsp"%>
<!-- Footer Section End -->
</body>

</html>