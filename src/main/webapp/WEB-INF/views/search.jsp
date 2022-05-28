<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm</title>
     <jsp:include page="header.jsp"></jsp:include>
</head>
<body class="main-layout">
    <!-- header section start -->
    <div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <!-- New Arrivals section start -->
    <div class="collection_text">Tìm kiếm</div>
    <div class="collection_section layout_padding">
        <div class="container">
            <h1 class="new_text"><strong>Kết quả tìm kiếm:</strong></h1>
        </div>
    </div>
    <div class="layout_padding gallery_section">
    	<div class="container">
    		<c:forEach items="${shoesSeaerch}" var="o">
                <a href='<c:url value="shoes/${o.ID}"/>'>
	                <div  class="col-sm-4">
	                    <div class="best_shoes">
	                        <p class="best_text">${o.name}</p>
	                        <div class="shoes_icon"><img src='<c:url value= "/views/images/${o.image}"/>'></div>
	                        <div class="star_text">
	                            <div class="left_part">
	                                <ul>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                </ul>
	                            </div>
	                            <div class="right_part">
	                                <div class="shoes_price"><span style="color: #ff4e5b;">${o.money} Đ</span></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	          	</a>
        	</c:forEach>
        	<c:forEach items="${bootsSearch}" var="o">
                <a href='<c:url value="boot/detail/${o.ID}"/>'>
	                <div  class="col-sm-4">
	                    <div class="best_shoes">
	                        <p class="best_text">${o.name}</p>
	                        <div class="shoes_icon"><img src='<c:url value= "/views/images/${o.image}"/>'></div>
	                        <div class="star_text">
	                            <div class="left_part">
	                                <ul>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                </ul>
	                            </div>
	                            <div class="right_part">
	                                <div class="shoes_price"><span style="color: #ff4e5b;">${o.money} Đ</span></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	          	</a>
        	</c:forEach>
    	</div>
    </div>
    <!-- New Arrivals section end -->
    <!-- section footer start -->
   	<jsp:include page="section footer.jsp"></jsp:include>
    <!-- section footer end -->
</body>
</html>