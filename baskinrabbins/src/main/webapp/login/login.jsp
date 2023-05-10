<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
  
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
</head>

<%
	//프로젝트 경로 구하기
	String path=request.getContextPath();
%>

<%	
	String id = null;
	id = (String) session.getAttribute("id");
	if (id != null) {
		/* 이미 로그인된 경우 */
		PrintWriter script = response.getWriter();
		// JS문장
		script.println("<script>");
		script.println("alert('이미 로그인함')");
		script.println("location.href='index.jsp'"); // index페이지로
		script.println("</script>");
	}
%>

<body>
	
	<jsp:include page="/layout/header.jsp"/>
	<jsp:include page="/layout/menu.jsp"/>
	
	
	<form method="post" class="loginform" action="LoginAction.jsp">
		<div class=idform>
			아이디: <input type="text" size="10" name="id"><br>
		</div>
		<div class=passform>
			비밀번호: <input type="password" size="15" name="password"><br>
		</div>
			<button type="submit" value="login">LOGIN</button>
			<input type= "button" onclick="location.href='<%=path%>/login/join.jsp'" value="JOIN">
	</form>
	
</body>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
	
	body
	{
		margin: 0px;
		padding: 0px;
		text-decoration: none;
		width: 100%;
		height: 100%;
		font-family: 'Do Hyeon', sans-serif;
	}

	
	.loginform
	{
		position: absolute;
		width: 50%;
		height: 30%;
		padding: 30px, 20px;
		text-align: center;
		top: 75%;
		left: 50%;
		transform: translate(-50%, -50%);
		border-radius: 15px;
	}
	
	.idform
	{
	 	border-bottom: 2px solid #adadad;
  		margin: 30px;
  		padding: 10px 10px;
	}
	
	.passform
	{
		border-bottom: 2px solid #adadad;
		margin: 30px;
  		padding: 10px 10px;
	}
	
	.id
	{
		width: 100%;
  		border:none;
  		outline:none;
  		font-size:16px;
  		height:25px;
 		background: none;
	}
	.pw
	{
		width: 100%;
  		border:none;
  		outline:none;
  		font-size:16px;
  		height:25px;
  		background: none;
	}
</style>
</html>