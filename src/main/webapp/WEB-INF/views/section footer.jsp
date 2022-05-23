<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <div class="section_footer">
        <div class="container">
            <div class="mail_section">
                <div class="row">
                    <div class="col-sm-6 col-lg-2">
                        <div>
                            <a href="#"><img src='<c:url value = "/views/images/footer-logo.png"/>'></a>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="footer-logo"><img src='<c:url value = "/views/images/phone-icon.png"/>'><span class="map_text">(71) 1234567890</span></div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="footer-logo"><img src='<c:url value = "/views/images/email-icon.png"/>'><span class="map_text">Demo@gmail.com</span></div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="social_icon">
                            <ul>
                                <li>
                                    <a href= "https://www.facebook.com/profile.php?id=100014167864051"><img src='<c:url value = "/views/images/fb-icon.png"/>'></a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/?lang=vi"><img src='<c:url value = "/views/images/twitter-icon.png"/>'></a>
                                </li>
                                <li>
                                    <a href="https://www.instagram.com/"><img src='<c:url value = "/views/images/in-icon.png"/>'></a>
                                </li>
                                <li>
                                    <a href="https://www.google.com.vn/?hl=vi"><img src='<c:url value = "/views/images/google-icon.png"/>'></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
            <div class="footer_section_2">
                <div class="row">
                    <div class="col-sm-4 col-lg-2">
                        <p class="dummy_text"> ipsum dolor sit amet, consectetur ipsum dolor sit amet, consectetur ipsum dolor sit amet,</p>
                    </div>
                    <div class="col-sm-4 col-lg-2">
                        <h2 class="shop_text">Address </h2>
                        <div class="image-icon"><img src='<c:url value = "/views/images/map-icon.png"/>'><span class="pet_text">No 40 Baria Sreet 15/2 NewYork City, NY, United
									States.</span></div>
                    </div>
                    <div class="col-sm-4 col-md-6 col-lg-3">
                        <h2 class="shop_text">Our Company </h2>
                        <div class="delivery_text">
                            <ul>
                                <li>Delivery</li>
                                <li>Legal Notice</li>
                                <li>About us</li>
                                <li>Secure payment</li>
                                <li>Contact us</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <h2 class="adderess_text">Products</h2>
                        <div class="delivery_text">
                            <ul>
                                <li>Prices drop</li>
                                <li>New products</li>
                                <li>Best sales</li>
                                <li>Contact us</li>
                                <li>Sitemap</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <h2 class="adderess_text">Newsletter</h2>
                        <div class="form-group">
                            <input type="text" class="enter_email" placeholder="Enter Your email" name="Name">
                        </div>
                        <button class="subscribr_bt">Subscribe</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <div class="copyright">2019 All Rights Reserved. <a href="https://html.design">Free html  Templates</a></div>
 <!-- Javascript files-->
    <script src='<c:url value = "/views/js/jquery.min.js"/>'></script>
    <script src='<c:url value = "/views/js/popper.min.js"/>'></script>
    <script src= '<c:url value = "/views/js/bootstrap.bundle.min.js"/>'></script>
    <script src= '<c:url value = "/views/js/jquery-3.0.0.min.js"/>'></script>
    <script src='<c:url value = "/views/js/plugin.js"/>'></script>
    <!-- sidebar -->
    <script src='<c:url value = "/views/js/jquery.mCustomScrollbar.concat.min.js"/>'></script>
    <script src='<c:url value = "/views/js/custom.js"/>'></script>
    <!-- javascript -->
    <script src='<c:url value = "/views/js/owl.carousel.js"/>'></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function() {
                    $(".fancybox").fancybox({
                        openEffect: "none",
                        closeEffect: "none"
                    });


                    $('#myCarousel').carousel({
                        interval: false
                    });

                    //scroll slides on swipe for touch enabled devices

                    $("#myCarousel").on("touchstart", function(event) {

                        var yClick = event.originalEvent.touches[0].pageY;
                        $(this).one("touchmove", function(event) {

                            var yMove = event.originalEvent.touches[0].pageY;
                            if (Math.floor(yClick - yMove) > 1) {
                                $(".carousel").carousel('next');
                            } else if (Math.floor(yClick - yMove) < -1) {
                                $(".carousel").carousel('prev');
                            }
                        });
                        $(".carousel").on("touchend", function() {
                            $(this).off("touchmove");
                        });
                    });
    </script>
