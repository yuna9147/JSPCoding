<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common/header.jsp" %>

<body>
	<div class="container">
		<div class="text-center"><h3>공지 게시판</h3></div>	
		<form name="detailForm" id="detailForm">
			<input type="hidden" name="num" id="num" />
		</form>
		
		<div id="NoticeList">
			<table summary="공지게시판" class="table">
				<thead>
					<tr class="text-center">
					   <th class="col-md-1">번호</th>
					   <th class="col-md-6">제목</th>
					   <th class="col-md-2">작성자</th>
					   <th class="col-md-2">날짜</th>
					   <th class="col-md-1">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${not empty list}" >
							<c:forEach var="notice" items="${list}">
								<tr class="text-center" data-num="${notice.num}">
									<td>${notice.num}</td>
									<td class="text-start">
										<span class="goDetail">${notice.title}</span></td>  
									<td>${notice.author}</td>
									<td>${notice.writeday}</td>
									<td>${notice.readcnt}</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" class="text-center">등록된 게시물이 존재하지 않습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>		
				</tbody>
			</table>
		</div>
		
		<div class="contentBtn text-end">
			<button type="button" id="writeForm"  class="btn btn-primary btn-sm">글작성</button>
		</div>
	</div>
	<%@ include file="/WEB-INF/common/footer.jsp" %>
	<script src="/include/js/noticeList.js"></script>
</body>
</html>