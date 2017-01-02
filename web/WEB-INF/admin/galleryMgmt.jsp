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
                            $("galleryMgmtForm").validate();
                        });
                        function deleteGallery(imageId) {
                            var act = confirm("Ready to delete this Gallery Image ?");
                            if (act == true) {
                                //proceed for delete...
                                window.location = 'deleteGallery.wpm?imageId=' + imageId;
                            }
                        }
                        function editGallery(imageId) {
                            var act = confirm("Ready to edit this Recent Gallery Image ?");
                            if (act == true) {
                                //proceed for delete...
                                window.location = 'editGallery.wpm?imageId=' + imageId;
                            }
                        }

                    </script>


                    <script type="text/javascript" language="javascript">
                        $('#addPhoto').click(function ()
                        {
                            $('#uploadImage1').click();
                        });
                        function readURL(input) {
                            if (input.files && input.files[0]) {
                                var reader = new FileReader();

                                var type = input.files[0].type.split('/');
                                if (type[1] != "jpeg") {
                                    alert("Only jpeg Image can be uploaded");
                                    $('input[type=file]').val('');
                                } else if (input.files[0].size > 512000) {
                                    alert('Image should be less than 500 kb ');
                                    $('#uploadImage1').val('');
                                } else {
                                    reader.onload = function (e) {
                                        $('#image').attr('src', e.target.result);
                                    }

                                    reader.readAsDataURL(input.files[0]);
                                }
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
                                                    <!--  <div class="row">
                                                    <%@include  file="../common/slider.jsp" %>
                                                    <%@include  file="../common/upcoming_event.jsp" %>
                                                </div>-->
                                                    <!-- Gallery news  End -->

                                                    <!-- Left Bar Start -->

                                                    <div class="PT10">
                                                        <div class="col-lg-2">
                                                            <div class="leftside" style="background-color:#FFF;">
                                                                <!--                                                                <h5><img src="images/left-side.png" class="img-responsive img"></h5>-->

                                                                <div class="col-lg-2"></div>
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

                                                        <div class="col-lg-8">
                                                            <div class="row" >
                                                                <div class="col-lg-12">
                                                                    <p style="padding-top:20px;text-align: center; font-weight: bold; color: #cc6600; font-size: 25px">Gallery Management</p>
                                                                    <div class="row" style="background-color: #009999;border-radius:15px; padding-top: 15px;">
                                                                        <center><form:form action="saveGallery.wpm" method="post" enctype="multipart/form-data" id="galleryMgmtForm" commandName="command" name="galleryMgmtForm">
                                                                                <div class=" col-lg-6 form-group">
                                                                                    <form:hidden path="imageId"/>
                                                                                    <input type="file" class="form-control" name="uploadFile" id="uploadImage1" accept="image/jpeg" onchange="readURL(this);"/>
                                                                                </div>
                                                                                <div class="col-lg-6 form-group">
                                                                                    <span class="dir_red" style="font-size: 16px">*Image must be in jpg/jpeg format AND dimension (1000 * 665) AND size not more then 500 KB.

                                                                                    </span></div>

                                                                                <div class="col-lg-6 form-group">                                         
                                                                                    <form:textarea rows="5" cols="50" class="form-control" path="imageTittle" placeholder="Image Title" ></form:textarea>
                                                                                    </div>
                                                                                    <div class="col-lg-1 form-group">                                         
                                                                                    <form:checkbox class="form-control" path="status" placeholder="Status"  name="Status"></form:checkbox>
                                                                                    </div>
                                                                                    <div class="col-lg-5 form-group">
                                                                                        <span class="dir_red" style="font-size: 16px">Select Box For Showing First Image.
                                                                                        </span></div>
                                                                                    <div class="col-lg-6 form-group">                                         
                                                                                    <form:select class="form-control" path="categoryId.categoryId" id="cetegoryId" name="categoryName" placeholder="Category" >
                                                                                        <form:option value="">Category name</form:option>
                                                                                        <c:forEach items="${categoryList}" var="rList">
                                                                                            <form:option value="${rList.categoryId}">${rList.categoryName}</form:option>  
                                                                                        </c:forEach>
                                                                                    </form:select>
                                                                                </div>
                                                                                <div class="col-lg-6 form-group" style="text-align: right">                                       
                                                                                    <button type="submit" class="btn btn-default">Upload</button>
                                                                                    <button type="button" class="btn btn-default" onclick="history.back()">Cancel</button>
                                                                                </div>

                                                                            </form:form></center></div><br/>
                                                                    <div class="row" style="border-radius:10px; padding-top: 10px;">
                                                                           
                                                                        <div class="table-responsive" style="height:400px; overflow: scroll">
                                                                            <table border="2" class="table table-bordered table-hover">
                                                                                <thead style="background-color: #ff6666">
                                                                                    <tr>
                                                                                        <th style="text-align: center">S.N.</th>
                                                                                        <th style="text-align: center">Image Name</th>
                                                                                        <th style="text-align: center">Image tittle</th>
                                                                                        <th style="text-align: center">Category</th>
                                                                                        <th style="text-align: center">Status</th>
                                                                                        <th style="text-align: center">Image </th>
                                                                                        <th style="text-align: center">Action</th>

                                                                                    </tr>
                                                                                </thead>                                    
                                                                                <tbody>
                                                                                    <c:if test="${empty photoGalleryList}">
                                                                                        <tr>
                                                                                            <td style="text-align: center" colspan="7">
                                                                                                <span>No record found</span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </c:if>
                                                                                    <c:set var="count" value="1"/>
                                                                                 
                                                                                    <c:forEach items="${photoGalleryList}" var="rList">

                                                                                        <c:if test="${count%2 ==1}">                
                                                                                            <tr class="success">
                                                                                                <td>${count}</td>
                                                                                                <td>${rList.imageName}</td>
                                                                                                <td>${rList.imageTittle}</td>
                                                                                                <td>${rList.categoryId.categoryName}</td>
                                                                                                <td>${rList.status}</td>
                                                                                                <td><c:if test="${rList.imageName != null && rList.imageName != Null && rList.imageName != ''}">
                                                                                                        <img src="upload/${rList.imageName}" height="100px" width="150px"/> 
                                                                                                    </c:if></td>

                                                                                                <td><a href="javascript:editGallery(${rList.imageId})"><img height="50" width="50" title="Edit this Home Image" src="images/edit.png"/></a>&nbsp;&nbsp;<a href="javascript:deleteGallery(${rList.imageId})"><img height="30" width="30" title="Delete this Home Image" src="images/delete.png"/></a>  
                                                                                                </td>
                                                                                            </tr>
                                                                                        </c:if>
                                                                                        <c:if test="${count%2 ==0}"> 
                                                                                            <tr class="danger">
                                                                                                <td>${count}</td>
                                                                                                <td>${rList.imageName}</td>
                                                                                                <td>${rList.imageTittle}</td>
                                                                                                <td>${rList.categoryId.categoryName}</td>
                                                                                                <td>${rList.status}</td>
                                                                                                <td><c:if test="${rList.imageName != null && rList.imageName != Null && rList.imageName != ''}">
                                                                                                        <img src="upload/${rList.imageName}" height="100px" width="150px"/> 
                                                                                                    </c:if></td>

                                                                                                <td><a href="javascript:editGallery(${rList.imageId})"><img height="50" width="50" title="Edit this Home Image" src="images/edit.png"/></a>&nbsp;&nbsp;<a href="javascript:deleteGallery(${rList.imageId})"><img height="30" width="30" title="Delete this Home Image" src="images/delete.png"/></a>  
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


                        <!-- If Monitor Screen Auto Side then Responsive Menu auto Load -->

                        <script type='text/javascript'>
                            var colomatduration = 'fast';
                            var colomatslideEffect = 'slideFade';
                        </script>
                        <%@include  file="../common/responsive_menu.jsp" %>

                        <!-- Body End -->

                    </body>
                    </html>