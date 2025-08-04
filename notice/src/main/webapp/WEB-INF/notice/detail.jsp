<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/header.jsp" %>    

	<body>
		<div class="container">
			<div class="text-center"><h3>게시판 상세 화면</h3></div>
			<form name="dataForm" id="dataForm">
				<input type="hidden" name="notice_no" value="${detail.notice_no}">
			</form>
			</div>

				<div class="text-end">
					<button type="button" id="updateFormBtn" class="btn btn-warning btn-sm">글수정</button>
					<button type="button" id="noticeDeleteBtn" class="btn btn-warning btn-sm">글삭제</button>
					<button type="button" id="insertFormBtn" class="btn btn-warning btn-sm">새글작성</button>
					<button type="button" id="noticeListBtn" class="btn btn-warning btn-sm">글목록</button>
				</div>
			
			<div class="text-center" style="margin-top:10px;">
				<table class="table table-bordered">
					<tr>
						<td class="col-md-2">글번호</td>
						<td class="col-md-1 text-start">${detail.notice_no }</td>
						<td class="col-md-2">조회수</td>
						<td class="col-md-2 text-start">${detail.view_count}</td>
						<td class="col-md-2">작성일</td>
						<td class="col-md-3 text-start">${detail.writeday}</td>
					</tr>
					<tr>
						<td class="col-md-3">작성자</td>
						<td colspan="5" class="col-md-9 text-start">${detail.writer }</td>
					</tr>
					
					<tr>
						<td class="col-md-3">글제목</td>
						<td colspan="5" class="col-md-9 text-start">${detail.title }</td>
					</tr>
					
					<tr class="table-height">
						<td class="align-middle">글내용</td>
						<td colspan="5" class="text-start">${detail.content }</td>
					</tr>
				</table>
			</div>
	<%@ include file="/WEB-INF/common/footer.jsp" %>
	
	</body>
</html>