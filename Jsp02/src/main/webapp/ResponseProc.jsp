
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이 페이지는 로그인 정보가 넘어오는 페이지 입니다</h2>

<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	// response.sendRedirect("ResponseRedirect.jsp"); //흐름제어
%>

<jsp:forward page="ResponseRedirect.jsp"/> <!-- 흐름제어 -->

<h3><%= id %></h3>
<h3><%= pass %></h3>
</body>
</html>