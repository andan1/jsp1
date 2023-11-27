<%@page import="java.util.List"%>
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
<h2>session 영역의 속성 읽기</h2>
<%
if (session.getAttribute("person") != null) {
	person p = (person) session.getAttribute("person");
} else {
	out.print("session에 저장된 person 객체는 존재하지 않습니다");
}
if (session.getAttribute("list") != null) {
	List<String> list = (List) session.getAttribute("list");
	for (String str : list) {
		out.print(str + "<br>");
	}
}
%>
</body>
</html>