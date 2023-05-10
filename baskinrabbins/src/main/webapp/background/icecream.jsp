<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<%
		//프로젝트 경로 구하기
		String path=request.getContextPath();
	%>
	
<body>
	<jsp:include page="/layout/header.jsp"/>
	<jsp:include page="/layout/menu.jsp"/>
	
	<img class="banner" src="<%=path %>/image/icecream-banner.png" width="100%">
	
</body>
</html>