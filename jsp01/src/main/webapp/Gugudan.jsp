<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>구구단 만들기</h2>
<%
	for (int i = 1; i < 10; i++) {
		for (int j= 1; j < 10; j++) {
%>			
			<%= i %> * <%= j %> = <%= i * j %><br>
<%			
		}
	}
%>
</body>
</html>