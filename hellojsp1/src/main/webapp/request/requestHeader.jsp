<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>3. 요청 헤더 정보 출력 하기</h2>
<%
	Enumeration<String> headers = request.getHeaderNames();
	while (headers.hasMoreElements()) {
		String headerName = headers.nextElement();
		String headerValue = request.getHeader(headerName);
		out.println("<br>헤더명 : " + headerName);
		out.println("/ 헤더값 : " + headerValue);
	}
%>
</body>
</html>