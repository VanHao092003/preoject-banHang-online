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
	        	<p class="best_text">
	        		${shoesThanh_toan.name }
	        	</p>	
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
        			<a>${productSelled_shoes.quantity}</a>
        		</div>
        		<hr>
        		<div class="leftside_bottom_">
        			<a>Tổng:</a>
        			<a>${sumMoney_shoes}</a>
        		</div>
        	</div>
        </div>
        <div class="rightside">
    		<form action="/WebSellingShoes/check_successful-boot">
            <h1>Thông tin thanh toán</h1>
            <p>Mã đơn hàng: </p>
            <input type="text" class="inputbox" name="ID_customer_shoes" value="${randomInt_shoes}" required />
            <input type="text" class="inputbox" name="name_customer_shoes" placeholder="Tên người nhận" required />
            <input type="text" class="inputbox" name="address_customer_shoes" placeholder="Địa chỉ nhận hàng" required />
            <input type="text" class="inputbox" name="phone_customer_shoes" placeholder="Số điện thoại" required />
            <input type="hidden" name="ID_product_shoes" value="${productSelled_shoes.ID}" required />
			<p style="color: black;">Phương thức thanh toán: Khi nhận hàng và kiểm tra</p>
			<p style="color: black;">Ngày nhận hàng: 5 ngày kể từ ngày mua.</p>
            <p></p>
            <button type="submit" class="button">CheckOut</button>
          </form>
        </div>
      </div>
    </div>
	<jsp:include page="section footer.jsp"></jsp:include>
</body>
</html>