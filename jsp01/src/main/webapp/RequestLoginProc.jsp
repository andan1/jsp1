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
	// 사용자의 정보가 저장되어있는 객체 request의 getParameter()로 사용자의 정보를 추출
	// 사용자의 id값을 읽어드려서 변수 id에 저장
	String id = request.getParameter("id");
	// 사용자의 pass값을 읽어드려서 변수 pass에 저장
	String pass = request.getParameter("pass");
%>
당신의 아이디는 <%= id %> 이고 패스워드는 <%= pass %> 입니다
<a href="RequestForward.jsp">다음 페이지</a>
</body>
</html>