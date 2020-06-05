
<%@page import="Database.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="../image/png" href="../images/icons/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<script type="text/javascript" src="/Tiffany/vendor/jquery/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- 한글처리 -->
	<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="Database.DAO"/>
	

	<c:forEach var="dto" items="${dao.select()}">
		<script type="text/javascript">
			var arr =[]
			c=0
			arr[c]=${dto.id}
 			c++ 
 		</script>
	</c:forEach>
	<script type="text/javascript">
		function ch() {
			if (document.getElementById("id").value == "") {
				alert("아이디 칸이 비어있습니다.")
			} else {
				for(i=0;i<arr.length;i++){
					if(document.getElementById("id").value==arr[i]){
						alert("사용 불가")
					}else if(arr.length-1==i){
						alert("사용 가능")
					}
				}
			}
		}
		function pwlengthch() {
			var r = 0
			var r1 = 0
			if (document.getElementById("pw").value.length < 8) {
				document.getElementById("pw1").innerHTML = "비밀번호는 8자리 이상입니다."
			} else {
				cut = document.getElementById("pw").value.split("")
				for (i = 0; i < cut.length; i++) {
					if (('A' <= cut[i] && cut[i] <= 'Z') || ('a' <= cut[i] && cut[i] <= 'z')) {
						r = 1
					}
					if (('!' <= cut[i] && cut[i] <= '/') || (':' <= cut[i] && cut[i] <= '@')
							|| ('[' <= cut[i] && cut[i] <= '\'') || ('{' <= cut[i] && cut[i] <= '~')) {
						r1 = 1
					}
				}
				if (r == 1 && r1 == 1) {
					document.getElementById("pw1").innerHTML = "비밀번호 사용 가능합니다."
					document.getElementById("pw1").style.color = "black"
				}else if(r ==0 && r1 ==0){
					document.getElementById("pw1").innerHTML = ""
				}else{
					document.getElementById("pw1").innerHTML = "영어 또는 특수문자를 넣어 주세요"
					document.getElementById("pw1").style.color = "red"
				}
			}
		}
	
		function pwch() {
			if (document.getElementById("pw").value != document.getElementById("pwc").value) {
				alert("비밀번호가 맞지 않습니다.")
			}
		}
		
		function al() {
			if (document.getElementById("id").value == "" || document.getElementById("pw").value == ""
					||document.getElementById("pwc").value == "" || document.getElementById("name").value == "" ||
					document.getElementById("add").value == "" || document.getElementById("phon").value == "") {
				alert("비어있는 칸이 존재합니다.")
			} else {
				alert("회원가입이 정상적으로 완료되었습니다!")
				user.submit()
				opener.parent.location.reload();
			}
		}
	</script>
<!-- 	회원가입 -->

<div class="limiter">
		<div class="container-login100" align="center">
			<div class="wrap-login100" align="center">
			<div class="login100-pic js-tilt" data-tilt>
				<img src="../images/80678738_2416624028588147_5452304186879982403_n.jpg" alt="IMG" style="padding:65px 0 0 0">
			</div>
				<div align="center">
					<h2>Self Design 계정 만들기</h2><br>
					<form action="insert.jsp" name="user" style="align:center;">
		
					<div class="wrap-input100 validate-input" align="center">
						<input type="text" id="id" placeholder="아이디" class=input100 name="id">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"  style="text-align:right;"></i>
						</span>
					</div>
					
						
						
					<div class="wrap-input100 validate-input">
						<input type="text" id="pw" placeholder="비밀번호" class="input100" onchange="pwlengthch()" name="pw">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input">
						<input type="text" id="pwc" placeholder="비밀번호 확인" class="input100"  onchange="pwch()">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input">
						<input type="text" id="name" placeholder="이름" class="input100" name="name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input">
						<input type="text" id="add" placeholder="주소" class="input100" name="add">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input">
						<input type="text" id="phon" placeholder="핸드폰번호 xxx-xxxx-xxxx" class="input100" name="phon">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn">
				<input type="button" class="login100-form-btn" onclick="al()" value="회원가입">
			</div>
			
			<label style="margin-right: 95px;" id="pw1"></label><br>
			<label style="margin-right: 95px;" id="pwc2"></label><br>
			
			
			
		</form>
	</div>
		
	</div>
	</div>
	</div>
	
	<script src="/Tiffany/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="/Tiffany/vendor/bootstrap/js/popper.js"></script>
	<script src="/Tiffany/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/Tiffany/vendor/select2/select2.min.js"></script>
	<script src="/Tiffany/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<script src="../js/main.js"></script>

</body>
</html>