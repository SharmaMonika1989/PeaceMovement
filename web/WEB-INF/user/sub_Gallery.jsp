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
                    <link rel="stylesheet" href="css/gellerycss/blueimp-gallery.min.css">
                        <script src="js/gelleryjs/jquery.min.js"></script>
                        <script src="js/gelleryjs/jquery.blueimp-gallery.min.js"></script>
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

                                                        <!-- Gallery news  End -->

                                                        <!-- Left Bar Start -->

                                                        <div class="PT10">
                                                            <div class="col-lg-3">
                                                                <div class="leftside" style="background-color:#FFF;">

                                                                    <div class="col-lg-12">
                                                                        <%@include  file="../common/left_menu.jsp" %>
                                                                    </div>
                                                             

                                                                </div>
                                                            </div>

                                                            <!-- Left Bar End -->

                                                            <!-- Body Content Start -->

                                                            <div class="col-lg-9">
                                                                <div class="row">

                                                                    <h4 class="hdng" align="center">Photo Gallery</h4><br>

                                                                        <div id="blueimp-gallery" class="blueimp-gallery">
                                                                            <!-- The container for the modal slides -->
                                                                            <div class="slides"></div>
                                                                            <!-- Controls for the borderless lightbox -->
                                                                            <h3 class="title"></h3>
                                                                            <a class="prev">‹</a>
                                                                            <a class="next">›</a>
                                                                            <a class="close">×</a>
                                                                            <a class="play-pause"></a>
                                                                            <ol class="indicator"></ol>
                                                                            <!-- The modal dialog, which will be used to wrap the lightbox content -->
                                                                            <div class="modal fade">
                                                                                <div class="modal-dialog">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header">
                                                                                            <button type="button" class="close" aria-hidden="true">&times;</button>
                                                                                            <h4 class="modal-title"></h4>
                                                                                        </div>
                                                                                        <div class="modal-body next"></div>
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-default pull-left prev">
                                                                                                <i class="glyphicon glyphicon-chevron-left"></i>
                                                                                                Previous
                                                                                            </button>
                                                                                            <button type="button" class="btn btn-primary next">
                                                                                                Next
                                                                                                <i class="glyphicon glyphicon-chevron-right"></i>
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <br/>

                                                                        <br/>
                                                                        <div id="links" class="col-lg-12">
                                                                            <c:forEach items="${photoGalleryListCategoryWise}" var="rList"> 

                                                                                <a href="upload/${rList.imageName}" title="${rList.imageTittle}" data-gallery>
                                                                                    <img  src="upload/${rList.imageName}" alt="${rList.imageTittle}" height="250" width="250" style="margin: 5px">
                                                                                </a>
                                                                            </c:forEach>

                                                                            <br>


                                                                        </div>
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