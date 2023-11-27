<%@page import="java.util.HashMap"%>
<%@page import="com.andan.dto.person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>application 영역</h2>
<!--
웹서버가 실행 시 생성되는 영역
클라이언트가 요청하는 모든 페이지가 application 영역을 공유
웹서버를 종료할 때 소멸


 -->
<%
Map<String, person>	map = new HashMap<>();

map.put("actor1", new person("user1", 20));
map.put("actor2", new person("user2", 25));
map.put("actor3", new person("user3", 30));

application.setAttribute("map", map);
%>
- 어플리케이션 영역에 속성이 저장 되었습니다

<p>web.xml 파일에 초기화 변수 출력</p>
<%= "<br>" + application.getInitParameter("INIT_PARAM") %>
<p>서버의 물리적 경로</p>
<%= "<br>" + application.getRealPath("") %>
</body>
</html>