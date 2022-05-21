<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="logo">
                        <a href='<c:url value ="home"/>'><img src='<c:url value = "/views/images/logo.png"/>'></a>
                    </div>
                </div>
                <div class="col-sm-9">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                <a class="nav-item nav-link" href='<c:url value="index"/>'>Home</a>
                                <a class="nav-item nav-link" href='<c:url value="collection"/>'>Collection</a>
                                <a class="nav-item nav-link" href='<c:url value="shoes"/>'>Shoes</a>
                                <a class="nav-item nav-link" href='<c:url value="racing boots"/>'>Racing Boots</a>
                                <a class="nav-item nav-link" href='<c:url value="contact"/>'>Contact</a>
                                <a class="nav-item nav-link last" href="#"><img src='<c:url value = "/views/images/search_icon.png"/>'></a>
                                <a class="nav-item nav-link last" href="contact.html"><img src='<c:url value = "/views/images/shop_icon.png"/>'></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
