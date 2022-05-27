<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <title>Pullshoes</title>     
      <jsp:include page="header.jsp"></jsp:include>
	</head>
   <!-- body -->
   <body class="main-layout">
	<!-- header section start -->
	<div class="header_section" >
		<jsp:include page="header section start.jsp"></jsp:include>
	
		<div class="banner_section">
			<div class="container-fluid">
				<section class="slide-wrapper">
    <div class="container-fluid">
	    <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            	<div class="carousel-item active">
                    	<div class="row">
							<div class="col-sm-2 padding_0">
								<p class="mens_taital">Men Shoes</p>
									<div class="page_no">0/2</div>
						<p class="mens_taital_2">Men Shoes</p>
					</div>
					<div class="col-sm-5">
						<div class="banner_taital">
							<h1 class="banner_text">New Shoes </h1>
							<h1 class="mens_text"><strong>${shoesMax.name}</strong></h1>
							<a class = "link_bt" href='<c:url value="shoes/${shoesMax.ID}"/>'><button class="buy_bt">See More</button></a>
						</div>
					</div>
						<div class="col-sm-5">
							<div class="shoes_img"><img src='<c:url value="/views/images/${shoesMax.image}"/>'></div>
						</div>
					</div>
                </div>
	            <c:forEach items="${shoesHome}" var="o">
	            	<div class="carousel-item">
                    	<div class="row">
							<div class="col-sm-2 padding_0">
								<p class="mens_taital">Men Shoes</p>
								<div class="page_no">0/2</div>
								<p class="mens_taital_2">Men Shoes</p>
							</div>
							<div class="col-sm-5">
								<div class="banner_taital">
									<h1 class="banner_text">New Shoes </h1>
									<h1 class="mens_text"><strong>${o.name}</strong></h1>
									<a href='<c:url value="shoes/${o.ID}"/>'><button class="buy_bt">See More</button></a>
								</div>
							</div>
							<div class="col-sm-5">
								<div class="shoes_img"><img src='<c:url value="/views/images/${o.image}"/>'></div>
							</div>
						</div>
	                </div>
	            </c:forEach>
	            <div class="carousel-item">
                    	<div class="row">
							<div class="col-sm-2 padding_0">
								<p class="mens_taital">Men Shoes</p>
									<div class="page_no">0/2</div>
						<p class="mens_taital_2">Men Shoes</p>
					</div>
					<div class="col-sm-5">
						<div class="banner_taital">
							<h1 class="banner_text">New Shoes </h1>
							<h1 class="mens_text"><strong>${bootMin.name}</strong></h1>
							<a class = "link_bt" href='<c:url value="/boot/detail//${bootMin.ID}"/>'><button class="buy_bt">See More</button></a>
						</div>
					</div>
						<div class="col-sm-5">
							<div class="shoes_img"><img src='<c:url value="/views/images/${bootMin.image}"/>'></div>
						</div>
					</div>
                </div>
	            
            </div>
        </div>
    </div>
</section>			
			</div>
		</div>
	</div>
	<!-- header section end -->
	<!-- new collection section start -->
    <div class="layout_padding collection_section">
    	<div class="container">
    	    <h1 class="new_text"><strong>New  Collection</strong></h1>
    	    <p class="consectetur_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
    	    <div class="collection_section_2">
    	    	<div class="row">
    	    		<div class="col-md-6">
    	    			<div class="about-img">
    	    				<button class="new_bt">New</button>
    	    				<div class="shoes-img"><img src="images/shoes-img1.png"></div>
    	    				<p class="sport_text">Men Sports</p>
    	    				<div class="dolar_text">$<strong style="color: #f12a47;">90</strong> </div>
    	    				<div class="star_icon">
    	    					<ul>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    					</ul>
    	    				</div>
    	    			</div>
    	    			<button class="seemore_bt">See More</button>
    	    		</div>
    	    		<div class="col-md-6">
    	    			<div class="about-img2">
    	    				<div class="shoes-img2"><img src="images/shoes-img2.png"></div>
    	    				<p class="sport_text">Men Sports</p>
    	    				<div class="dolar_text">$<strong style="color: #f12a47;">90</strong> </div>
    	    				<div class="star_icon">
    	    					<ul>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    						<li><a href="#"><img src="images/star-icon.png"></a></li>
    	    					</ul>
    	    				</div>
    	    			</div>
    	    		</div>
    	    	</div>
    	    </div>
    	</div>
    </div>
    <div class="collection_section">
    	<div class="container">
    		<h1 class="new_text"><strong>Racing Boots</strong></h1>
    	    <p class="consectetur_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
    	</div>
    </div>
    <div class="collectipn_section_3 layuot_padding">
    	<div class="container">
    		<div class="racing_shoes">
    			<div class="row">
    				<div class="col-md-8">
    					<div class="shoes-img3"><img src="images/shoes-img3.png"></div>
    				</div>
    				<div class="col-md-4">
    					<div class="sale_text"><strong>Sale <br><span style="color: #0a0506;">JOGING</span> <br>SHOES</strong></div>
    					<div class="number_text"><strong>$ <span style="color: #0a0506">100</span></strong></div>
    					<button class="seemore">See More</button>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    <div class="collection_section layout_padding">
    	<div class="container">
    		<h1 class="new_text"><strong>New Arrivals Products</strong></h1>
    	    <p class="consectetur_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
    	</div>
    </div>
	<!-- new collection section end -->
	<!-- New Arrivals section start -->
    <div class="layout_padding gallery_section">
    	<div class="container">
    		<c:forEach items="${shoessHome}" var="o">
                <a href='<c:url value="shoes/${o.ID}"/>'>
	                <div  class="col-sm-4">
	                    <div class="best_shoes">
	                        <p class="best_text">${o.name}</p>
	                        <div class="shoes_icon"><img src='<c:url value= "/views/images/${o.image}"/>'></div>
	                        <div class="star_text">
	                            <div class="left_part">
	                                <ul>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                    <li>
	                                        <a href="#"><img src='<c:url value="/views/images/star-icon.png"/>'></a>
	                                    </li>
	                                </ul>
	                            </div>
	                            <div class="right_part">
	                                <div class="shoes_price"><span style="color: #ff4e5b;">$ ${o.money}</span></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	          	</a>
        	</c:forEach>
    	</div>
    	<div class="buy_now_bt">
    		<a class="buy_text" href='<c:url value="shoes"/>'>
                <button class="button_buy">Buy Now</button>
               </a>
        </div>
    </div>
   	<!-- New Arrivals section end -->
   	<!-- contact section start -->
   	<!-- contact section end -->
	<!-- section footer start -->
   	<jsp:include page="section footer.jsp"></jsp:include>
	<!-- section footer end -->
   </body>
</html>