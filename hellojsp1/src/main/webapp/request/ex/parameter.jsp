<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	String id = request.getParameter("id");
	String sex = request.getParameter("sex");
	String favo = request.getParameter("favo");
	String[] favoArr = request.getParameterValues("favo");
	String intro = request.getParameter("intro");
	
%>
<ul>
	<li>아이디 : <%= id %></li>
	<li>성별 : <%= sex %></li>
	<li>관심사항 : <%= Arrays.toString(favoArr) %></li>
	<li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>