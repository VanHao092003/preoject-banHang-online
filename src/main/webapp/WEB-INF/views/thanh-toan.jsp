<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>thanh-toan</title>
<jsp:include page="header.jsp"></jsp:include>
<style type="text/css">
	<%@include file="css/styleCheckout.css" %>
</style>
</head>
<body>
	<div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
	<div class="mainscreen">
      <div class="card_1">
        <div class="leftside">
        	<div class= "leftside_top">
	        	<div class="leftside_top_a">
	        		<a>${shoesThanh_toan.name }</a>
	        	</div>	
	        	<div class="leftside_top_img">
	        			<img
		            src='<c:url value="/views/images/${shoesThanh_toan.image}"/>'
		            class="product"
		            alt="Shoes"
		          	/>
	        	</div>
        	</div>
        	<div class= "leftside_bottom">
        		<div class="leftside_bottom_">
        			<a>Giá:</a>
        			<a>${shoesThanh_toan.money} Đ</a>
        		</div>
        		<div class="leftside_bottom_">
        			<a>Số lượng:</a>
        			<a>có</a>
        		</div>
        		<hr>
        		<div class="leftside_bottom_">
        			<a>Tổng:</a>
        			<a>có</a>
        		</div>
        	</div>
        </div>
        <div class="rightside">
        	<c:url value="thanh=toan/success" var="url"/>
        	<form:form action="${url}" modelAttribute="shoesThanh_toan" method="POST" enctype="multipart/form-data">
        		<h1>Thông tin thanh toán</h1>
        		<p>Tên người nhận</p>
        		<form:input path="ID"/>
        	</form:form>
          <form action="">
            <h1>Thông tin thanh toán</h1>
            <p>Tên người nhận</p>
            <input type="text" class="inputbox" name="name" required />
            <p>Số điện thoại</p>
            <input type="number" class="inputbox" name="card_number" required />

            <p>Card Type</p>
		<div class="expcvv">

            <p class="expcvv_text">Expiry</p>
            <input type="date" class="inputbox" name="exp_date" id="exp_date" required />

            <p class="expcvv_text2">CVV</p>
            <input type="password" class="inputbox" name="cvv" id="cvv" required />
        </div>
            <p></p>
            <button type="submit" class="button">CheckOut</button>
          </form>
        </div>
      </div>
    </div>
	<jsp:include page="section footer.jsp"></jsp:include>
</body>
</html>