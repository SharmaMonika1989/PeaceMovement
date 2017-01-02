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
                        $(document).ready(function () {
                            var msg = '${param.msg}';
                            if (msg != '') {
                                alert(msg);
                            }
                            $("catgoryMgmtForm").validate();
                        });
                        function deleteCategory(categoryId) {
                            var act = confirm("Ready to delete this Category ?");
                            if (act == true) {
                                //proceed for delete...
                                window.location = 'deleteCategory.wpm?categoryId=' + categoryId;
                            }
                        }
                        function editCategory(categoryId) {
                            var act = confirm("Ready to edit this category name ?");
                            if (act == true) {
                                //proceed for delete...
                                window.location = 'editCategory.wpm?categoryId=' + categoryId;
                            }
                        }
                    </script>

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
                                                        <div class="col-lg-2">
                                                            <div class="leftside" style="background-color:#FFF;">


                                                                <div class="col-lg-2"></div>

                                                            </div>
                                                        </div>

                                                        <!-- Left Bar End -->

                                                        <!-- Body Content Start -->

                                                        <div class="col-lg-8">
                                                            <div class="row" >
                                                                <div class="col-lg-12">
                                                                    <p style="padding-top:20px;text-align: center; font-weight: bold; color: #cc6600; font-size: 25px">Category Management</p><br/><br/>
                                                                    <div class="row" style="background-color: #009999;border-radius:10px; padding-top: 10px;">
                                                                        <center><form:form action="saveCategory.wpm" method="post"  id="categoryMgmtForm" commandName="command" name="categoryMgmtForm">

                                                                                <div class="col-lg-6 form-group"> 
                                                                                    <form:hidden path="categoryId"/>
                                                                                    <form:input class="form-control" path="categoryName" placeholder="Category Name" required="true"></form:input>
                                                                                    </div>

                                                                                    <div class="col-lg-6 form-group" style="text-align: right">                                       
                                                                                        <button type="submit" class="btn btn-default">Upload</button>
                                                                                        <button type="button" class="btn btn-default" onclick="history.back()">Cancel</button>
                                                                                    </div>

                                                                            </form:form></center></div><br/>
                                                                    <div class="row" style="border-radius:10px; padding-top: 10px;">
                                                                        <div class="table-responsive">
                                                                            <table border="2" class="table table-bordered table-hover">
                                                                                <thead style="background-color: #ff6666">
                                                                                    <tr>
                                                                                        <th style="text-align: center">S.N.</th>
                                                                                        <th style="text-align: center">Category Name</th>
                                                                                         <th style="text-align: center">Action</th>

                                                                                    </tr>
                                                                                </thead>                                    
                                                                                <tbody>
                                                                                    <c:if test="${empty categoryList}">
                                                                                        <tr>
                                                                                            <td style="text-align: center" colspan="4">
                                                                                                <span>No record found</span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </c:if>
                                                                                    <c:set var="count" value="1"/>
                                                                                    <c:forEach items="${categoryList}" var="rList">

                                                                                        <c:if test="${count%2 ==1}">                
                                                                                            <tr class="success">
                                                                                                <td style="text-align: center">${count}</td>
                                                                                                <td style="text-align: center">${rList.categoryName}</td>
                                                                                                 <td style="text-align: center"><a href="javascript:editCategory(${rList.categoryId})"><img height="50" width="50" title="Edit this Home Image" src="images/edit.png"/></a>&nbsp;&nbsp;<a href="javascript:deleteCategory(${rList.categoryId})"><img height="30" width="30" title="Delete this Home Image" src="images/delete.png"/></a>  
                                                                                                   </td>
                                                                                               
                                                                                            </tr>
                                                                                        </c:if>
                                                                                        <c:if test="${count%2 ==0}"> 
                                                                                            <tr class="danger">
                                                                                                <td style="text-align: center">${count}</td>
                                                                                                <td style="text-align: center">${rList.categoryName}</td>
                                                                                                 <td style="text-align: center"><a href="javascript:editCategory(${rList.categoryId})"><img height="50" width="50" title="Edit this Home Image" src="images/edit.png"/></a>&nbsp;&nbsp;<a href="javascript:deleteCategory(${rList.categoryId})"><img height="30" width="30" title="Delete this Home Image" src="images/delete.png"/></a>  
                                                                                                   </td>
                                                                                               
                                                                                            </tr>
                                                                                        </c:if>
                                                                                        <c:set var="count" value="${count+1}"/>
                                                                                    </c:forEach>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>

                                                                    </div>
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


                     

                    </body>
                    </html>