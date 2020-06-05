<%@page import="file.makePngFile"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String imgurl = request.getParameter("cc");
		String savename = "test2";
		makePngFile makePngFile = new makePngFile(imgurl,savename);
	%>
</body>
</html>