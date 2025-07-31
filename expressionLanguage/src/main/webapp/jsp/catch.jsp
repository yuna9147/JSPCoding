<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
	</head>
	<body>
		<h3>JSTL Core Tag : catch</h3>
		
		<c:catch var="errMessage">
		<%=request.getParameter("userName").toLowerCase() %>
		</c:catch>
		
		<p>
		<c:if test="${not empty errMessage }">
		예외가 발생했습니다.
		예외 메시지 : <hr/>
		${errMessage }
		</c:if>
		</p>
	</body>
</html>