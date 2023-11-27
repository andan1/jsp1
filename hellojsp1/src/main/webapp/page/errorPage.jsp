<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int age = 0;
%>

<h1>예외사항이 발생 하였습니다</h1>
<P>
	오류명 : <%= exception.getClass().getName() %>
	오류메세지 : <%= exception.getMessage() %>
<p/>
</body>
</html>