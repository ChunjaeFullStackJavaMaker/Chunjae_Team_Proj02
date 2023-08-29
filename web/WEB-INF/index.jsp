<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<<<<<<< HEAD
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <title>CornEdu_Book</title>

<%@ include file="/setting/head.jsp"%>
<<<<<<< HEAD
=======
<%@ include file="/layout/Chat.jsp"%>    
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d

</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<<<<<<< HEAD
=======
<%--항상 따라다니는 사이드 메뉴--%>
<%@include file="/layout/AllAround_SideMenu.jsp"%>

>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d

<!-- Humberger Begin -->
<%@include file="/layout/header_top.jsp"%>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@include file="/layout/header.jsp"%>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<<<<<<< HEAD
<%@ include file="/layout/sideMenu.jsp"%>
=======
<%@include file="/Main_contents/main_banner.jsp"%>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<%@ include file="/Main_contents/category.jsp"%>
<!-- Categories Section End -->

<<<<<<< HEAD
=======


>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<!-- Featured Section Begin -->
<%@ include file="/Main_contents/feature_Product.jsp"%>
<!-- Featured Section End -->

<!-- Banner Begin -->
<%@include file="/Main_contents/banner.jsp"%>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<<<<<<< HEAD
<%@include file="/Main_contents/LatestProduct.jsp"%>
=======
<%--<%@include file="/Main_contents/LatestProduct.jsp"%>--%>
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<%@include file="/Main_contents/Blog_review.jsp"%>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<%@include file="/layout/footer.jsp"%>
<!-- Footer Section End -->
</body>

</html>