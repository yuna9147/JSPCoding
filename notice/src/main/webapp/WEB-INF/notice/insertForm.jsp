<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/header.jsp" %>

<body>
	<div class="container">
		<div class="text-center"><h3>게시판 입력 화면</h3></div>	

	<form id="f_writeForm">
		<div class="mb-3 row">
			<label for ="is_important" class="col-sm-2 col-form-label"> 중요공지</label>
			<div class="col-sm-10 d-flex align-items-center">
			
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="is_important" id="is_important1" value="Y">
				<label class="form-check-label" for="is_important1">  Y	</label>  </div>
			<div class="form-check form-check-inline">	
				<input class="form-check-input" type="radio" name="is_important" id="is_important2" checked value="N">
				<label class="form-check-label" for="is_important2">  N	</label>
			</div>
			
			</div>
		</div>	
		<div class="mb-3 row">
			<label for ="writer" class="col-sm-2 col-form-label"> 작 성 자</label>
			<div class="col-sm-10">
				<input type="text" id="writer" name="writer" class="form-control" placeholder="작성자 입력" maxlength="6" />
			</div>
		</div>
		
		<div class="mb-3 row">
			<label for ="title" class="col-sm-2 col-form-label"> 글 제 목</label>
			<div class="col-sm-10">
				<input type="text" id="title" name="title" class="form-control" placeholder="글제목 입력"  />
			</div>
		</div>
		
		
		<div class="mb-3 row">
			<label for ="content" class="col-sm-2 col-form-label"> 글 내 용</label>
			<div class="col-sm-10">
				<textarea id="content" name="content" class="form-control"  rows="8" cols="50" ></textarea>
			</div>
		</div>
		
		
	</form>
	<div class="text-end">
		<button type="button" class="btn btn-primary" id="NoticeInsert">글저장</button>
		<button type="button" class="btn btn-primary" id="NoticeListBtn">글목록</button>
	</div>
	</div>
	<%@ include file="/WEB-INF/common/footer.jsp" %>
	<script src="/include/js/insertForm.js"></script>
</body>
</html>