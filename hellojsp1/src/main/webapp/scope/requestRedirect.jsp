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
<%
String str = "";
person person = new person();
if (request.getAttribute("request_str") != null) {
	str = request.getAttribute("request_str").toString();
} 
if (request.getAttribute("request_person") != null) {
	person = (person) request.getAttribute("request_person");
}
request.getAttribute("request_str");
request.getAttribute("request_person");
%>
<h2>getAttribute 결과</h2>
<%= str %>
<br><%= person %>
<h2>queryString 출력</h2>
isRedirect : <%= request.getParameter("isRedirect") %>

<h3>session을 이용한 값</h3>
session_str : <%= session.getAttribute("session_str") %>

<%
// 세션에 저장된 속성을 제거
session.removeAttribute("session_str");
%>
<h3>세션 제거</h3>
<br>session_str : <%= session.getAttribute("session_str") %>
</body>
</html>