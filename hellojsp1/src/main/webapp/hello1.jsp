<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello jsp</h1>
<% 
Date today = new Date(); 
out.print("오늘 날짜 : " + today);
%>
<hr>
오늘 날짜 : <%= today %>
</body>
</html>