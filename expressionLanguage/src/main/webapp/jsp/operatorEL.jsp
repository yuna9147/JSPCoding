<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>표현언어 내 연산자 : operatorEL.jsp</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
	</head>
	<body>
		<h3>표현언어 = 값</h3>
		<ul>
			<li>\${문자열} = ${"JAVA"}</li>
			<li>\${'1'+1} = ${"1"+1}</li>
			<li>\${3+="일"} = ${3+="일"}</li>
			<li>\${2+5} = ${2+5}</li>
			<li>\${4/5} = ${4/5}</li>
		
			<li>\${7 mod 5} = ${7 mod 5}</li>
			<li>\${2 &lt; 3} = ${2 lt 3}</li>
			<li>\${3.1 le 3.2} = ${3.1 le 3.2}</li>
			<li>\${3 lt 5 and 8 gt 10} = ${3 lt 5 and 8 gt 10}</li>
			<li>\${header["host"]} = ${header["host"]}</li>
		</ul>
		
		<h3>표현언어 연산자 empty 확인</h3>
		<p>\${null} = ${null}</p>
		<p>\${n} = ${n}</p>
		
		<p>\${empty null} = ${empty null}</p>
		<p>\${empty n} = ${empty n}</p>
		
		<p>\${param.user} = ${param.user}</p>
		<p>\${empty param.user} = ${empty param.user}</p>
		<p>\${paramValues.msg} = ${paramValues.msg[0]}  ${paramValues.msg[1]}</p>
		<p>\${empty paramValues.msg} =${empty paramValues.msg} </p>
		
	</body>
</html>