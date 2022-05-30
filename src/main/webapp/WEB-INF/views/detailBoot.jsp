<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Single Product</title>
    <meta charset="utf-8">
	<jsp:include page="header.jsp"></jsp:include>
	<style type="text/css">
	    <%@include file="css/single_styles.css" %>
	</style>
</head>

<body class="main-layout">
    <!-- header section start -->
    <div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <!-- New Arrivals section start -->
    <div class="collection_text">Chi tiết sản phẩm</div>
    <div class="super_container">
        <div class="hamburger_menu">
            <div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            <div class="hamburger_menu_content text-right">
                <ul class="menu_top_nav">
                    <li class="menu_item has-children">
                        <a href="#">
								usd
								<i class="fa fa-angle-down"></i>
							</a>
                        <ul class="menu_selection">
                            <li><a href="#">cad</a></li>
                            <li><a href="#">aud</a></li>
                            <li><a href="#">eur</a></li>
                            <li><a href="#">gbp</a></li>
                        </ul>
                    </li>
                    <li class="menu_item has-children">
                        <a href="#">
								English
								<i class="fa fa-angle-down"></i>
							</a>
                        <ul class="menu_selection">
                            <li><a href="#">French</a></li>
                            <li><a href="#">Italian</a></li>
                            <li><a href="#">German</a></li>
                            <li><a href="#">Spanish</a></li>
                        </ul>
                    </li>
                    <li class="menu_item has-children">
                        <a href="#">
								My Account
								<i class="fa fa-angle-down"></i>
							</a>
                        <ul class="menu_selection">
                            <li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>Sign In</a></li>
                            <li><a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
                        </ul>
                    </li>
                    <li class="menu_item"><a href="#">home</a></li>
                    <li class="menu_item"><a href="#">shop</a></li>
                    <li class="menu_item"><a href="#">promotion</a></li>
                    <li class="menu_item"><a href="#">pages</a></li>
                    <li class="menu_item"><a href="#">blog</a></li>
                    <li class="menu_item"><a href="#">contact</a></li>
                </ul>
            </div>
        </div>

        <div class="container single_product_container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="single_product_pics">
                        <div class="row">
                            <div class="col-lg-9 image_col order-lg-2 order-1">
                                <div class="single_product_image">
                                    <div class="single_product_image_background" style="background-image:url(/WebSellingShoes/views/images/${bootID.image})"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="product_details">
                        <div class="product_details_title">
                            <h2>${bootID.title}</h2>
                            <p>${bootID.discription}</p>
                        </div>
                        <div class="free_delivery d-flex flex-row align-items-center
								justify-content-center">
                            <span class="ti-truck"></span><span>miễn phí vận chuyển</span>
                        </div>
                        <div class="product_price">${bootID.money} Đ</div>
                        <ul class="star_rating">
                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                        </ul>
                        <div class="quantity d-flex flex-column flex-sm-row
								align-items-sm-center">
                            <span>Số lượng:</span>
                             	<form class="inputbox_form_quantity" action="/WebSellingShoes/boot/detail/thanh-toan/${bootID.ID}">
           							 <input type="number" class="inputbox_quantity" value="1" name="quantity" required />
           							 <button class="red_button add_to_cart_button" type="submit">Thanh toán</button>
                             	</form>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- New Arrivals section end -->
    <!-- section footer start -->
   	<jsp:include page="section footer.jsp"></jsp:include>
    <!-- section footer end -->
    <script src='<c:url value="/views/js/jquery-3.2.1.min.js"/>'></script>
	<script src='<c:url value="/views/js/single_custom.js"/>'></script>
</body>
</html>