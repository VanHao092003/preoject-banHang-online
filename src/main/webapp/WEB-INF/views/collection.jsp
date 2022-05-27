<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- basic -->
    <title>Collection</title>
   <jsp:include page="header.jsp"></jsp:include>
</head>
<body class="main-layout">
    <!-- header section start -->
    <div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    
    <!-- new collection section start -->
    <div class="collection_text">Collection</div>
    <div class="layout_padding collection_section">
        <div class="container">
            <h1 class="new_text"><strong>New  Collection</strong></h1>
            <div class="collection_section_2">
    	    	<div class="row">
    	    		<div class="col-md-6">
    	    			<div class="about-img">
    	    				<button class="new_bt">New</button>
    	    				<div class="shoes-img"><img src='<c:url value="/views/images/${shoesMax.image}"/>'></div>
    	    				<p class="sport_text">Men Sports</p>
    	    				<div class="dolar_text"><strong style="color: #f12a47;">${shoesMax.money} Đ</strong> </div>
    	    				<div class="star_icon">
    	    					<ul>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    					</ul>
    	    				</div>
    	    			</div>
    	    			<button class="seemore_bt">See More</button>
    	    		</div>
    	    		<div class="col-md-6">
    	    			<div class="about-img2">
    	    				<div class="shoes-img2"><img src='<c:url value="/views/images/${bootMax.image}"/>'></div>
    	    				<p class="sport_text">Men Sports</p>
    	    				<div class="dolar_text"><strong style="color: #f12a47;">${bootMax.money} Đ</strong> </div>
    	    				<div class="star_icon">
    	    					<ul>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    						<li><a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a></li>
    	    					</ul>
    	    				</div>
    	    			</div>
    	    		</div>
    	    	</div>
    	    </div>
        </div>
    </div>
    <!-- new collection section end -->
    <!-- section footer start -->
  	<jsp:include page="section footer.jsp"></jsp:include>
    <!-- section footer end -->
</body>
</html>