<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.andan.dto.person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("page", "페이지 영역(스코프)");
	pageContext.setAttribute("page_int", 10000);
	
	person p = new person("andan", 25);
	pageContext.setAttribute("pagePerson", p);
	
	String page_str = pageContext.getAttribute("page").toString();
	int page_int = (Integer) pageContext.getAttribute("page_int");
	person page_p = (person) pageContext.getAttribute("pagePerson");
%>
<h2>페이지 영역의 속성 값</h2>
<ul>
	<li>String : <%= page_str %></li>
	<li>int : <%= page_int %></li>
	<li>person : <%= page_p.getAge() %> / <%= page_p.getName() %></li>
</ul>

<h2>include된 파일에서 page 영역 읽어오기</h2>
<p>include지시어로 감싼 JSP파일은 포함관계를 가지므로 같은 페이지 영역이나 변수등이 공유 됨</p>
<%@ include file="pageInclude.jsp" %>

<h2>페이지 이동 후 페이지 영역 읽어오기</h2>
<!-- 링크나 form을 이용해서 페이지를 다시 요청하게되면 페이지 영역이 초기화 -->
<a href="pageLocation.jsp">pageLocation 바로가기</a>

<!-- remove -->
<%
pageContext.removeAttribute("page");
%>
<h2>영역에 저장된 속성을 삭제</h2>
<!-- removeAttribute 메소드는 값이 없는 경우 오류를 발생하지 않는다 -->
<!-- getAttribute 메소드는 값이 없는 경우 null을 반환한다 -->
page : <%= pageContext.getAttribute("page") %>
</body>
</html>
