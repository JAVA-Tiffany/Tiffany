<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.Myshop {
	padding-top: 100px;
	padding-bottom: 100px;
}
.titleArea h2 {
    display: inline-block;
    color: #2e2e2e;
    font: 400 14px 'Poppins',sans-serif;
    letter-spacing: 1.9px;
    padding: 6px 25px;
    border-left: 0;
    border-right: 0;
    border-bottom: 1px solid #c8c8c8;
    border-top: 1px solid #c8c8c8;
}
.titleArea {
    min-height: 30px;
    margin: 10px 0 20px;
    text-align: center;
}
ul {
	display:block;
	list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
li { 
list-style: none;
}
.title {
    float: left;
    width: 35%;
    padding: 0 0 0 10px;
    font-weight: normal;
 	position: relative;
  	left: 15%;
  	font: 400 14px 'Poppins',sans-serif;
}
.title1 {
	padding: 11px 21px;
    margin: 0;
    background: #f6f6f6;
}
.shop {
    content: "";
    display: block;
    clear: both;
    padding-top: 20px;
    padding-bottom: 80px;
    border: 2px solid #e8e8e8;
    
}
.Myshop0 {
	margin: 20px 0 0;
    border: 0px solid #777;
    border-bottom: 1px solid #e9e9e9;
    border-top: 1px solid #e9e9e9;
}
.Myshop0 {
	padding: 11px 21px;
	padding-left:40%;
    margin: 0;
    border-bottom: 1px solid #e9e9e9;
    background: #f6f6f6;
  	font: 400 14px 'Poppins',sans-serif;
}
.state {
	overflow: hidden;
    padding: 19px 0;
	border-bottom: 1px solid #e9e9e9;

}
.state li {
   float: left;
   width: 25%;
   height: 100px;
   padding: 0 0 4px;
   margin: 0 -1px 0 0;
   border-right: 1px dotted #c9c7ca;
   border-bottom: 1px dotted #c9c7ca;
   text-align: center;
   
}
.state .order {
	float: left;
    width: 80%;
    line-height: 50px;
    
}
.state .cs {
	float: right;
    width: 20%;
    position: relative;
    left: 40px;
    bottom: 135.5px;
}
.cs {
line-height: 100px;
vertical-align: middle;

}

</style>
</head>
<body>
<%@include file="../default/header.jsp"%>
<div class="Myshop">
<div class="titleArea">
    <h2>MY SHOPPING</h2>
</div>
<div class="shop">
<ul>
	<li><strong class="title">총 W포인트</strong></li>

    <li><strong class="title">총주문</strong></li>
    
    <li><strong class="title">사용가능 W포인</strong></li>
    
    <li><strong class="title">예치금</strong></li>
    
    <li><strong class="title">사용된 W포인트</strong></li>
    
    <li><strong class="title">쿠폰</strong></li> 
</ul>
</div>
<br><br>
<div class="Myshop0">
<div class="title1">
        <h3>나의 주문처리 현황 <span class="desc">(최근 <em>3개월</em> 기준)</span></h3>
    </div>
</div>
<div class="state">
	<ul class="order">
		<li><strong>입금전</strong><br>0</li>
		
		<li><strong>배송준비중</strong><br>0</li>
		
		<li><strong>배송중</strong><Br>0</li>
		
		<li><strong>배송완료</strong><br>0</li>
	</ul>
	<ul class="cs">
		<li><span><strong>취소 : 0</strong></span></li>
		
		<li><span><strong>교환 : 0</strong></span></li>
		
		<li><span><strong>반품 : 0</strong></span></li>
	</ul>
</div>
</div>

<%@include file="../default/footer.jsp"%>
</body>
</html>