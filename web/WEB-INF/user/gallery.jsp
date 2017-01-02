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

                                                    <!-- Gallery news  End -->

                                                    <!-- Left Bar Start -->

                                                    <div class="PT10">
                                                        <div class="col-lg-3 col-md-3 col-sm-3">
                                                            <div class="leftside" style="background-color:white">
                                                          
                                                                <div class="col-lg-12">
                                                                    <%@include  file="../common/left_menu.jsp" %>
                                                                </div>


                                                            </div>
                                                        </div>

                                                        <!-- Left Bar End -->

                                                        <!-- Body Content Start -->

                                                        <div class="col-lg-9 col-md-9 col-sm-9">
                                                            <div class="row">

                                                                <h4 class="hdng" align="center">Photo Gallery</h4><br>
                                                                    <div class="row">
                                                                        <c:forEach items="${photoGalleryListStatus}" var="rList"> 
                                                                            <div class="col-lg-4" >
                                                                                <center> <a href="sub_gallery.wpm?categoryId=${rList.categoryId.categoryId}"> <img class="img-responsive" src="upload/${rList.imageName}"  style="margin-top:20px; margin-right: 10px"/> </a></center><br/>
                                                                                <center><a href="sub_gallery.wpm?categoryId=${rList.categoryId.categoryId}" style="font-size:18px; font-family:arial; color: #990099;font-weight: bold; ">${rList.categoryId.categoryName}</a></center>

                                                                            </div>
                                                                        </c:forEach>  
                                                                    </div><br>
                                                                        </div>
                                                                        </div>
                                                                        </div>
                                                                        </div>

                                                                        <!-- Body Content Enad -->

                                                                        <!-- Right Side Bar Start -->


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