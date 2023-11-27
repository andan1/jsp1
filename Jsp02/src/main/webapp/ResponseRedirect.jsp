<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>ResponseRedirect 페이지 입니다</h2>

<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
%>	

<h3><%= id %></h3>
<h3><%= pass %></h3>
</body>
</html>