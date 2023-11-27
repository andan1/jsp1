<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>check box</h1>
<form action="parameter.jsp" method="get">
		아이디 : <input type="text" name="id" value="andan">
		<br>
		성별 : <input type="radio" name="sex" value="man" checked="checked">남자
			  <input type="radio" name="sex" value="woman">여자
		<br>
		관심사항 : <input type="checkbox" name="favo" value="eco">경제
				 <input type="checkbox" name="favo" value="pol">정치
				 <input type="checkbox" name="favo" value="ent">연예
		<br>
		자기소개 : <textarea rows="4" cols="30" name="intro">만나서 반갑습니다</textarea>
		
		<br>
		<button>전송</button>
	</form>
</body>
</html>