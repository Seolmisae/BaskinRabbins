
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
</head>

<%
	String path=request.getContextPath();
	String body="layout/body.jsp";
	
	if(request.getParameter("body")!=null)
		body=request.getParameter("body");
%>

<body>
	<!-- title -->
	<div class=header-container>
		<jsp:include page="/layout/header.jsp"/>
	</div>
	
	<!-- nav -->
	<div class="nav-container">
		<jsp:include page="/layout/menu.jsp"/>
	</div>
	
	<!-- 메인페이지 -->
	<div class="body-container">
		<jsp:include page="<%=body %>"/>
	</div>
	
	<!-- bottom -->
	<div class="bottom-container">
		<jsp:include page="/layout/bottom.jsp"/>
	</div>
</body>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
	
	body
	{
		font-family: 'Do Hyeon', sans-serif;
	}
	



</style>

</html>