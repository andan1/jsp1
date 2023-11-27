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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if ("andan".equals(id) && "1234".equals(pw)) {
		// out.print("로그인 성공");
		response.sendRedirect("responseWelcome.jsp?id=" + request.getParameter("id"));
	} else {
		// out.print("로그인 실패");
		request.getRequestDispatcher("responseMain.jsp?loginErr=1").forward(request, response);
	}
%>
<h2>페이지를 전환하는 방법</h2>
<p>sendRedirect</p>
<p>forward</p>
id : <%= id %> <br>
pw : <%= pw %>
</body>
</html>