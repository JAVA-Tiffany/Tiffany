<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>content_view.jsp<br>
<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="board.BoardDAO"/>
	<c:set var="dto" value="${dao.contentView(param.id)}"/>
	
<div align="center">
	<form action="modify.jsp" method="post">
		<input type="hidden" name="id" value="${dto.id }">
		<table border="1">
			<tr>
				<td>번호</td><td>${dto.id }</td>
			</tr>
			<tr>
				<td>조회수</td><td>${dto.hit }</td>
			</tr>
			
			<tr> 
				<td>이름</td> 
				<td><input value="${dto.name }" type="text" name="name" size="50"></td> 
			</tr>
			<tr> 
				<td>제목</td> 
				<td><input value="${dto.title }" type="text" name="title" size="50"></td> 
			</tr>
			<tr> 
				<td>내용</td> 
				<td><textarea name="content" rows="10" cols="50">${dto.content }</textarea></td> 
			</tr>
			<tr> 
				<td colspan="2">
				<input type="submit" value="수정" >&nbsp; &nbsp;
				<a href="list.jsp">목록보기</a>&nbsp; &nbsp;
				<a href="delete.jsp?id=${dto.id}">삭제</a>&nbsp; &nbsp;
				<a href="reply_view.jsp?id=${dto.id}">답변</a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>