<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="User.UserDTO" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="password"/>


<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<%
		UserDAO userDAO = new UserDAO();
		// 로그인
		int result = userDAO.login(user.getId(), user.getPassword());
		// 로그인 성공시
		if (result == 1){
			session.setAttribute("id", user.getId());
			PrintWriter script = response.getWriter();
			// JS문장
			script.println("<script>");
			script.println("location.href='../index.jsp'");	// index페이지로
			script.println("</script>");
		} 
		// 비번 오류
		else if (result == 0){
			PrintWriter script = response.getWriter();
			// JS문장
			script.println("<script>");
			script.println("alert('비밀번호 오류')");	// 비번 오류
			script.println("history.back()");	// 로그인페이지로
			script.println("</script>");
		}
		// 존재하지 않는 아이디
		else if (result == -1){
			PrintWriter script = response.getWriter();
			// JS문장
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디')");	// 존재하지 않는 아이디
			script.println("history.back()");	// 로그인페이지로
			script.println("</script>");
		}
		// DB 오류
		else {
			PrintWriter script = response.getWriter();
			// JS문장
			script.println("<script>");
			script.println("alert('DB 오류')");	
			script.println("history.back()");	// 로그인페이지로
			script.println("</script>");
		}	
	%> 
</body>
</html>