<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>세션 로그인 처리 1</h2>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");

// 아이디와 패스워드를 저장
session.setAttribute("id", id);
session.setAttribute("pass", pass);

// 세션의 유지시간 설정
session.setMaxInactiveInterval(60*2);

response.sendRedirect("SessionMain.jsp");
%>

</center>
</body>
</html>