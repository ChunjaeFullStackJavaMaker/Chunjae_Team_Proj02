<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<<<<<<< HEAD
<%
    String path6 = request.getContextPath();
%>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
<<<<<<< HEAD
                    <img src="<%=path6%>/img/banner/banner-1.jpg" alt="">
=======
                    <img src="${path}/img/banner/banner-1.jpg" alt="">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
<<<<<<< HEAD
                    <img src="<<%=path6%>/img/banner/banner-2.jpg" alt="">
=======
                    <img src="${path}/img/banner/banner-2.jpg" alt="">
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                </div>
            </div>
        </div>
    </div>
</div>