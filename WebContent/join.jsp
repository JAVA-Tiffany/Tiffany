<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.i {
	height: 40px;
	width: 500px;
}
</style>

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
				}else{
					document.getElementById("pw1").innerHTML = "비밀번호 영어 또는 특수문자를 넣어 주세요"
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
				alert("아이디 칸이 비어있습니다.")
			} else {
				alert("회원가입")
				user.submit()
			}
		}
	</script>
<!-- 	회원가입 -->
	<div align="center">
		<h2>Self Design 계정 만들기</h2><br>
		<form action="insert.jsp" name="user">
			<input type="text" id="id" placeholder="아이디" class=i name="id">
			<input type="button" onclick="ch()" value="중복확인" style="height: 40px; width: 80px; margin-left: 10px;"><br><br><br> 
			<input type="text" id="pw" placeholder="비밀번호" class=i style="margin-right: 95px;" onchange="pwlengthch()" name="pw"><br>
			<label style="margin-right: 95px;" id="pw1">비밀번호 사용 가능</label><br><br> 
			<input type="text" id="pwc" placeholder="비밀번호 확인" class=i style="margin-right: 95px;" onchange="pwch()"><br> 
			<label style="margin-right: 95px;" id="pwc2">비밀번호 사용 가능</label><br><br>
			<input type="text" id="name" placeholder="이름" class=i style="margin-right: 95px;" name="name"><br> <br> <br> 
			<input type="text" id="add" placeholder="주소" class=i style="margin-right: 95px;" name="add"><br> <br> <br>
			<input type="text" id="phon" placeholder="핸드폰번호 xxx-xxxx-xxxx" class=i style="margin-right: 95px;" name="phon"><br> <br>
			<label style="color: red; font-size: 25px;">모든 정보를 적어야 합니다</label><br><br>
			<input type="button" onclick="al()" value="회원가입">
		</form>
	</div>
</body>
</html>