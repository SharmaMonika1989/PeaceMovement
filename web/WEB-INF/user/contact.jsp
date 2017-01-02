
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
                                                            <div class="row" >
                                                                <p style="padding-top:20px;text-align: center; font-weight: bold; color: #cc6600; font-size: 25px">Contact US</p>
                                                                <hr> 
                                                                    <div class="row">                                
                                                                        <div class="col-lg-5">
                                                                            <div class="col-lg-12" style="padding-bottom:20px">
                                                                                <center>                                       
                                                                                    <p class="para">MCEE Campus,Lambakheda,Berasia Road,</p>
                                                                                    <p class="para">Bhopal (M.P.) - 462018 INDIA</p>
                                                                                    <p class="para"><span style="color: #cc6600;">Phone:</span> +91-755-2736636</p>
                                                                                    <p class="para"><span style="color: #cc6600;">Fax:</span> +91-755-2736637</p>
                                                                                    <p class="para"><span style="color: #cc6600;">Website:</span>www.peace-movement.net</p>     
                                                                                    <p class="para"><span style="color: #cc6600;">Email:</span> peace@mahaemail.com</p>
                                                                                </center>
                                                                            </div>                               
                                                                        </div>
                                                                        <div class="col-lg-6">
                                                                            <div class="row">
                                                                                <form:form action="saveContact.wpm" method="post" enctype="multipart/form-data" id="contactForm" commandName="command" name="contactForm">
                                                                                    <div class="col-lg-6 form-group"> 
                                                                                        <form:hidden path="contactId"/>
                                                                                        <form:input type="text" class="form-control" path="fName" placeholder="First Name" required="true"/>

                                                                                    </div>
                                                                                    <div class="col-lg-6 form-group">                                       
                                                                                        <form:input type="text" class="form-control" path="lName" placeholder="Last Name" required="true" />
                                                                                    </div>
                                                                                    <div class="col-lg-6 form-group">                                        
                                                                                        <form:input type="email" class="form-control" path="email" placeholder="Email Address" required="true"/>
                                                                                    </div>
                                                                                    <div class="col-lg-6 form-group"> 
                                                                                        <form:input type="text" class="form-control" path="orgName" placeholder="Name of Organization" required="true" />
                                                                                    </div>
                                                                                    <div class="col-lg-6 form-group"> 
                                                                                        <form:input type="text" class="form-control" path="country" placeholder="Country" required="true"/>

                                                                                    </div>
                                                                                    <div class="col-lg-6 form-group"> 
                                                                                        <form:input type="text" class="form-control" path="city" placeholder="City" required="true"/>

                                                                                    </div>
                                                                                    <div class="col-lg-12 form-group"> 
                                                                                        <form:textarea rows="5" cols="50" class="form-control" path="message" placeholder="Your Message" required="true"/>
                                                                                    </div>
                                                                                    <div class="col-lg-12 form-group" style="text-align: right">                                       
                                                                                        <button type="submit" class="btn btn-default">Submit</button>
                                                                                    </div>

                                                                                </form:form>
                                                                            </div>
                                                                        </div>
                                                                    </div>  
                                                                    <hr>
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