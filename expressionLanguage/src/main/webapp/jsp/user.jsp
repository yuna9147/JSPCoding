<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.binding.Address"%>
<%@page import="com.binding.User"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>서블릿으로부터 전달받은 속성</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
		<style>
			table{ border: 1px solid black; border-collapse:collapse; width:700px;}
			th, td{border: 1px solid black; text-align:center;}
			th{background-color:pink;}
		</style>
	</head>
	<body>
	
		<h2>서블릿으로부터 전달받은 속성 출력</h2>
			<table>
				<tr>
					<th>회원이름</th>
					<th>아이디</th>
					<th>회원번호</th>
					<th>회원주소</th>
					<th>회원우편번호</th>
				</tr>
				
				<tr>
					<td>${user.name}</td>
					<td>${user.id}</td>
					<td>${user.num}</td>
					<td>${user.address.city}</td>
					<td>${user.address.zipcode}</td>
				</tr>
			</table>
	
	</body>
</html>