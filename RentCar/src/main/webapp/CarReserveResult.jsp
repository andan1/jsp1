<%@page import="db.CarListBean"%>
<%@page import="db.RentcarDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="rbean" class="db.CarReserveBean">
	<jsp:setProperty property="*" name="rbean"/>
</jsp:useBean>

<%
String id = (String) session.getAttribute("id");

if (id == null) {
%> 
<script>
	alert("로그인 후 예약이 가능합니다.");
	location.href='RentcarMain.jsp?center=MemberLogin.jsp'
</script>
<%
}

// 날짜 비교
Date d1 = new Date();
Date d2 = new Date();
// 날짜를 2023-4-4 모양으로 포캣 해주는 클래스 선언
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

d1 = sdf.parse(rbean.getRday());
d2 = sdf.parse(sdf.format(d2));

// 날짜 비교 메소드를 사용
int compare = d1.compareTo(d2);

// 예약하려는 날짜보다 현재 날짜가 크다면 -1, 같다면 0, 작다면 1
if (compare < 0) { // 오늘보다 이전 날짜 선택시
	
%> 
	<script>
		alert("현재 시스템 날짜보다 이전 날짜는 선택할 수 없음.");
		history.go(-1);
	</script>
<%
}

// 결과적으로 아무런 문제가 없다면 데이터 저장 후 겨과 페이지 보여주기
// 아이디 값이 빈클래스에 없기에
String id1 = (String) session.getAttribute("id");
rbean.setId(id1);

// 데이터 베이스에 빈클래스를 저장
RentcarDAO rdao = new RentcarDAO();
rdao.setReserveCar(rbean);

// 차량 정보 얻어오기
CarListBean cbean = rdao.getOneCar(rbean.getNo());

// 차량 총 금액
int totalcar = cbean.getPrice() * rbean.getQty() * rbean.getDday();
// 옵션 금액
int usein = 0;
if (rbean.getUsein() == 1) usein = 10000;
int usewifi = 0;
if (rbean.getUsewifi() == 1) usein = 10000;
int useseat = 0;
if (rbean.getUseseat() == 1) usein = 10000;

int totaloption = (rbean.getQty() * rbean.getDday()) * (usein + usewifi + useseat); 
%>
<center>
<table width="1000">
	<tr height="100">
		<td align="center">
		<font size="6" color="gray">차량 예약 완료 화면</font></td>
	</tr>
	<tr>
		<td align="center">
		<img alt="" src="img/<%=cbean.getImg() %>" width="470"></td>
	</tr>
	<tr height="50">
		<td align="center">
		<font size="5" color="red">차량 총 예약 금액 <%=totalcar%>원</font></td>
	</tr>
	<tr height="50">
		<td align="center">
		<font size="5" color="red">차량 총 옵션 금액 <%=totaloption%>원</font></td>
	</tr>
	<tr height="50">
		<td align="center">
		<font size="5" color="red">차량 총 금액 <%=totaloption+totalcar%>원</font></td>
	</tr>

</table>
</center>
	
</body>
</html>