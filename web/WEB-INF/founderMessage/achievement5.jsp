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

                                                                <center>  <img  src="images/glimpse.gif" alt="maharshiji" width="350" height="72" style="margin-top: 10px; position: relative"></center>

                                                                <br><br>
                                                                        <p class="para"><span class="year">1981 Maharishi’s Year of Vedic Science:</span>Maharishi organizes the centuries-old scattered Vedic Literature as a complete literature of a perfect science—Maharishi’s Vedic Science and Technology— the Science and Technology of Consciousness.</p>
                                                                        <p class="para"><span class="year">1982 Maharishi’s Year of Natural Law:</span>Maharishi establishes the Vedic Principles and Programmes for bringing life in accord with Natural Law—the Will of God.</p>
                                                                        <p class="para">Maharishi inaugurates Maharishi University of Natural Law in England and 1,008 Colleges of Natural Law for the whole world.</p>
                                                                        <p class="para">Maharishi celebrates the Silver Jubilee of his worldwide Transcendental Meditation Movement.</p>
                                                                        <p class="para"><span class="year">1983 Maharishi’s Year of the Unified Field:</span>Maharishi brings to light the Unified Field Theories of modern Physics with reference to the self-referral field of Transcendental Consciousness, the field of pure knowledge.</p>
                                                                        <p class="para">Maharishi celebrates the Rising Sunshine of the Age of Enlightenment for the whole world and tours five continents, blessing many nations: in Africa—Kenya, Ivory Coast, Zambia, and The Gambia; In Europe—Italy, Sweden, Denmark, Norway, Spain, former Yugoslavia, Hamsa (Hungary), former Czechoslovakia, Greece, France, Holland, Finland, England, and Ireland; in South America—Brazil, Colombia, and Bolivia; in North America—the United States.</p>
                                                                        <p class="para">Maharishi gives the world its ‘First Taste of Utopia’ through the first assembly of 7,000 Yogic Flyers gathered for three weeks at Maharishi International University, Fairfield, Iowa, USA, who create the Global Maharishi Effect.</p>
                                                                        <p class="para"><span class="year">1984 Maharishi’s Year of Unified Field-Based Civilization:</span>Maharishi begins to establish the irreversibility of the Global Maharishi Effect by holding large World Peace Assemblies in different countries.</p>
                                                                        <p class="para"><span class="year">1985 Maharishi’s Year of Unified Field-Based Education:</span>Maharishi formulates a perfect system of Vedic Education based on consciousness. Maharishi creates Veda-Leela, the play of the Veda, which narrates and displays the mechanics of creation</p>
                                                                        <p class="para"><span class="year">1987 Maharishi’s Year of World Peace:</span>Maharishi presents to the world his Programme to Create World Peace through the mechanics of the Transcendental Meditation Sidhi Yogic Flying Programme.</p>
                                                                        <p class="para">Maharishi presents to the world Gandharva Veda music for creating balance in Nature.</p>
                                                       
                                                                        <br>
                                                                            <br>
                                                                                <center> <nav aria-label="Page navigation">
                                                                                        <ul class="pagination">
                                                                                            <li class="page-item">
                                                                                                <a class="page-link" href="#" aria-label="Previous">
                                                                                                    <span aria-hidden="true">&laquo;</span>
                                                                                                    <span class="sr-only">Previous</span>
                                                                                                </a>
                                                                                            </li>
                                                                                            <li class="page-item" ><a class="page-link" href="achievement1.wpm">1</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement2.wpm">2</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement3.wpm">3</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement4.wpm">4</a></li>
                                                                                            <li class="page-item active"><a class="page-link" href="achievement5.wpm">5</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement6.wpm">6</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement7.wpm">7</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement8.wpm">8</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement9.wpm">9</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement10.wpm">10</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement11.wpm">11</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement12.wpm">12</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement13.wpm">13</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement14.wpm">14</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement15.wpm">15</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement16.wpm">16</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement17.wpm">17</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement18.wpm">18</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement19.wpm">19</a></li>
                                                                                            <li class="page-item"><a class="page-link" href="achievement20.wpm">20</a></li>
                                                                                            <li class="page-item">
                                                                                                <a class="page-link" href="#" aria-label="Next">
                                                                                                    <span aria-hidden="true">&raquo;</span>
                                                                                                    <span class="sr-only">Next</span>
                                                                                                </a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </nav></center>
                                                                                <br/>
                                                                                <br/>

                                                                                <table width="87%" height="42" border="0" align="center" cellpadding="1" cellspacing="2">
                                                                                    <tr>
                                                                                        <td width="51%" height="38" bgcolor="#CDAA54"><div align="center"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color:#990099; font-weight: bold;"><a href="maharishiAchievements.wpm"><u>MAHARISHI ACHIEVEMENTS 1957-2008</u></a></span></div></td>
                                                                                        <td width="51%" height="38" bgcolor="#D8BC79"><div align="center"><span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color:#990099; font-weight: bold;"><a href="maharishiWorld.wpm"><u>MAHARISHI IN THE WORLD TODAY</u> </a></span></div></td>
                                                                                    </tr>
                                                                                </table>
                                                                                <br>
                                                                                    <br>
                                                                                        <br/>
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