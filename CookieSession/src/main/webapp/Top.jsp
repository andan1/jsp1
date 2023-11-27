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
// 로그아웃 클릭시 파라미터를 통해서 로그아웃인지여부 파악
String logout = request.getParameter("logout");

if (logout != null) {
	// id에 null값을 부여
	session.setAttribute("id", null);
	// 세션 유지시간을 죽이시요
	session.setMaxInactiveInterval(0);
}

// 세션을 통하여 id를 읽어드림
String id = (String) session.getAttribute("id");

// 로그인이 되어있지않다면 session값을 null처리 해야함
if (id == null) {
	id = "Guest";
}
%>

<!-- Top -->
<table width="800">
<tr height="100">
	<!-- 로고 -->
	<td colspan="2" align="center" width="200">
	<img alt="" src="img/logo.jpeg" width="200" height="70">
	</td>
	<td colspan="5" align="center">
	<font size="10">낭만 캠핑</font>
	</td>
</tr>

<tr height="50">
	<td width="100" align="center">텐트</td>
	<td width="100" align="center">의자</td>
	<td width="100" align="center">식기류</td>
	<td width="100" align="center">침낭</td>
	<td width="100" align="center">테이블</td>
	<td width="100" align="center">화롯대</td>
	<td width="100" align="center">
<%
	if (id.equals("Guest")) {
%>
	<%= id %> 님 <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
<%		
	} else {
%>
	<%= id %> 님 <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
<% 		
	}
%>
	</td>
</tr>

</table>
</body>
</html>