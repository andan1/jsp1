<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어</title>
</head>
<body>
<%
	/*
	try {
	int age = Integer.parseInt(request.getParameter("age"));
	out.print("나이 : " + age);  	
	} catch (Exception e) {
		out.print("실행 중 예외 발생");
	}
	*/
	int age = Integer.parseInt(request.getParameter("age"));
	out.print("나이 : " + age);
%>
</body>
</html>