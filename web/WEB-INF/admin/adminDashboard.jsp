<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 상품 관리 </title>
    <c:set var="path" value="<%=request.getContextPath()%>"/>
    <%@ include file="/setting/head.jsp"%>

    <style>
        .menu_item {
            color: #333;
        }
        .menu_item:hover {
            color: #333;
            font-weight: bold;
        }
    </style>

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<div class="container-fluid m-0 p-0">
    <!-- Humberger Begin -->
    <%@include file="/layout/header_top.jsp"%>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <%@include file="/layout/header.jsp"%>
    <!-- Header Section End -->

    <!-- Search Section Begin -->
    <%@include file="/layout/rollup_sideMenu.jsp"%>
    <!-- Search Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section" style="background-image: url('${path}/img/breadcrumb.jpg'); background-position: bottom, center; background-size: cover">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2> ADMIN MAIN </h2>
                        <div class="breadcrumb__option">
                            <a href="${path}/">Home</a>
                            <span> ADMIN MAIN </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <div class="container mt-5" style="min-height:50vh">
        <div class="row">
            <div class="col col-lg-3 mb-3 p-3">
                <div class="p-4 border">
                    <a href="${path}/AdminDashboard.do" class="d-block menu_item" style="color:#7FAD39; font-weight:bold"> 관리자 메인 </a>
                    <a href="${path}/AdminProductList.do" class="d-block menu_item mt-2"> 상품 관리 </a>
                    <a href="${path}/DeliveryList.do" class="d-block menu_item mt-2"> 배송 정보 관리 </a>
                    <a href="${path}/" class="d-block menu_item mt-2"> 입출고 관리 </a>
                    <a href="" class="d-block menu_item mt-2"> 회원 관리 </a>
                    <a href="" class="d-block menu_item mt-2"> 고객지원 관리 </a>
                </div>
            </div>
            <main class="col-md-9 ms-sm-auto col-lg-9 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h4> DASHBOARD </h4>
                </div>
                <canvas class="my-4 w-100" id="myChart" width="1326" height="559" style="display: block; box-sizing: border-box; height: 373px; width: 884px;"></canvas>

                <h2>Section title</h2>
                <div class="table-responsive small mb-5">
                    <table class="table table-striped table-sm">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Header</th>
                            <th scope="col">Header</th>
                            <th scope="col">Header</th>
                            <th scope="col">Header</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1,001</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                        </tr>
                        <tr>
                            <td>1,002</td>
                            <td>placeholder</td>
                            <td>irrelevant</td>
                            <td>visual</td>
                            <td>layout</td>
                        </tr>
                        <tr>
                            <td>1,003</td>
                            <td>data</td>
                            <td>rich</td>
                            <td>dashboard</td>
                            <td>tabular</td>
                        </tr>
                        <tr>
                            <td>1,003</td>
                            <td>information</td>
                            <td>placeholder</td>
                            <td>illustrative</td>
                            <td>data</td>
                        </tr>
                        <tr>
                            <td>1,004</td>
                            <td>text</td>
                            <td>random</td>
                            <td>layout</td>
                            <td>dashboard</td>
                        </tr>
                        <tr>
                            <td>1,005</td>
                            <td>dashboard</td>
                            <td>irrelevant</td>
                            <td>text</td>
                            <td>placeholder</td>
                        </tr>
                        <tr>
                            <td>1,006</td>
                            <td>dashboard</td>
                            <td>illustrative</td>
                            <td>rich</td>
                            <td>data</td>
                        </tr>
                        <tr>
                            <td>1,007</td>
                            <td>placeholder</td>
                            <td>tabular</td>
                            <td>information</td>
                            <td>irrelevant</td>
                        </tr>
                        <tr>
                            <td>1,008</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                        </tr>
                        <tr>
                            <td>1,009</td>
                            <td>placeholder</td>
                            <td>irrelevant</td>
                            <td>visual</td>
                            <td>layout</td>
                        </tr>
                        <tr>
                            <td>1,010</td>
                            <td>data</td>
                            <td>rich</td>
                            <td>dashboard</td>
                            <td>tabular</td>
                        </tr>
                        <tr>
                            <td>1,011</td>
                            <td>information</td>
                            <td>placeholder</td>
                            <td>illustrative</td>
                            <td>data</td>
                        </tr>
                        <tr>
                            <td>1,012</td>
                            <td>text</td>
                            <td>placeholder</td>
                            <td>layout</td>
                            <td>dashboard</td>
                        </tr>
                        <tr>
                            <td>1,013</td>
                            <td>dashboard</td>
                            <td>irrelevant</td>
                            <td>text</td>
                            <td>visual</td>
                        </tr>
                        <tr>
                            <td>1,014</td>
                            <td>dashboard</td>
                            <td>illustrative</td>
                            <td>rich</td>
                            <td>data</td>
                        </tr>
                        <tr>
                            <td>1,015</td>
                            <td>random</td>
                            <td>tabular</td>
                            <td>information</td>
                            <td>text</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>
    <!-- Footer Section Begin -->
    <%@include file="/layout/footer.jsp"%>
    <!-- Footer Section End -->

    <script>
        $(document).ready(function() {
            const labelList = [];
            const sales = [];
            const profits = [];

            $.ajax({
                url:"${path}/getProfit.do",
                type:"post",
                dataType:"json",
                success: function(data) {
                    for(var i=0; i<data.length; i++) {
                        var temp = data[i];
                        labelList[i] = temp.date;
                        sales[i] = temp.sales;
                        profits[i] = temp.profit;
                    }

                    var ctx = document.getElementById("myChart");

                    var mixedChart = {
                        type: 'bar',
                        labels: labelList,
                        datasets: [
                            {
                                label: '총 매출액',
                                data: sales,
                                backgroundColor: 'rgba(256, 0, 0, 0.1)'
                            },
                            {
                                label: '매출총이익',
                                data: profits,
                                backgroundColor: 'transparent',
                                borderColor: 'skyblue',
                                type: 'line'
                            }
                        ]
                    };

                    var myChart = new Chart(ctx, {
                        type: 'bar',
                        data: mixedChart,
                        options: {
                            legend: {
                                display: true
                            }
                        }
                    });
                }
            });
        });
        const mydata = [10, 20, 30, 40, 50, 20, 10, 20, 30, 40, 50, 20];
        const mydataHalf = [5, 10, 20, 7, 10, 15, 5, 10, 20, 7, 10, 15];
    </script>
</div>
</body>
</html>
