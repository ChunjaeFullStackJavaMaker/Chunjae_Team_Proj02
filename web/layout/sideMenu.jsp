<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<section class="hero">
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
                <div class="hero__item set-bg" data-setbg="${path}/img/hero/banner.jpg">
                    <div class="hero__text">
<<<<<<< HEAD
                        <span>FRUIT FRESH</span>
                        <h2>Vegetable <br />100% Organic</h2>
=======
                        <span>First Kids, First Students</span>
                        <h2>Innovative for <br />Education</h2>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <p>Free Pickup and Delivery Available</p>
                        <a href="#" class="primary-btn">SHOP NOW</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>