<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- basic -->
    <title>Shoes</title>
     <jsp:include page="header.jsp"></jsp:include>
</head>
<!-- body -->

<body class="main-layout">
    <!-- header section start -->
    <div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <!-- New Arrivals section start -->
    <div class="collection_text">Shoes</div>
    <div class="collection_section layout_padding">
        <div class="container">
            <h1 class="new_text"><strong>New Arrivals Products</strong></h1>
            <p class="consectetur_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
        </div>
    </div>
    <div class="layout_padding gallery_section">
        <div class="container">
        	<c:forEach items="${shoess}" var="o">
        		<a href='<c:url value="${o.ID}"/>'>
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
	                                <div class="shoes_price"><span style="color: #ff4e5b;">$ ${o.money}</span></div>
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