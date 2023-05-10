<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="style.css" rel="stylesheet" type="text/css">
</head>

<%
	//프로젝트 경로 구하기
	String path=request.getContextPath();
%>

<body>
	<img alt="" src="<%=path %>/image/icecreamsize.png" width="100%">
</body>

<style>
	body
	{
		width: 100%;
		height: 1200px;
		text-align: center;
	}
</style>

</html>