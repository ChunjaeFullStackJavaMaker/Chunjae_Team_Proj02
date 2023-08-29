<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<<<<<<< HEAD
<%
    String path8 = request.getContextPath();
%>
<section class="from-blog spad">
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" /><section class="from-blog spad">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>From The Blog</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
<<<<<<< HEAD
                        <img src="img/blog/blog-1.jpg" alt="">
=======
                        <img src="${path}/img/blog/blog-1.jpg" alt="">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Cooking tips make cooking simple</a></h5>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
<<<<<<< HEAD
                        <img src="img/blog/blog-2.jpg" alt="">
=======
                        <img src="${path}/img/blog/blog-2.jpg" alt="">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
<<<<<<< HEAD
                        <img src="img/blog/blog-3.jpg" alt="">
=======
                        <img src="${path}img/blog/blog-3.jpg" alt="">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Visit the clean farm in the US</a></h5>
                        <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

