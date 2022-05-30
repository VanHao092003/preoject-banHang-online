<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <div class="container">
            <div class="row">
                <div style="max-width: 10%;" class="col-sm-3">
                    <div class="logo">
                        <a href='<c:url value ="/home"/>'><img src='<c:url value = "/views/images/logo.png"/>'></a>
                    </div>
                </div>
                <div class="col-sm-9">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <a style="width: 160px;" class="nav-item nav-link" href='<c:url value="/home"/>'>Trang chủ</a>
                                <a style="width: 170px;" class="nav-item nav-link" href='<c:url value="/collection"/>'>Bộ siêu tập</a>
                                <a class="nav-item nav-link" href='<c:url value="/shoes"/>'>Giày</a>
                                <a class="nav-item nav-link" href='<c:url value="/boots"/>'>Boots</a>
                                <a style="width: 140px;" class="nav-item nav-link" href='<c:url value="/contact"/>'>Hỏi đáp</a>
                                <form class=" nav-item nav-link" action="/WebSellingShoes/search">
                                	<input placeholder="Tìm kiếm" style="font-size:16px; height: 80%; padding: 0px; width: 220px;" name="search" type="text">
 		                      	</form>
                            	<a style="padding-left:0px;" class=" nav-item nav-link icon_search" href="#"><img class="image_search_input" src='<c:url value = "/views/images/search_icon.png"/>'></a>
                     			<a class=" nav-item nav-link icon_search" href="contact.html"><img class="image_search"  src='<c:url value = "/views/images/shop_icon.png"/>'></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
