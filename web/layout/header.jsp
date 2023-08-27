<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="header__top__right">
                        <div class="header__top__right__auth">
                            <c:if test="${sid eq 'admin' }">
                                <li class="nav-item"><a href="${path1 }/Admin.do" class="nav-link">Admin</a></li>
                            </c:if>
                            <c:if test="${!empty sid }">
                                <li class="nav-item"><a href="${path1 }/Mypage.do" class="nav-link">Mypage</a></li>
                                <li class="nav-item"><a href="${path1 }/PaymentList.do" class="nav-link">PayList</a></li>
                                <li class="nav-item"><a href="${path1 }/CartList.do" class="nav-link">Cart Info</a></li>
                                <li class="nav-item"><a href="${path1 }/Logout.do" class="nav-link">Logout</a></li>
                            </c:if>
                            <c:if test="${empty sid }">
                                <li class="nav-item"><a href="${path1 }/login/login.jsp" class="nav-link">Login</a></li>
                                <li class="nav-item"><a href="${path1 }/login/term.jsp" class="nav-link">Join</a></li>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="${path}/"><img src="${path}/img/logo/corn_book_85-55.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="#"> 영유아 </a>
                            <ul class="header__menu__dropdown">
                                <li><a href="">유아콘텐츠</a></li>
                                <li><a href="">유아놀이</a></li>
                                <li><a href="">유아기타</a></li>
                            </ul>
                        </li>
                        <li><a href="#"> 초등 </a>
                            <ul class="header__menu__dropdown">
                                <li><a href="${path}/product/getProduct.jsp"> 교과서 </a></li>
                                <li><a href=""> 참고서 </a></li>
                                <li><a href=""> 문제집 </a></li>
                                <li><a href=""> 기타 </a></li>
                            </ul>
                        </li>
                        <li><a href="#"> 중등 </a>
                            <ul class="header__menu__dropdown">
                                <li><a href="${path}/product/getProduct.jsp"> 교과서 </a></li>
                                <li><a href=""> 참고서 </a></li>
                                <li><a href=""> 문제집 </a></li>
                                <li><a href=""> 기타 </a></li>
                            </ul>
                        </li>
                        <li><a href="#"> 고등 </a>
                            <ul class="header__menu__dropdown">
                                <li><a href="${path}/product/getProduct.jsp"> 교과서 </a></li>
                                <li><a href=""> 참고서 </a></li>
                                <li><a href=""> 문제집 </a></li>
                                <li><a href=""> 기타 </a></li>
                            </ul>
                        </li>
                        <li><a href="#"> 고객지원 </a>
                            <ul class="header__menu__dropdown">
                                <li><a href="${path}/cs/board/boardList.jsp"> 공지사항 </a></li>
                                <li><a href="${path}/cs/faq/faqList.jsp"> FAQ </a></li>
                                <li><a href="${path}/cs/qna/qnaList.jsp"> QnA </a></li>
                                <li><a href=""> 1:1 상담 </a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                    <div class="header__cart__price">item: <span>$150.00</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>