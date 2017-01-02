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
                                                                <h4 class="hdng" align="center">Group Meditation Program</h4><br>
                                                                    <p class="para">All Maharishi Organisations have enjoyed group practice of Transcendental Meditation Programme on one of most auspicious day of Vedic Calendar–Akshaya Tritiya all over India from 8.30 to 9 am, followed by speeches on TM and Maharishi Vedic Science by exponents of Vedic knowledge, scientists, professors, scholars, and students. About 2,75,000 practitioners of TM have participated in 221 cities. Vedic theme based cultural programmes were performed by students, teachers and administrators of different Maharishi Organisations.</p>
                                                                    <p class="para">TM Camps (Bhawateet Dhyan Shivir) have been organised in over 150 cities all over India. </p>
                                                                    <p class="para">Addressing thousands of TM Practitioners at Maharishi Centre for Educational Excellence campus Bhopal, Brahmachari Girish, Chairman of Maharishi Vidya Mandir Schools Group has announced that "we are adopting this resolution-sankalpa on this pious day of AkshayaTritiya and starting with large scale group meditation. </p>
                                                                    <p class="para">From now on we will do it every month on second Saturday, then will organise every week, then every day and then it will become practice to meditate twice every day. Positive results of group practice of TM and group practice of TM-Siddhi Programme in every area of life has been enjoyed by millions of people from all walks of life world-wide and have been scientifically validated by 230 independent research institutions and universities in 35 countries. </p>
                                                                    <p class="para">With group practice of TM, TM-Siddhi Programme and its advance techniques will create a very powerful, effective, positive influence of coherence (sattwa) in Indian and world collective consciousness. India will again become an infinite source of inner light, coherence and knowledge, resulting into removal of darkness, suffering, struggle and negativity. Happiness, peace, prosperity, perfect health, invincibility and heavenly life will be enjoyed by every dear citizen of our global family”. </p>
                                                                    
                                                                    <br><br><br>
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