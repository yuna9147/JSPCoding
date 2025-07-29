
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.book.BookVO"%>
<%@page import="com.grade.StudentGrade"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.test.Apple"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.date.Today"%>
<%@page import="com.member.User" %>
<%@page import="com.member.Address" %>

<%
	User member = new User();
	member.setUname("박보검");
	member.setUid("goodboy");
	member.setUnum(19010001);
	
	com.member.Address add = new com.member.Address();
	add.setCity("서울특별시 강남구 역삼동");
	add.setZipcode("06123");
	
	member.setAddress(add);

%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>표현언어에서 액션태그 이용 : userEL.jsp</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
	</head>
	<body>
		<h3>접근자로 데이터 출력(표현식 이용)</h3>
		<label>uname :</label> <%=member.getUname() %><br/>
		<label>uid :</label> <% out.print(member.getUid()); %><br/>
		<label>unum :</label> <%=member.getUnum() %><br/>
		
		<label> city: </label><%=member.getAddress().getCity() %><br/>
		<label> zipcode: </label><%=member.getAddress().getZipcode() %><br/>
		
		<h3>인스턴스 생성 및 필드값 설정(액션태그 이용)</h3>
		<jsp:useBean id="user" class="com.member.User" scope="page"/>
		User user = new User()<br/>
		<jsp:setProperty name="user" property="uname" value="강하늘"/>
		user.setUname("강하늘") <br/>
		<jsp:setProperty name="user" property="uid" value="kang123"/>
		<jsp:setProperty name="user" property="unum" value="19910204"/>
		
		<%-- has-a 관계 설정 --%>
		<jsp:useBean id="address" class="com.member.Address" scope="page"/>
		
		<jsp:setProperty name="address" property="city" value="서울특별시 강남구 테헤란로"/>
		<jsp:setProperty name="address" property="zipcode" value="04715"/>
		
		<jsp:setProperty name="user" property="address" value="${address}"/>
		
		<h3>표현언어에서 자바빈즈 getter 호출</h3>
		<label> uname: </label>${user.uname} <br/>
		<label> uname: </label>${user.getUname()} <br/>
		<label> uid: </label>${user.uid} <br/>
		<label> unum: </label>${user.unum} <br/>
		
		<h5>표현언어에서 자바빈즈 getter 호출(has-a 관계 출력)</h5>
		<label> address city : </label>${user.address.city }<br/>
		<label> address zipcode : </label>${user.address.zipcode }<br/>
		<hr/>
		
		<h2>객체의 getter 메서드, 컬렉션 객체의 원소</h2>
		
		<%
		pageContext.setAttribute("today", new Today());
		%>
		
		<h3>객체의 멤버 접근</h3>
		<div>${ pageScope.today.year }년 ${ today.month }월 ${ today.date }일</div>
		
		<%
			ArrayList<Apple> myList = new ArrayList<>();
			myList.add(new Apple("청색"));
			myList.add(new Apple("빨간색"));
			myList.add(new Apple("황색"));
			pageContext.setAttribute("list",myList);
		%>
		
		<h3>컬렉션의 객체 사용(ArrayList / HashMap)</h3>
		<div>${pageScope.list[0].color}/${list[1].color}/${list[2].color}</div>
		
		<%
			HashMap<String, String> map = new HashMap<>();
			map.put("uname","홍길동");
			map.put("uid","javauser");
			pageContext.setAttribute("map",map);
		%>
		
		<div>${map.uname } - ${map.uid }</div>
		
		<h3>책정보 출력</h3>
		<%-- id= 인스턴스  / class=임포트 느낌.. --%>
		<jsp:useBean id="bookVO" class="com.book.BookVO" scope="page" />
		<jsp:setProperty property="title" name="bookVO" value="가자, 길이 보이지 않아도" />
		<jsp:setProperty property="author" name="bookVO" value="이호준" />
		<jsp:setProperty property="publisher" name="bookVO" value="꽃길"/>
		
		<label>책제목 : </label>${bookVO.title }<br/>
		<label>책저자 : </label>${bookVO.author }<br/>
		<label>출판사 : </label>${bookVO.publisher }<br/>
		
		<h3>EL 메서드 호출</h3>
		<%
			StudentGrade grade = new StudentGrade();
			request.setAttribute("grade",grade);
			
			BookVO book = new BookVO();
			request.setAttribute("book",book);
		%>
		
		${grade.setAverage(60,82,97) }
		${"평균 : " += grade.getAverage() } <br/>
		
		${book.setTitle("자바") }
		${"제목 : " += book.getTitle() } <br/>
		
	</body>
</html>