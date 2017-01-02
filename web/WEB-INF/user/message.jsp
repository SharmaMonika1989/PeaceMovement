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
                                                                <h4 class="hdng" align="center">Messages</h4><br>

                                                                    <div class="media">
                                                                        <div class="media-left media-top">
                                                                            <img src="message/Shankracharya.gif" class="media-object" style="width:80px; height: 80px ">
                                                                        </div>
                                                                        <div class="media-body">
                                                                            <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold ">Jagatguru Bhagwan Shankaracharya of <br>Jyotirmath Swami Vasudevanand Saraswati Ji</p>
                                                                            <a href="shankaracharya.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                        </div>
                                                                    </div>
                                                                    <hr>
                                                                        <div class="media">
                                                                            <div class="media-left media-middle">
                                                                                <img src="message/MahapragyaJi.gif" class="media-object" style="width:80px">
                                                                            </div>
                                                                            <div class="media-body">
                                                                                <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold"> Acharya Shri Mahapragya Ji</p>
                                                                                <a href="Mahapragya.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                            </div>
                                                                        </div>
                                                                        <hr>
                                                                            <div class="media">
                                                                                <div class="media-left media-bottom">
                                                                                    <img src="img_avatar1.png" class="media-object" style="width:80px">
                                                                                </div>
                                                                                <div class="media-body">
                                                                                    <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Sri Sri Vidyanarasimha Bharati Swamiji Sri Sri Jagatguru,<br> Shankaracharya of Pushpagiri Peeth Andhra Pradesh</p>
                                                                                    <a href="vidyanarasimha.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                </div>
                                                                            </div>
                                                                            <hr>

                                                                                <div class="media">
                                                                                    <div class="media-left media-top">
                                                                                        <img src="message/BalramJakhar.gif" class="media-object" style="width:80px">
                                                                                    </div>
                                                                                    <div class="media-body">
                                                                                        <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">His Excellency Dr. Balram Singh Jakhad <br>Governor of Madhya Pradesh</p>
                                                                                        <a href="BalramSingh.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                    </div>
                                                                                </div>

                                                                                <hr>
                                                                                    <div class="media">
                                                                                        <div class="media-left media-middle">
                                                                                            <img src="message/CM-MP.gif" class="media-object" style="width:80px">
                                                                                        </div>
                                                                                        <div class="media-body">
                                                                                            <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Shri Shivraj Singh Chauhan <br>Chief Minister, Madhya Pradesh</p>
                                                                                            <a href="ShivrajSingh.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                        </div>
                                                                                    </div>

                                                                                    <hr>
                                                                                        <div class="media">
                                                                                            <div class="media-left media-bottom">
                                                                                                <img src="message/VasundharaRajeJiPhoto.gif" class="media-object" style="width:80px">
                                                                                            </div>
                                                                                            <div class="media-body">
                                                                                                <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Smt. Vasundhara Raje Scindia <br>Chief Minister, Rajasthan</p>
                                                                                                <a href="VasundharaRaje.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                            </div>
                                                                                        </div>

                                                                                        <hr>
                                                                                            <div class="media">
                                                                                                <div class="media-left media-top">
                                                                                                    <img src="message/YSRajasekharaJiPhoto.gif" class="media-object" style="width:80px">
                                                                                                </div>
                                                                                                <div class="media-body">
                                                                                                    <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Dr. Y.S. Rajasekhara Reddy <br>Chief Minister, Hyderabad, Andhra Prades</p>
                                                                                                    <a href="RajasekharaReddy.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                                </div>
                                                                                            </div>
                                                                                            <hr>
                                                                                                <div class="media">
                                                                                                    <div class="media-left media-middle">
                                                                                                        <img src="message/LakshmiKantSharma.jpg" class="media-object" style="width:80px">
                                                                                                    </div>
                                                                                                    <div class="media-body">
                                                                                                        <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Shri Lakshmikant Sharma <br>Minister of Culture,Mines and Public Relations,<br> Government of Madhya Pradesh</p>
                                                                                                                    <a href="Lakshmikant.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                                                    </div>
                                                                                                                    </div>
                                                                                                                    <hr>
                                                                                                                        <div class="media">
                                                                                                                            <div class="media-left media-bottom">
                                                                                                                                <img src="message/AshokSinghalJi.jpg" class="media-object" style="width:80px">
                                                                                                                            </div>
                                                                                                                            <div class="media-body">
                                                                                                                                <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Shri Ashok Singhal <br>International President, Vishwa Hindu Parishad</p>
                                                                                                                                <a href="#"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <hr>
                                                                                                                            <div class="media">
                                                                                                                                <div class="media-left media-top">
                                                                                                                                    <img src="message/SrivasukiJiImage.gif" class="media-object" style="width:80px">
                                                                                                                                </div>
                                                                                                                                <div class="media-body">
                                                                                                                                    <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Dr. K.P. Srivasuki, <br>IFS. Addl Principal Chief Conservator of
                                                                                                                                            Forests & Chief Executive Officer,<br>
                                                                                                                                                A.P. Medicinal & Aromatic Plants Board</p>
                                                                                                                                                <a href="Srivasuki.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                                <hr>
                                                                                                                                                    <div class="media">
                                                                                                                                                        <div class="media-left media-middle">
                                                                                                                                                            <img src="message/BevanMorris.gif" class="media-object" style="width:80px">
                                                                                                                                                        </div>
                                                                                                                                                        <div class="media-body">
                                                                                                                                                            <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">His Excellency Dr. Bevan Morris <br>The Prime Minister-Maharishi Global Country of World Peace</p>
                                                                                                                                                            <a href="BevanMorris.wpm"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                                                                                        </div>
                                                                                                                                                    </div>
                                                                                                                                                    <hr>
                                                                                                                                                        <div class="media">
                                                                                                                                                            <div class="media-left media-bottom">
                                                                                                                                                                <img src="message/NandKishrorji.gif" class="media-object" style="width:80px">
                                                                                                                                                            </div>
                                                                                                                                                            <div class="media-body">
                                                                                                                                                                <p style="font-size:16px; color:#da800e; font-family:arial; text-align:left; font-weight: bold">Honourable Brahmachari Shri Nand Kishore Ji <br>President Maharishi Ved Vigyan Vishwa Vidyapeeth</p>
                                                                                                                                                                <a href="#"><img src="message/forward2.png" class="media-object" align="right" style="width:30px; height:30px;margin-right: 50px"></a> 
                                                                                                                                                            </div>
                                                                                                                                                        </div>
                                                                                                                                                        <hr>
                                                                                                                                                            <br><br>
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
