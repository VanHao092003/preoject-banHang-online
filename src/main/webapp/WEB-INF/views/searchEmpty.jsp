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
            <h1 class="new_text"><strong>Kết quả tìm kiếm: </strong></h1>
            <h1 style="color: red;">Không có kết quả nào hợp lệ cho tên sản phẩm bạn muốn tìm</h1>
        </div>
    </div>
    <div style="background-color: #fff;" class="layout_padding gallery_section">
    	<div class="container">
    		<img alt="" src='<c:url value="/views/images/search.png"/>'>
    	</div>
    </div>
    <!-- New Arrivals section end -->
    <!-- section footer start -->
   	<jsp:include page="section footer.jsp"></jsp:include>
    <!-- section footer end -->
</body>
</html>