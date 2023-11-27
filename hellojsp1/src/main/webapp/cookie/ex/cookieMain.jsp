<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.none{display:block}
.w30{width:30px}
</style>
</head>
<body>
<%
String none = "none";
String str = "안녕하세요";
%>

<script type="text/javascript">

// alert("none");
// alert("<%=none%>");
// alert('<%="none"%>');

// alert("안녕하세요");
// alert("<%=str%>");


// documemt.querySelector("선택자");
// 선택자 종류
// .클래스
// #아이디
// 태그명

window.onload = function() {
	// 화면에 출력
	documemt.querySelector("#popup").style.display='block';
	
	// 닫기버튼을 클릭하면 form 전송
	document.querySelector("#closeBtn").onclick = function() {
		// 닫기버튼이 클릭 되었을 때 체크박스가 체크되었는지 확인
		if(document.querySelector("input[id=inactiveToday]").checked) {
			// 다른페이지를 요청
			popupForm.submit();
		} else {
			// 팝업창 닫기
			document.querySelector("#popup").style.display='none';
		}
	}
}
</script>
<form action="cookieAction.jsp" name="popupForm">
<h2 class="none">쿠키 - 팝업 연습</h2>
<!-- 
<%= none %> : 변수 선언 후 사용
<%= "none" %> 
태그에 속성을 정의할 때, 홑따옴표나 쌍따옴표로 감싸주는 것은 해당 소성의 값이 어디까지인지를 정의

class 속성에 값을 정의 할 수 있는데 여러개 값을 정의할 수 있다
class="none"
 -->
 
	<div id="popup" class="none">
        <h2 align="center">공지사항 팝업입니다.</h2>
        <div align="right">
	            <input type="checkbox" id="inactiveToday" name="inactiveToday" value="Y" checked/> 
	            하루 동안 열지 않음
	            <input type="button" value="닫기" id="closeBtn" /> 
        </div>
    </div>
</form>
</body>
</html>