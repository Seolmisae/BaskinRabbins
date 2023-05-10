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
		<img class="main" src="<%=path %>/image/main.png" width="100%">
		<img class="main" src="<%=path %>/image/main2.png" width="100%">

		
</body>

<script>
var index = 0;   //이미지에 접근하는 인덱스
window.onload = function(){
    slideShow();
}

function slideShow() {
var i;
var x = document.getElementsByClassName("main");  //slide1에 대한 dom 참조
for (i = 0; i < x.length; i++) {
   x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
}
index++;
if (index > x.length) {
    index = 1;  //인덱스가 초과되면 1로 변경
}   
x[index-1].style.display = "block";  //해당 인덱스는 block으로
setTimeout(slideShow, 4000);   //함수를 4초마다 호출

}
</script>

<style>
	body
	{
		width: 100%;
		height: 1200px;
		text-align: center;
	}
</style>

</html>