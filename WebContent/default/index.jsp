<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
   .font{ font-family: Yu Gothic;}
   .img1 { display: inline; }
   .img2 {  }
</style>
<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<body>
<%-- <jsp:include page="header.jsp"/> --%>
<%@include file="header.jsp" %>

<div  style=" width: 600px; text-align: center; padding-top: 120px; ">
<font class="font" style=" color: #3a5080;" size="7"><b>My own little things</b></font><br>
<font class="font" style=" color: #3a5080;" size="7"> [ drawing jewelry ]</font><br>
<!-- <font style="font-family: Yu Gothic;" size="3"> </font><br> -->
</div>

<!-- <font class="font" size="7">나만의 상품</font> -->

<div class="img1">
<img src="../img/2.jpg" style=" padding-left: 500px;padding-top:50px; width: 600px; ">
<img src="../img/5.png" style=" padding-top:50px; width: 500px; height: 800px;  "></div>
<!-- <div> -->
<!--    <div style= "width: 70%; height: 300px; " align="center"> -->
<!--       <div style=" -->
<!--          width: 1200px; height: 500px;  -->
<!--          background:  url(../img/04.jpg) -->
<!--          no-repeat 0;  -->
<!--          background-position:center top; -->
<!--          background-attachment: fixed; -->
<!--          vertical-align: middle; -->
<!--          text-align: center; -->
         
<!--       "></div> -->
<!--    </div> -->
<!-- </div> -->

<div class="img2">
<img src="../img/04.jpg" style="padding-left: 100px; padding-top:50px; width: 500px;">
<img src="../img/3.jpg" style="padding-left: 500px; width: 400px;" ></div>

<!-- 가방  -->
<div class="img3">
<img src="../img/10.JPG" style=" padding-left: 500px;padding-top:50px; width: 600px; ">
<img src="../img/11.png" style=" padding-top:50px; width: 500px; height: 800px;  "></div>

<div class="img4">
<img src="../img/6.png" style="padding-left: 100px; padding-top:50px; width: 500px;">
<img src="../img/12.png" style="padding-left: 500px; width: 400px;" ></div>

<!-- 의류 -->

<div class="img5">
<img src="../img/15.png" style=" padding-left: 500px;padding-top:50px; width: 500px; ">
<img src="../img/16.png" style="  "></div>

<div class="img6">
<img src="../img/13.png" style="padding-left: 100px; padding-top:50px; width: 500px;">
<img src="../img/14.png" style="padding-left: 500px; width: 400px;" ></div>

<%@include file="footer.jsp" %>


</body>
</html>