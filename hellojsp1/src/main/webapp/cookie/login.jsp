<%@page import="com.andan.utils.CookieManager"%>
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
// 요청객체로부터 쿠키정보를 꺼내서 userId값을 변수에 저장
String userId = "";
String checked = "";

out.print("checked값 : ");

userId = CookieManager.readCookie(request, "userId");
checked = !"".equals(userId) ? "checked" : "";
/*
Cookie[] cookies = request.getCookies();

if (cookies != null) {
for (Cookie cookie : cookies) {
	if ("userId".equals(cookie.getName())) {
		out.print("userId를 찾음");
		userId = cookie.getValue();
		checked = "checked";
		break;
	}
}
}
*/
%>
<form action="loginAction.jsp" method="post">
<div class='loginbox'>
        <div id='login'>
            <input type="text" name="id" id="userpw" placeholder='ID를 입력해주세요.' 
            				required="required" value="andan"><br>
            				
            <input type="password" name="pw" id="userpw" value="1234" placeholder='PW를 입력해주세요.' required="required"><br>
            <input type="checkbox" <%= checked %> name="save_check" value="Y">아이디 저장하기<br>
        </div>
        <div id='button'>
        <input type="submit" value="로그인">
        </div>
    </div>
    <div id='info'>
        <a href="">회원가입</a>
        <a href="">ID찾기</a>
        <a href="">PW찾기</a>
    </div>
</form> 
</body>
</html>