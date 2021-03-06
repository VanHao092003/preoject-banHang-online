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
                        <div class="footer-logo"><img src='<c:url value = "/views/images/phone-icon.png"/>'><span class="map_text">0354485988 </span></div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="footer-logo"><img src='<c:url value = "/views/images/email-icon.png"/>'><span class="map_text">VanHao092003@gmail.com</span></div>
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
                        <p class="dummy_text"></p>
                    </div>
                    <div class="col-sm-4 col-lg-2">
                        <h2 class="shop_text">?????a ch??? </h2>
                        <div class="image-icon"><img src='<c:url value = "/views/images/map-icon.png"/>'><span class="pet_text">Ng?? 26 - Nh??n H??a - Nh??n Ch??nh - Thanh Xu??n - H?? N???i</span></div>
                    </div>
                    <div class="col-sm-4 col-md-6 col-lg-3">
                        <h2 class="shop_text">C??ng ty c???a ch??ng t??i </h2>
                        <div class="delivery_text">
                            <ul>
                                <li>V???n chuy???n nhanh</li>
                                <li>Th??ng b??o ph??p l??</li>
                                <li>Thanh to??n an to??n</li>
                                <li>Li??n h??? ch??ng t??i</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <h2 class="adderess_text">C??c s???n ph???m</h2>
                        <div class="delivery_text">
                            <ul>
                                <li>Gi?? gi???m</li>
                                <li>S???n ph???m m???i</li>
                                <li>H??ng b??n t???t nh???t</li>
                                <li>Li??n h??? ch??ng t??i</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <h2 style="width: 250px;" class="adderess_text">B???n tin m???i</h2>
                        <div class="form-group">
                        	<form action="/WebSellingShoes/dang-ky">
                        		<input name="newsInformation" placeholder="Nh???p email c???a b???n">
                        		<button class="subscribr_bt" type="submit" >????ng k??</button>
                        	</form>
	                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
