<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết đơn hàng boot</title>
<jsp:include page="header.jsp"></jsp:include>
<style type="text/css">
	<%@include file="css/styleCheckout.css" %>
</style>
</head>
<body>
	<div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <div style=" padding-top:50px ; background-color: #dfdfdf; width: 60%; min-height:400px; margin: 100px auto 100px auto; display: flex; padding-bottom: 20px; border-radius: 10px;">
    <div style=" width: 45%;  margin:auto; display: flex; flex-direction: column; align-items: center;"  >
	    	<img style="width: 80%; height: auto; " alt="" src='<c:url value="/views/images/successful.png"/>'>
    <form style="width: 100%;" action="/WebSellingShoes/check_successful">
            <h1 style="width: 230px; margin: 10px auto 0 auto; padding-bottom: 0;">Sản phẩm đã mua</h1>
             <p style="margin-bottom: 5px; margin-top: 8px;">Mã sản phẩm: </p>
            <input type="text" class="inputbox" name="ID_customer" value="${bootCheck.ID}" required />
            <p style="margin-bottom: 5px; margin-top: 8px;">Tên Sản phẩm:</p>
            <input type="text" class="inputbox" name="name_customer" value="${bootCheck.name}" required />
             <p style="margin-bottom: 5px; margin-top: 8px;">Giá của 1 sản phẩm:</p>
            <input type="text" class="inputbox" name="address_customer" value="${bootCheck.money} Đ" required />
             <p style="margin-bottom: 5px; margin-top: 8px;">Số lượng mua:</p>
            <input type="text" class="inputbox" name="phone_customer" value="${productSelled.quantity}" required />
            <p style="margin-bottom: 5px; margin-top: 8px;">Tiền vận chuyển: </p>
            <input type="text" class="inputbox" name="name_customer" value="0 đ" required />
            <hr>
            <p style="margin-bottom: 5px; margin-top: 8px;">Tiền phải thanh toán</p>
            <input type="text" class="inputbox" name="name_customer" value="${productSelled.price} Đ" required />
          </form>
	</div>
	<div style=" width: 45%; margin: auto; display: flex; flex-direction: column; align-items: center;"  >
    	<form action="/WebSellingShoes/check_successful">
            <h1 style="width: 270px; margin: auto;">Thông tin thanh toán</h1>
             <p style="margin-bottom: 5px; margin-top: 8px;">Mã đơn hàng: </p>
            <input type="text" class="inputbox" name="ID_customer" value="${customer.ID_product}" required />
            <p style="margin-bottom: 5px; margin-top: 8px;">Tên khách hàng:</p>
            <input type="text" class="inputbox" name="name_customer" value="${customer.name}" required />
             <p style="margin-bottom: 5px; margin-top: 8px;">Số điện thoại:</p>
            <input type="text" class="inputbox" name="address_customer" value="${customer.phone}" required />
             <p style="margin-bottom: 5px; margin-top: 8px;">Địa chỉ:</p>
            <input type="text" class="inputbox" name="phone_customer" value="${customer.address}" required />
			<p style="color: black;">Phương thức thanh toán: Khi nhận hàng và kiểm tra</p>
			<p style="color: black;">Ngày nhận hàng: 5 ngày kể từ ngày mua.</p>	
			<div style="width: 200px; margin: 50px auto 0 auto;">
				<a href='<c:url value="/home"/>'><button style="width: 200px; height: 50px; background-color: #db5660; font-size: 18px; border-radius: 5px;" type="button">Quay về trang chủ</button></a>	
			</div>
          </form>
    	
	</div>
	     </div>
	 
	<jsp:include page="section footer.jsp"></jsp:include>
	
</body>
</html>