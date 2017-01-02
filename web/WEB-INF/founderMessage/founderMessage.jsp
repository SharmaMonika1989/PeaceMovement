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
                                                        <div class="col-lg-3">
                                                            <div class="leftside" style="background-color:#FFF;">
                                                                <!--                                                                <h5><img src="images/left-side.png" class="img-responsive img"></h5>-->
                                                                <div class="col-lg-12">
                                                                    <%@include  file="../common/left_menu.jsp" %>
                                                                </div>
                                                           
                                                              
                                                            </div>
                                                        </div>

                                                        <!-- Left Bar End -->

                                                        <!-- Body Content Start -->

                                                        <div class="col-lg-9">
                                                            <div class="row"
                                                                 
                                                                 
                                                                 >
                                                                <h4 class="hdng" align="center">Founder</h4>

                                                                <center>  <img  src="images/maharshiji_round.gif" alt="maharshiji" width="320" height="380" style="margin-top: 50px"></center>
                                                                <p style="font-size:18px; font-family:arial; color: #990099; text-align: center; font-weight: bold; ">His Holiness <br/>Maharishi Mahesh Yogi</p><br>
                                                                    <br><br>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center; font-weight: bold">Transcendental Meditation (TM), and TM-Sidhi Programme</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center; font-weight: bold">Maharishi Vidya Mandir Schools</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Ideal Girls Schools</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Schools of the Age of Enlightenment </p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center; font-weight: bold">Maharishi Centre for Educational Excellence</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Institute of Vedic & Management Sciences</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Universities and Institutes of Management</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center; font-weight: bold">Maharishi Mahesh Yogi Vedic Vishwavidyalya</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi University of Management and TEchnology</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Vedic and Ayurvedic Universities</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Ved Vigyan Vishwa Vidyapeetham</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi World Centre for Gandharva Ved</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Mahavidyalaya </p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Vedic Vishwa Prashasanam</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Vishwa Vyapi Ram Rajya</p>
                                                                            <p style="font-size:18px; font-family:arial; text-align: center;  font-weight: bold">Maharishi Global Country of World Peace</p>

                                                                            <br>
                                                                                <br>

                                                                                    <table width="87%" height="42" border="0" align="center" cellpadding="1" cellspacing="2">
                                                                                        <tr>
                                                                                            <td width="51%" height="38" bgcolor="#CDAA54"><div align="center"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color:#990099; font-weight: bold;"><a href="maharishiAchievements.wpm"><u>MAHARISHI ACHIEVEMENTS 1957-2008</u></a></span></div></td>
                                                                                            <td width="51%" height="38" bgcolor="#D8BC79"><div align="center"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color:#990099; font-weight: bold;"><a href="maharishiWorld.wpm"><u>MAHARISHI IN THE WORLD TODAY</u> </a></span></div></td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <br>
                                                                                        <br>
                                                                                            <p style="font-size:16px; color: #cc0000; font-family:arial; text-align:center; font-weight: bold">Jay Guru Dev</p>


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