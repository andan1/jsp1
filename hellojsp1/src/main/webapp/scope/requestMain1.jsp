<%@page import="com.andan.dto.person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>sendRedirect</h2>
<P>request영역은 하나의 요청에 대한 응답이 완료될 때 소멸</P>
<%
// request 영역에 2개의 값을 저장
request.setAttribute("request_str", "request_str");
request.setAttribute("request_person", new person("andan", 25));

// 쿼리스트링을 통해 파라미터 전달
response.sendRedirect("requestRedirect.jsp?isRedirect=1");

// session 영역에 값을 저장
session.setAttribute("session_str", "session_str");
%>

</body>
</html>