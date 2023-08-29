<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<<<<<<< HEAD
<%
    String path5 = request.getContextPath();
%>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Featured Product</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">All</li>
<<<<<<< HEAD
                        <li data-filter=".oranges">Oranges</li>
                        <li data-filter=".fresh-meat">Fresh Meat</li>
                        <li data-filter=".vegetables">Vegetables</li>
                        <li data-filter=".fastfood">Fastfood</li>
=======
                        <li data-filter=".영유아">영유아</li>
                        <li data-filter=".초등">초등</li>
                        <li data-filter=".중등">중등</li>
                        <li data-filter=".고등">고등</li>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.jpg">
=======
<%--            대략적인 템플릿이올시다.                                      --%>
<%--            <c:forEach var="product" items="${oceaniaProductList}">--%>
<%--                <div class="slide">--%>
<%--                    <img src="${pageContext.request.contextPath}/${product.imgUrl_1}" alt="image">--%>
<%--                    <div class="slide-content">--%>
<%--                        <h3>${product.name}</h3>--%>
<%--                        <p>${product.summary}</p>--%>
<%--                        <p class="price">${product.price}</p>--%>
<%--                        <a href="${pageContext.request.contextPath}/cart?cmd=add&product_id=${product.id}" class="buy-btn">구매하기</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
            <div class="col-lg-3 col-md-4 col-sm-6 mix 영유아">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-1.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 초등">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-2.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 중등">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}}/img/featured/feature-3.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-4.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 초등">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-4.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-5.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 고등">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-5.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-6.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 영유아">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-6.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-7.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 중등">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-7.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-8.jpg">
=======

            <div class="col-lg-3 col-md-4 col-sm-6 mix 고등">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="${path}/img/featured/feature-8.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <ul class="featured__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Crab Pool Security</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>