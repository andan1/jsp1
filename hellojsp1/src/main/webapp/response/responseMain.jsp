<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>내장객체 - response</h2>
<%
	String msg = "";
	// 만약 loginErr가 1이라면
	if ("1".equals(request.getParameter("loginErr"))) {
		msg = "아이디/비밀번호를 확인해주세요";
	}
	out.print(msg);
	// id입력칸에 사용자가 입력한 아이디를 출력
	String id = "andan";
	if (request.getParameter("id") != null) {
		id = request.getParameter("id");
	}
	
	out.print(request.getParameter("loginErr"));
	out.print(request.getParameter("id"));
%>
<form action="responseLogin.jsp" method="post">
	아이디 : <input type="text" name="id" value="<%=id%>">
	비밀번호 : <input type="password" name="pw" value="1234">
	<button>로그인</button>
</form>

<h2>응답헤더 확인하기</h2>
<%
	response.addIntHeader("age", 25);
	response.addHeader("id", "andan");
	response.setHeader("id", "test");
%>
<form action="responseHeader.jsp" method="get">
	<button>응답헤더</button>
</form>
<%
    String ageHeader = response.getHeader("age");
    out.print("Age Header: " + ageHeader + "<br>");

    String idHeader = response.getHeader("id");
    out.print("ID Header: " + idHeader + "<br>");
%>
</body>
</html>