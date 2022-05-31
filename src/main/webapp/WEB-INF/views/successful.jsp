<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <div style="padding-top:50px; background-color: #dfdfdf; width: 80%; min-height:600px; margin: auto; display: flex; flex-direction: column; align-items: center; "  >
	    	<img style="width: 20%; height: auto; " alt="" src='<c:url value="/views/images/successful.png"/>'>
    	<h2 style="margin-top: 10px; width: 220px;">Cảm ơn bạn đã đặt</h2>
    	<div style="background-color: #5dac41; width:380px; border-radius: 10px; display: flex; flex-direction: column; align-items: center; ">
    		<p style="color: white; margin: 10px;">Mã số đơn hàng của bạn là:</p>
    		<h1 style="color: white;">1</h1>
    	</div>
    	<div style="width: 380px; margin-top: 15px; display: flex; justify-content: space-around; margin-bottom: 15px;">
    		<a style="width: 40%;" href='<c:url value="#"/>'><button style="width: 100%; padding: 10px; border-radius: 5px;">Chi tiết đơn hàng</button></a>
    		<a style="width: 40%;" href='<c:url value="/home"/>'><button style="width: 100%; padding: 10px; border-radius: 5px;">Quay lại trang chủ</button></a>
    	</div>
    	<h3  style=" font-weight: 100; padding-bottom: 0;">Nhân viên của tôi sẽ sớm liên hệ với Quý khách trong thời gian sơm nhất.</h3>
    	<h3 style="width: 730px; font-weight: 100; text-align: center; padding-bottom: 20px;">Nếu quý khách có thắc mắc, xin vui lòng liên hệ với chunhs tôi qua số hotline khi đơn hàng đã được xác nhận và xuất kho, một số yêu cầu hủy đơn hàng sẽ không thực hiện được.</h3>
    	<h2  style="font-weight: 100;">Xin chân thành cảm ơn quý khách hàng!</h2>
	</div>
	<jsp:include page="section footer.jsp"></jsp:include>
	
</body>
</html>