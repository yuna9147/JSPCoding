<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/header.jsp" %>
	<body>
		<div class="container">
			<div class="text-center">
				<h3>게시판 상세 화면</h3>
			</div>
			
			<form id="f_updateForm">
				<div class="text=center">
					<input type="hidden" name="num" id="num" value="${updateData.num }">
					<table class="table table-bordered">
						<tr>
							<td class="text-center">글번호</td>
							<td class="text-start">${updateData.readcnt}</td>
							<td class="text-center">조회수</td>
							<td class="text-start">${updateData.num}</td>
							<td class="text-center">작성일</td>
							<td class="text-start">${updateData.writeday }</td>
						</tr>
						
						<tr>
							<td class="text-center">작성자</td>
							<td colspan="5" class="text-start">${updateData.author }</td>
						</tr>
						
						<tr>
							<td class="text-center">글제목</td>
							<td colspan="5" >
							<input type="text" name="title" id="title" value="${updateData.title }" class="form-control" /></td>
						</tr>
						
						<tr>
							<td class="text-center">글내용</td>
							<td colspan="5">
								<textarea name="content" id="content" rows="8" class="form-control">${updateData.content }</textarea>
							</td>
						</tr>
						
						<tr>
							<td class="text-center">비밀번호</td>
							<td colspan="5">
								<input type="password" name="passwd" id="passwd" class="form-control" placeholder="기존 비밀번호가 아닌 수정할 비밀번호 입력" />
							</td>
						</tr>
					
					</table>
				</div>
			</form>
			<div class="text-end">
				<button type="button" id="boardUpdateBtn" class="btn btn-primary btn-sm">글수정</button>
				<button type="button" id="boardListBtn" class="btn btn-primary btn-sm">글목록</button>
			</div>
		</div>
	
	<%@ include file="/WEB-INF/common/footer.jsp" %>
	<script src="/include/js/updateForm.js"></script>
	</body>
</html>