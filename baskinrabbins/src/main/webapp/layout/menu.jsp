<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="/css/css/hover.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
</head>

<%
	//프로젝트 경로 구하기
	String path=request.getContextPath();
%>

<body>

<%
		/* 로그인 세션  */
		String id = null;
		id = (String) session.getAttribute("id");
%>

	<ul id ="nav-container">
		<li class="login-container"><a href="<%=path %>/login/login.jsp">MEMBER</a>
			<ul>
			<%if(id==null){ %>
	 			<li><a href="<%=path %>/login/login.jsp">LOGIN</a></li>
	 			<li><a href="<%=path %>/login/join.jsp">JOIN</a></li> <%
 			} else { %> 
 				<li><a href="<%=path %>/login/LogoutAction.jsp">LOGOUT</a></li>
	 			<li><a href="<%=path %>/login/join.jsp">MYPAGE</a></li> <%
 			};
 			%>
	 		</ul>	 

	 	<li> <a href="#">MENU</a>
	 		<ul>
	 			<li><a href="<%=path %>/background/icecream.jsp">아이스크림</a></li>
	 			<li><a href="#">아이스크림케이크</a></li>
	 			<li><a href="#">음료</a></li>
	 			<li><a href="#">디저트</a></li>
	 		</ul>
	 	</li>
	 	<li> <a href="#">EVENT</a>
	 		 <ul>
	 			<li><a href="#">진행중이벤트</a></li>
	 			<li><a href="#">당첨자발표</a></li>
	 		</ul>
	 	</li>
	 	<li> <a href="#">STORE</a>
	 		 <ul>
	 			<li><a href="#">매장찾기</a></li>
	 			<li><a href="#">고객문의</a></li>
	 			<li><a href="#">단체주문</a></li>
	 		</ul>
	 	</li>
	 	<li> <a href="#">ABOUT</a>
	 		<ul>
	 			<li><a href="#">공지사항</a></li>
	 			<li><a href="#">보도자료</a></li>
	 			<li><a href="#">채용정보</a></li>
	 			<li><a href="#">점포개설문</a></li>
	 		</ul>
	 	</li>
	 </ul>
</body>

<style>

	@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
	
	#nav-container
	{
		list-style: none;
		margin: 0 auto;
		padding: 5px 1px;
		width: 80%;
		height: 40px;
		background: #fff;
		font-family: 'Do Hyeon', sans-serif;
		text-align: cencter;
	}
	
	#nav-container li
	{
		float: left;
		position: relative;
		margin: 5px 60px;
		display: inline-block;
	}
	
	#nav-container li a
	{
		dislplay: block;
		font-size: small;
		padding: 7px 8px;
		margin: 0;
		text-decoration: none;
		color: #000;
	}
	
	#nav-container li:hover > a
	{
		color: black;
		margin: 0;
		padding: 5px;
		font-color: black;
	}
	

	#nav-container ul
	{
		list-style: none;
		margin: 0;
		padding: 0;
		position: absolute;
		left: 0;
		top: 20px;
		width:105px;
		text-align: center;
		background: #FFC0CB;
		opacity: 0;
	}
	
		
	#nav-container ul li
	{
		float: none;
		margin: 0;
		padding: 0;
		font-size: x-small;
		
	}
	
	#nav-container ul a
	{
		font-weight: normal;
		font-color: black;
		line-height: 40px;
	}
	
	
	#nav-container li:hover ul
	{
		opacity: 1;
		
	}
	
	#nav-container li:hover ul li
	{
		height: 35px;
		overflow: visible;
		padding: 0;
	}
	
	
</style>
</html>