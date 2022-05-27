<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <!-- basic -->
    <title>Shoes</title>
   <jsp:include page="header.jsp"></jsp:include>
</head>
<!-- body -->

<body class="main-layout">
    <!-- header section start -->
 	<div class="header_section header_main">
		<jsp:include page="header section start.jsp"></jsp:include>
    </div>
    <!-- contact section start -->
    <div class="collection_text">Contact Us</div>
    <div class="layout_padding contact_section">
        <div class="container">
            <h1 class="new_text"><strong>Contact Now</strong></h1>
        </div>
        <div class="container-fluid ram">
            <div class="row">
                <div class="col-md-6">
                    <div class="email_box">
                        <div class="input_main">
                            <div class="container">
                            	<c:url value="/contact" var="url" />
                            	<form:form class="form" action="${url }" method="POST" modelAttribute="contact" enctype="multipart/form-data">
                            		<div class="form-group">
                            			<form:hidden path="ID"/>
                            		</div>
                            		<div class="form-group">
                            			<form:input class="email-bt" path="name" placeholder="Name"/>
                            		</div>
                            		<div class="form-group">
                            			<form:input class="email-bt" path="phone" placeholder="Phone"/>
                            		</div>
                            		<div class="form-group">
                            			<form:input class="email-bt" path="email" placeholder="Email"/>
                            		</div>
                            		<div class="form-group textarea_bt">
                            			<form:textarea class="massage-bt" path="massage" placeholder="Masage"/>
                            		</div>
                            		<div class="send_btn">
                                		<form:button  class="main_bt" value="sumbit">Send</form:button>
                            		</div>
                            	</form:form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="shop_banner">
                        <div class="our_shop">
                            <button class="out_shop_bt">Our Shop</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- contact section end -->
    <!-- section footer start -->
   	<jsp:include page="section footer.jsp"></jsp:include>
    <!-- section footer end -->
</body>

</html>