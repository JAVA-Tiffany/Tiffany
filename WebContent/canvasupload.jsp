
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		Date da = new Date();
		SimpleDateFormat fomat = new SimpleDateFormat("yyyyMMddHHmmss");
		request.setCharacterEncoding("utf-8");
		String imgurl = request.getParameter("cc");
		String savename = fomat.format(da);

		makePngFile makePngFile = new makePngFile(imgurl,savename);
	%>
</body>
</html>