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
	<div class=container>
		<a href="<%=path %>/index.jsp"></a>
		<img onclick="javascript:location.href='<%=path %>/index.jsp';" src="<%=path %>/image/logo.png" 
		width= 50%; style="cursor:pointer;">
	</div>
</body>

<style>
	.container
	{
		margin: 0;
		padding: 0;
		width: 100%;
		text-align: center;
	}
</style>
</html>