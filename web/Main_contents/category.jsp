<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<<<<<<< HEAD
<%
    String path3 = request.getContextPath();
%>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
<<<<<<< HEAD
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
=======
                    <div class="categories__item set-bg" data-setbg="${path}img/categories/cat-1.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <h5><a href="#">Fresh Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
<<<<<<< HEAD
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
=======
                    <div class="categories__item set-bg" data-setbg="${path}img/categories/cat-2.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <h5><a href="#">Dried Fruit</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
<<<<<<< HEAD
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
=======
                    <div class="categories__item set-bg" data-setbg="${path}img/categories/cat-3.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <h5><a href="#">Vegetables</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
<<<<<<< HEAD
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
=======
                    <div class="categories__item set-bg" data-setbg="${path}img/categories/cat-4.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
<<<<<<< HEAD
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
=======
                    <div class="categories__item set-bg" data-setbg="${path}img/categories/cat-5.jpg">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>