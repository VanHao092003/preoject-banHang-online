<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <!-- basic -->
    <title>Boot</title>
   <jsp:include page="header.jsp"></jsp:include>
</head>
<!-- body -->

<body class="main-layout">
    <!-- header section start -->
 	<div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <!-- new collection section start -->
    <div class="collection_text">Boots</div>
    <div class="about_main layout_padding ">
        <div class="collectipn_section_3 layout_padding">
            <div class="container">
                <div class="racing_shoes">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="shoes-img3"><img src='<c:url value="/views/images/${boot.image }"/>'></div>
                        </div>
                        <div class="col-md-4">
                            <div class="sale_text"><strong>Sale <br><span style="color: #0a0506;">JOGING</span>
										<br>SHOES</strong></div>
							<div class="original_price" > 6.000.000 Đ</div>
                            <div class="number_text"><strong><span style="color: #0a0506">${boot.money} Đ</span></strong></div>
                            <button class="seemore">See More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="layout_padding gallery_section">
        <div class="container">
        	<c:forEach items="${boots}" var="o">
        		<a href='<c:url value="/boot/detail/${o.ID}"/>'>
	                <div class="col-sm-4">
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
    <!-- new collection section end -->
    <!-- section footer start -->
   	<jsp:include page="section footer.jsp"></jsp:include>
    <!-- section footer end -->
</body>
</html>