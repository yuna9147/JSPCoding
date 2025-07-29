<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSP 첫 문서 작성하기 -hello.jsp</title>
<link rel="icon" href="../image/icon.png" />
</head>
<body>
	<%
		out.print("<h1> 지금까지 이런 맛은 없었다. </h1>");
		out.print("<p>이것은 갈비인가, 통닭인가.</p>" );
	%> 
</body>
</html>
