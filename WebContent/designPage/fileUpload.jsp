<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<% String path = application.getRealPath("fileUpDown"); %>
	fileUpDonw 실제 경로 : <%=path %> 
	<c:set var="realPath" value="<%=path %>"/>
	<c:set var="req" value="<%=request %>"/>
	<jsp:useBean id="file" class="file.FileUpload"/>
	<c:set var="files" value="${file.fileUpload(realPath,req) }"/>

	DefaultFileRenamePolicy()
	동일한 이름의 파일이 존재 한다면 1,2,3,,,넣어준다<hr>
	file(저장될 파일 이름 ) : ${files[0] }<br>
	oriFile( 실제 파일 이름 ) : ${files[1] }<br>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- 한글처리 -->
	<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="file.FileDAO"/>
	<c:set var="testDto" value="${dao.insert(files[1])}"/>
</body>
</html>
