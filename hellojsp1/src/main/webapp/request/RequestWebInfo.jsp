<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.andan.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<li>데이터 전송 방식 : <%= request.getMethod() %></li>
	<li>URL : <%= request.getRequestURL() %></li>
	<li>프로토콜 : <%= request.getProtocol() %></li>
	<li>서버명 : <%= request.getServerName() %></li>
	<li>포트번호 : <%= request.getServerPort() %></li>
	<li>IP 주소 : <%= request.getRemoteAddr() %></li>
	<li>쿼리스트링 : <%= request.getQueryString() %></li>
	<li>파라미터 : <%= request.getParameter("eng") %></li>
	<li>파라미터 : <%= request.getParameter("han") %></li>
	
	<%
		UserVO user = new UserVO();
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setName(request.getParameter("name"));
	%>
</ul>
</body>
</html>