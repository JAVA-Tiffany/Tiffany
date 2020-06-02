<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${param.id} ${param.pw} ${param.name} ${param.add} ${param.phon}
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- 한글처리 -->
	<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="Database.DAO"/>
	<c:set var="testDto" value="${dao.insert(param.id,param.pw,param.name,param.add,param.phon)}"/>
	<script type="text/javascript">
		location.href="lonin.jsp"
	</script>
</body>
</html>