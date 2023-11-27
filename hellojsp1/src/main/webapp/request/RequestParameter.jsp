<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	// Post 방식일때 한글 깨짐 처리 - 필터로 처리 -> web.xml, 어노테이션
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String sex = request.getParameter("sex");
	String favo = request.getParameter("favo");
	// 체크박스인 경우 - 여러개가 선택될 수 있어 배열형태로 받아서 처리
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