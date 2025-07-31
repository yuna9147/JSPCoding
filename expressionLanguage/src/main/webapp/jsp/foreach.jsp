<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>JSTL Core: forEach/forTokens(foreach.jsp)</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
	</head>
	<body>
		<h2>JSTL Core Tag: forEach</h2>
		<h3>배열 처리</h3>
		<c:set var="score" value = "<%= new int[] {95,23,85,38,19,99} %>" />
		
		<c:set var="sum" value="0" />
		점수 : 
		<c:forEach var="point" items="${score}">
		${point }
		<c:set var="sum" value="${sum+point }" />
		</c:forEach>
		<br/> 합 = ${sum} <br/> 
		
		
		<h3>1부터 100까지 합</h3>
		<c:set var ="sum" value="0"/>
		<c:forEach var="i" begin="1" end= "100">
			<c:set var="sum" value="${sum+i }" />
		</c:forEach>
		결과 = ${sum} <br/>
		<hr/>
		
			<h3>Map 타입</h3>
		<% 
		   HashMap<String, String> map = new HashMap<>();
		   map.put("apple", "red");
		   map.put("banana", "yellow");
		   map.put("grape", "purple");
		   pageContext.setAttribute("map", map);
		%>

		<c:forEach var="key" items="${map.keySet()}">
		    ${key} = ${map[key]}<br>
		</c:forEach>
	
	
		<h3>ArrayList 원소 반복</h3>
		<%
			ArrayList<User> userList = new ArrayList<User>();
			userList.add(new User("김남길","javajsp",18701));
			userList.add(new User("강하나","jspuser",18702));
			userList.add(new User("최수종","dbadmin",18703));
			pageContext.setAttribute("list",userList);
		%>
		
		<c:forEach var="member" items="${list}" varStatus="status">
		${status.count}. ${member.uname} / ${member.uid} /         ${member.unum} <br/>
		</c:forEach>
		<hr/>
		
		
		<h3>2단부터 9단까지 출력</h3>
		<table style="background-color:lightgray; border-collapse:collapse;">
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<c:forEach var="j" begin="2" end="9">
						<td style=" border:1px solid black; text-align:center;  padding:5px;">${j} * ${i} = ${j*i}</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
		
		<hr/>
		<h3>[ MAP(맵) ]</h3>
		<c:set var="map" value="<%= new java.util.TreeMap<String,String>() %>" />
		<c:set target="${map}" property="김남길" value="30"/>
		<c:set target="${map}" property="강하늘" value="27"/>
		<c:set target="${map}" property="김유정" value="20"/>
		
		
		<c:forEach var="data" items="${map}">
			[ ${data.key} = ${data.value} ]
		</c:forEach>		
		<hr/>
		
		<h3> [ 배열 ]</h3>
		<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>" />
		<c:forEach var="i" items="${intArray}" begin="2" end="4">
			[${i}]
		</c:forEach>
		<hr/>
		
		<h3> [ 값을 변화시키면서 반복처리 ]</h3>
		<c:set var="sum" value="0" />
		<c:forEach var="i" begin="1" end="100" step="2">
			<c:set var="sum" value="${sum+i}" />
		</c:forEach>
		<h4>결과 = ${sum}</h4>
		
		<hr/>
		
		<h4> [ 구구단: 4단 ]</h4>
		<c:forEach var="i" begin="1" end="9" >
			4*${i} = ${4*i}<br/>
		</c:forEach>
		
		<hr/>
		
		<h2>JSTL Core Tag: forTokens</h2>
		
		<p>
			<c:forTokens var="token" items="소설/역사/인문/정치/미술/종료/여행/과학/만화/건강" delims="/">
			${token} <br/>
			</c:forTokens>
		</p>
		<hr/>
		
		<c:set var="str" value="JSTL은 표준태그로서 코어, XML, 국제화, SQL, 함수 관련 태그로 구성된다." />
		<p style="font-weight:800;">${str}</p> 
		<p> 위 문장은 forTokens의 속성 delims=",.은로서된다" 지정으로 다음 단어로 나뉘어 진다</p><hr/>
		
		<p>
			<c:forTokens var="token" items="${str}" delims=" ,.은로서된다" varStatus="status">
			${status.count }. ${token }<br/>
			</c:forTokens>
		</p>
		<hr/>
		
		<p>	
			콤마와 점을 구분자로 사용:<br />
			<c:forTokens var="token" items="빨강색,주황색/노란색.초록색,파랑색/남색.보라색" delims=",./">
				<button type="button" style="background-color:tomato; color:black; border:3px dotted red;">${token}</button>
			</c:forTokens>
		</p>
		<hr />
		
		<p>	
			<c:set var="fruits" value="사과, 파인애플, 바나나, 망고, 귤"  />
			<c:forTokens  var="token" items="${fruits}" delims="," >
	    		${token} <br /> 
			</c:forTokens>
		</p>
		
	</body>
</html>
