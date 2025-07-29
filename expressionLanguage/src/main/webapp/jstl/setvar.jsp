<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>JSTL Core: set(setvar.jsp)</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
	</head>
	<body>
		<h2>JSTL Core Tag : set</h2>
		
		<c:set var="setStr" value="set Tag 테스트입니다." scope="page"/>
		\${pageScope.setStr} = ${setStr} <br/>
		
		<c:set var="n"> 24 </c:set>
		\${n} =${n}<br/>
		
		<c:set var="d"> 31.54 </c:set>
		\${d}=${d}<br/>
		\${n + d} = ${n + d} <br />
		
		<c:set var="b" value="true" />
		\${!b} = ${!b} <br/>
		
		<c:set var="str" value="Hello set Tag!!!" scope="session" />
		\${str} = ${str} <br/>
		\${sessionScope.str } = ${sessionScope.str } <br/>
		
		<c:remove var="str" scope="page" />
		\${str} = ${str} <br />
		
		<c:remove var="str" scope="session" />
		\${str } = ${str }<Br/>
		
	</body>
</html>