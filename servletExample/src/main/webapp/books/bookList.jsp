<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.books.BooksVO" %>   
<%	
	@SuppressWarnings("unchecked")
	List<BooksVO> list = (List<BooksVO>)request.getAttribute("list");
	int counter = list.size();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>책정보</title>
		<link href="/sevletExample/image/icon.png" rel="icon" type="image/x-icon" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" >
	</head>
	<body>
	<div class="container">
		<h3>책정보 리스트</h3>
		<hr/>
		<div id="bookList">
			<table class="table table-striped table-hover">
	 			<thead class="table-primary ">
	 				<tr class="text-center">
	 					<th>책번호</th>
	 					<th>책제목</th>
	 					<th>출판사</th>
	 					<th>출간연도</th>
	 					<th>책가격</th>
	 				</tr>
	 			</thead>
	 			
	 			<tbody>
	 			<% if(counter > 0) {
	 				for(int i=0; i<counter; i++) {
	 				BooksVO booksVO = list.get(i);
	 			%>
	 		
	 				<tr class="text-center">
	 				<td><%=booksVO.getBook_id()%></td>
	 				<td><%=booksVO.getTitle()%></td>
	 				<td><%=booksVO.getPublisher()%></td>
	 				<td><%=booksVO.getYear()%></td>
	 				<td><%=booksVO.getPrice()%></td>
	 				</tr>
	 			<%
	 				} 
	 			} else{
	 			%>
	 				<tr>
					<td colspan="5" class="text-center">
						조회되는 정보가 없습니다.
					</td>
				</tr>
	 			<% } %>
	 			
	 			</tbody>
			</table>
			<div class="text-end">
					조회된 책 <span id="counter"><%=counter %></span>권 입니다.
				</div>
		</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/servletExample/js/jquery-3.7.1.min.js"></script>
		
	</body>
</html>