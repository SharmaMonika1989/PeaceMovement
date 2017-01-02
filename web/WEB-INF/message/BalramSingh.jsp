<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang= "hi"  xmlns="http://www.w3.org/1999/xhtml">
    <!-- Header Start-->
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <meta http-equiv="Content-Language" content="hi" />
        <meta name="viewport" content="width=device-width">
            <META Name="description" Content="Establishing Perpetual World Peace and Invincibility for Every Individual and Nation on the Basis of Vedic Principles and Programmes brought to light by His Holiness Maharishi Mahesh Yogi">
                <META Name="keywords" Content="With the divine grace, inspiration and blessings of His Divinity Brahmaleen Swami Brahmanand Saraswati Ji, Shankaracharya of Jyotirmath, Badrikashram Himalaya, His Holiness Maharishi Mahesh Yogi Ji, 50 years back has established Spiritual Regeneration Movement. Maharishi Ji has traveled across the world many times and through Spiritual Movement awakened mass awareness of spiritualism in the whole world">
                    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

                    <title>Maharishi World Peace Movement</title>
                    <%@include  file="../common/library.jsp" %>
                    <%@include  file="../common/design_lib.jsp" %>


                    <script type="text/javascript">
                        $(function () {
                            $('#news-container').vTicker({
                                speed: 500,
                                pause: 3000,
                                animation: 'fade',
                                mousePause: false,
                                showItems: 1
                            });
                        });
                        $(function () {
                            $('#highlights').vTicker({
                                speed: 450,
                                pause: 4000,
                                animation: 'fade',
                                mousePause: false,
                                showItems: 2
                            });
                        });

                        $("#accordion > li > div").click(function () {

                            if (false == $(this).next().is(':visible')) {
                                $('#accordion ul').slideUp(300);
                            }
                            $(this).next().slideToggle(300);
                        });

                        $('#accordion ul:eq(0)').show();
                    </script>


                    </head> <!-- Header End -->

                    <!-- Body Start -->
                    <body style="background-color:#E3D09D;">

                        <!-- Top Header Menu Start -->

                        <div class="container">
                            <div class="row">
                                <div class=" col-lg-8"></div>
                                <%@include  file="../common/header.jsp" %>
                                <%@include  file="../common/menu.jsp" %>
                            </div>
                        </div>
                        </div>
                        <!-- Top Header Menu End -->

                        <!-- Gallary news start-->

                        <div id="main" class="site-main">
                            <div id="primary" class="content-area">
                                <div id="content" class="site-content" role="main">
                                    <div class="container">
                                        <div class="row">
                                            <div class="con-box">
                                                <div class="col-lg-12">
                                                    <!--  <div class="row">
                                                    <%@include  file="../common/slider.jsp" %>
                                                    <%@include  file="../common/upcoming_event.jsp" %>
                                                </div>-->
                                                    <!-- Gallery news  End -->

                                                    <!-- Left Bar Start -->

                                                    <div class="PT10">
                                                        <div class="col-lg-4 col-md-4 col-sm-4">
                                                            <div class="leftside" style="background-color:#FFF;">
                                                                <!--                                                                <h5><img src="images/left-side.png" class="img-responsive img"></h5>-->
                                                                <div class="col-lg-8">
                                                                    <%@include  file="../common/left_menu.jsp" %>
                                                                </div>
                                                                <div class="col-lg-4"></div>
                                                                <!--<div style="padding-top:20px;">
                                                                <%@include  file="../common/useful_link.jsp" %>

                                                            </div>
                                                            <div style="padding-left:18px;">
                                                                <h4 style="padding-top:49px;">Download Participation Form</h4>
                                                            </div>
                                                            <div style="padding-left:20px;"><a href="#"><img title="Download Participation Form" src="images/download-form.png" width="250px" class="img-responsive" /></a></div>-->
                                                            </div>
                                                        </div>

                                                        <!-- Left Bar End -->

                                                        <!-- Body Content Start -->

                                                        <div class="col-lg-8 col-md-8 col-sm-8">
                                                            <div class="row" style="margin-left: -120px;">

                                                                <p style="font-size:16px; color:#cc0000; font-family:arial; text-align:center; font-weight: bold; padding-top: 35px ">His Excellency Dr. Balram Singh Jakhad <br>Governor of Madhya Prades</p><br>
                                                                    <center>  <img class="img" src="message/BalramSingh-msg.gif" alt="Paris" width="553" height="757"></center><br>
                                                                        <br><br><br>
                                                                                    <p style="font-size:16px; color: #cc0000; font-family:arial; text-align:center; font-weight: bold">Jay Guru Dev</p>

                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>

                                                                                    <!-- Body Content Enad -->

                                                                                    <!-- Right Side Bar Start -->

                                                                                    <!--                                                <div class="col-lg-2 col-md-2 col-sm-2">
                                                                                                                                        <div class="row rightside">
                                                                                                                                            <div class="rlink homerlink">
                                                                                    <%@include  file="../common/search.jsp" %>
                                                                                    <%@include  file="../common/message.jsp" %>
                                    
                                                                                    <br>
                                                                                    <%@include  file="../common/our_project.jsp" %> 
                                                                                    <div class="follow-box"> </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="clearfix"></div>
                                                                    </div>-->
                                                                                    <div class="clearfix"></div>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    </div>
                                                                                    <!-- Right Side  bar End -->
                                                                                    <!-- Footer  Start -->
                                                                                    <%@include  file="../common/footer.jsp" %> 
                                                                                    </div>

                                                                                    <!-- Footer End --> 


                                                                                    <!-- If Monitor Screen Auto Side then Responsive Menu auto Load -->

                                                                                    <script type='text/javascript'>
                                                                                        var colomatduration = 'fast';
                                                                                        var colomatslideEffect = 'slideFade';
                                                                                    </script>
                                                                                    <%@include  file="../common/responsive_menu.jsp" %>

                                                                                    <!-- Body End -->

                                                                                    </body>
                                                                                    </html>