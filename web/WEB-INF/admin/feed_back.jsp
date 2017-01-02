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
                                <%@include  file="../common/mgmtMeun.jsp" %>
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
                                                        <div class="col-lg-4 col-md-4 col-sm-4">
                                                            <div class="leftside" style="background-color:#FFF;">

                                                                <div class="col-lg-8">
                                                                    <%@include  file="../common/left_menu.jsp" %>
                                                                </div>
                                                                <div class="col-lg-4"></div>

                                                            </div>
                                                        </div>

                                                        <!-- Left Bar End -->

                                                        <!-- Body Content Start -->

                                                        <div class="col-lg-7">
                                                            <div class="row" >

                                                                <p style="padding-top:20px;text-align: center; font-weight: bold; color: #cc6600; font-size: 25px">Comments And FeedBack</p>
                                                                <hr>
                                                                    <div class="table-responsive">
                                                                        <table border="2" class="table table-bordered table-hover">
                                                                            <thead style="background-color:#ff6666">
                                                                                <tr>
                                                                                    <th>S.N.</th>
                                                                                    <th>First Name</th>
                                                                                    <th>Last Name</th>
                                                                                    <th>Email</th>
                                                                                    <th>Organizations Name</th> 
                                                                                    <th>Country Name</th>
                                                                                    <th>City</th>
                                                                                    <th>Message</th>
                                                                                    <th>Delete</th>
                                                                                </tr>
                                                                            </thead>                                    
                                                                            <tbody>
                                                                                <c:if test="${empty contactList}">
                                                                                    <tr>
                                                                                        <td style="text-align: center" colspan="6">
                                                                                            <span>No record found</span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </c:if>
                                                                                <c:set var="count" value="1"/>
                                                                                <c:forEach items="${contactList}" var="cList">

                                                                                    <c:if test="${count%2 ==1}">                
                                                                                        <tr class="success">
                                                                                            <td>${count}</td>
                                                                                            <td>${cList.fName}</td> 
                                                                                            <td>${cList.lName}</td> 
                                                                                            <td>${cList.email}</td>
                                                                                            <td>${cList.orgName}</td> 
                                                                                            <td>${cList.country}</td>                                                      
                                                                                            <td>${cList.city}</td>
                                                                                            <td>${cList.message}</td> 
                                                                                            <td><a href="javascript:deleteContact(${cList.contactId})"><img height="30" width="30" title="Delete Contact" src="images/delete.png"/></a>  
                                                                                            </td>
                                                                                        </tr>
                                                                                    </c:if>
                                                                                    <c:if test="${count%2 ==0}"> 
                                                                                        <tr class="danger">
                                                                                            <td>${count}</td>
                                                                                            <td>${cList.fName}</td> 
                                                                                            <td>${cList.fName}</td> 
                                                                                            <td>${cList.email}</td>
                                                                                            <td>${cList.orgName}</td> 
                                                                                            <td>${cList.country}</td>                                                      
                                                                                            <td>${cList.city}</td>
                                                                                            <td>${cList.message}</td> 
                                                                                            <td><a href="javascript:deleteContact(${cList.contactId})"><img height="30" width="30" title="Delete Contact" src="images/delete.png"/></a>  
                                                                                            </td>
                                                                                        </tr>
                                                                                    </c:if>
                                                                                    <c:set var="count" value="${count+1}"/>
                                                                                </c:forEach>
                                                                            </tbody>
                                                                        </table>
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