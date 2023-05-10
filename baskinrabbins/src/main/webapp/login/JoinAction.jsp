<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>

<jsp:useBean id="User" class="User.UserDTO" scope="page" />
<jsp:setProperty name="User" property="membername"/>
<jsp:setProperty name="User" property="id"/>
<jsp:setProperty name="User" property="password"/>
<jsp:setProperty name="User" property="address"/>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
<%
		// 아이디 오류
		if (User.getMembername() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이름 입력 오류');");
			script.println("history.back();");
			script.println("</script>");
		}
		// 비밀번호 오류
		else if (User.getId() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디 입력 오류');");
			script.println("history.back();");
			script.println("</script>");
		}
		// 이메일 오류
		else if (User.getPassword() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호 입력 오류');");
			script.println("history.back();");
			script.println("</script>");
		} 
		else if (User.getAddress()==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('주소 입력 오류');");
			script.println("history.back();");
			script.println("</script>");
		}
		// 입력값이 올바른 경우
		else {
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(User);
			// 이미 존재하는 아이디
			if (result==-1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디');");
				script.println("history.back();");
				script.println("</script>");
			} 
			// 정상적으로 회원가입 된 경우
			else if (result==0){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입 성공');");
				script.println("location.href='login.jsp'");
				script.println("</script>");
			}
		}	
	%>
</body>
</html>