<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- java 코드를 사용하는 방법 -->
	<%! 
	String title = "hello JSP";
	%>
	<h1><%= title %></h1>
	<hr>
	<h1><% out.print(title); %></h1>
</body>
</html>