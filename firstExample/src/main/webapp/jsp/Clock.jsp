<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="example.Clock" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSP 예제파일 : date.jsp</title>
<link rel="icon" href="../image/icon.png" />
</head>
<body>
	<%
		Date nowDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
		String formatDate = dateFormat.format(nowDate);
	%>
	<p> 일반적인 JSP 페이지의 형태로 아래와 같이 현재 날짜를 제공합니다.<br/>
		현재 날짜는 <%=formatDate %>입니다.</p>
	<%
		Clock clock = new Clock();
		String data = clock.now();
	%>
	<p> 현재 날짜는 <%=data %>입니다.</p>
</body>
</html>



