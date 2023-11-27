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
<%
request.setAttribute("request_str", "request영역에 문자열 저장");
request.setAttribute("request_person", new person("andan", 25));

String request_str = "값 없음";
person request_person = new person();

if (request.getAttribute("request_str") != null) {
	request_str = request.getAttribute("request_str").toString();
}
if (request.getAttribute("request_person") != null) {
	request_person = (person) request.getAttribute("request_person");
}
// String request_str = request.getAttribute("request_str") != null ? request.getAttribute("request_str").toString() : "값 없음";
%>

<br><%= request_str %>
<br><%= request_person %>

<%
// forward : request 영역 공유
// sendredirect : request 영역 공유 안됨
%>
<h2>forward된 페이지에서 request 영역 속성 값 읽기</h2>
<%

if (request.getParameter("isRedirect") != null) {
	// redirect 방식
	// redirect 방식을 이용 시 다음 요청 페이지에 값을 넘기는 방법
	// request 영역이 공유되지 않으므로 request영역에 값을 저장해도 유지가 안됨
	// 1. queryString을 이용하는 방법
	// 		queryString을 이용할 땐 getParameter메소드를 이용하여 값을 꺼낼 수 있다
	// 2. seesion을 이용하는 방법
	//		세션은 서버에 저장되는 영역이므로 필요 시 생성 후 바로 제거
	request.setAttribute("isRedirect", 1);
	session.setAttribute("isRedirect", "1");
	response.sendRedirect("requestForward.jsp?isRediret=1");
} else {
	// forward 방식
	RequestDispatcher d = request.getRequestDispatcher("requestForward.jsp");
	d.forward(request, response);
}
%>
</body>
</html>