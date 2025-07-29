<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="icon" href="../image/icon.png" />
</head>
<body>
	<h3> 숫자를 저장한 변수 3개(47,88,12)를 정의하고 최대값 구하기</h3>
	
	<%
		int a = 47;
		int b = 88;
		int c = 12;
		
		int max = 0;
		max = Math.max(a,b);
		max = Math.max(max,c);
	%>
	<p>최대값 :  <%= max %></p>
	<hr/>
	
	<h3>배열의 값(12,26,68,98,76,54,8,6,4) 중 최대값과 최소값 구하기</h3>
	<%
		int arr[] = {12,26,68,98,76,54,8,6,4};
		int minNum = arr[0] ;
		int maxNum = arr[0] ;
		
		//max 구하기
		for(int i = 1; i<arr.length ; i++){
			if( arr[i] > maxNum ){
				maxNum = arr[i];
			} 	
		}

		
		//min 구하기
		for(int j = 1; j<arr.length ; j++){
			if( arr[j] < minNum ){
				minNum = arr[j];
			} 	
		}
	%>
	<p>최대값 :  <%= maxNum %>, 최소값 : <%= minNum %></p>
	
	<hr/>
	<h3>문자열 추출하기</h3>
	
</body>
</html>











