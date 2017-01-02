<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8"%>
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
                    <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
                    <%@include  file="../common/design_lib.jsp" %>
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
                        <!-- Top Header Menu End -->
                        <div id="main" class="site-main">
                            <div id="primary" class="content-area">
                                <div id="content" class="site-content" role="main">
                                    <div class="container">
                                        <div class="row">
                                            <div class="con-box">
                                                <div class="col-lg-12">
                                                    <!-- Left Bar Start -->
                                                    <div class="PT10">
                                                        <div class="col-lg-3 col-md-3 col-sm-3">
                                                            <div class="leftside" style="background-color:#FFF;padding-left:20px;">
                                                                <%@include  file="../common/left_menu.jsp" %>
                                                            </div>
                                                        </div>
                                                        <!-- Left Bar End -->
                                                        <!-- Body Content Start -->
                                                        <div class="col-lg-9 col-md-9 col-sm-9" style="margin-bottom:10px;">
                                                            <div class="row">
                                                                <h4 class="hdng" align="center">Participation Request Form</h4><br>
                                                                    <div class="col-lg-12" style="border:1px solid gold;padding-top:15px;padding-bottom:15px;">
                                                                        <form:form  action="saveParticipation.wpm" modelAttribute="command" class="form-horizontal" method="POST">


                                                                            <legend style="color:navy">Registration Details</legend>
                                                                            <div class="form-group"> 
                                                                                <label class="col-lg-2 control-label">First Name:</label>
                                                                                <div class="col-lg-3">
                                                                                    <form:input type="text" class="form-control" path="fName"   value="${command.fName}" required="true" />
                                                                                </div>

                                                                                <label class="col-lg-2 control-label">Last Name:</label>
                                                                                <div class="col-lg-3">
                                                                                    <form:input type="text" class="form-control" path="lName"  value="${command.lName}" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-lg-12"></div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-2 control-label" >Mobile No.</label>
                                                                                <div class="col-lg-3">          
                                                                                    <form:input type="text" class="form-control" path="phoneNumber" name="mobileNo" pattern="[0-9]{10}" maxlength="10"   value="${command.phoneNumber}" required="true" />
                                                                                </div>

                                                                                <label class="col-lg-2 control-label" style="padding-left:5px;">Email:</label>
                                                                                <div class="col-lg-3"> 
                                                                                    <form:input type="email" class="form-control" path="email"  value="${command.email}" required="true" />
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-lg-12"><hr/></div>
                                                                            <div class="form-group">
                                                                                <label class="col-lg-2 control-label">Date Of Birth:</label>
                                                                                <div class="col-lg-3">          
                                                                                    <form:input type="text" placeholder="dd/MM/yyyy" class="form-control" path="dob" required="true" />
                                                                                </div>

                                                                                <label class="col-lg-2 control-label">Gender:</label>
                                                                                <div class="col-lg-3 radio">
                                                                                    <label style="padding-right:5px;">
                                                                                        <form:radiobutton  path="gender" value="male" required="true" />Male
                                                                                    </label>
                                                                                    <label>
                                                                                        <form:radiobutton  path="gender" value="Female" required="true"/>Female
                                                                                    </label>
                                                                                </div>
                                                                            </div>  


                                                                            <div class="col-lg-12"><hr/></div>
                                                                            <div style="padding:10px;color:navy">Address Details</div>

                                                                            <div class="form-group">
                                                                                <label class="col-sm-2 control-label">Address Line</label>
                                                                                <div class="col-sm-10">
                                                                                    <form:input type="text" class="form-control" path="address" placeholder="Address Line"  />
                                                                                    <p class="help-block">Apartment, suite , unit, building, floor, etc.</p>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-sm-2 control-label">Country</label>
                                                                                <div class="col-sm-10">
                                                                                    <form:input type="text" class="form-control" path="country" placeholder="Country name " required="true" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label class="col-sm-2 control-label">State</label>
                                                                                <div class="col-sm-3">
                                                                                    <form:select path="state" class="form-control"  required="true">
                                                                                        <form:option value="" label="Select State"/>
                                                                                        <form:options items="${stateList}" itemValue="name" itemLabel="name" />
                                                                                    </form:select>
                                                                                </div>

                                                                                <label class="col-sm-2 control-label">City</label>
                                                                                <div class="col-sm-3">
                                                                                    <form:select path="city" class="form-control"  required="true">
                                                                                        <form:option value="" label="Select City"/>
                                                                                        <form:options items="${cityList}"/>
                                                                                    </form:select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-lg-12"><hr/></div>

                                                                            <div class="form-group">
                                                                                <label class="col-sm-2 control-label">Higher Qualification</label>
                                                                                <div class="col-sm-3">
                                                                                    <form:select path="qualification" class="form-control"  required="true">
                                                                                        <form:option value="" label="Select Class"/>
                                                                                        <form:option value="5" label="5th"/>
                                                                                        <form:option value="10" label="10th"/>
                                                                                        <form:option value="Graduation" label="Graduation"/>
                                                                                        <form:option value="Post Graduation" label="Post Graduation"/>
                                                                                        <form:option value="Other" label="Other"/>

                                                                                    </form:select>
                                                                                </div>
                                                                                <label class="col-sm-3 control-label">Subject</label>
                                                                                <div class="col-sm-2">
                                                                                    <form:input type="text" class="form-control" path="subject"  placeholder="subject" required="true" />
                                                                                </div>
                                                                            </div>


                                                                            <div class="col-lg-12"><hr/></div>
                                                                            <div class="form-group">
                                                                                <label class="col-sm-2 control-label">Occupation</label>
                                                                                <div class="col-sm-3">
                                                                                    <form:select path="occupation" class="form-control"  required="true">
                                                                                        <form:option value="" label="Select Occupation"/>
                                                                                        <form:option value="Student" label="Student"/>
                                                                                        <form:option value="Teacher/Professor" label="Teacher/Professor"/>
                                                                                        <form:option value="Doctor" label="Doctor"/>
                                                                                        <form:option value="Government Service" label="Government Service"/>
                                                                                        <form:option value="Businessman" label="Businessman"/>
                                                                                        <form:option value="Agriculture" label="Agriculture"/>
                                                                                        <form:option value="Other" label="Other"/>

                                                                                    </form:select>
                                                                                </div>
                                                                                <label class="col-sm-3 control-label">Category</label>
                                                                                <div class="col-sm-3">
                                                                                    <form:select path="category" class="form-control"  required="true">
                                                                                        <form:option value="" label="Select Category"/>
                                                                                        <form:option value="Post Graduation" label="Student Participation"/>
                                                                                        <form:option value="5" label="Adult Citizen Participation"/>
                                                                                        <form:option value="10" label="Senior Citizen Participation"/>
                                                                                        <form:option value="Graduation" label="Family Participation"/>
                                                                                        <form:option value="Post Graduation" label="Corporate Participation"/>
                                                                                    </form:select>
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-lg-12"><hr/></div>
                                                                            <div class="form-group"> 
                                                                                <label class="col-lg-2 control-label">DD/Check No.</label>
                                                                                <div class="col-lg-3">
                                                                                    <form:input type="text" class="form-control" path=""   value="" required="true" />
                                                                                </div>

                                                                                <label class="col-lg-2 control-label">Payment Date:</label>
                                                                                <div class="col-lg-3">
                                                                                    <form:input type="text" class="form-control" path=""  value="" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group"> 
                                                                                <label class="col-lg-2 control-label">Amount:</label>
                                                                                <div class="col-lg-3">
                                                                                    <form:input type="text" class="form-control" path=""   value="" required="true" />
                                                                                </div>

                                                                                <label class="col-lg-2 control-label">Bank Name:</label>
                                                                                <div class="col-lg-3">
                                                                                    <form:input type="text" class="form-control" path=""  value="" />
                                                                                </div>
                                                                            </div>


                                                                            <div class="col-lg-12"></div><br/><br/>

                                                                            <div class="form-group">
                                                                                <div class="col-sm-offset-2 col-sm-10">
                                                                                    <div class="pull-right">
                                                                                        <input type="submit" class="btn btn-primary" value="Apply For Membership"/>
                                                                                        <input type="reset" class="btn btn-default" value="Cancel" />
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </form:form>
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
                        <!-- Footer End --> 


                        <!-- If Monitor Screen Auto Side then Responsive Menu auto Load -->


                        <%@include  file="../common/responsive_menu.jsp" %>

                        <!-- Body End -->

                    </body>
                    </html>
