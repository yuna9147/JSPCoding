$("#writeForm").on("click", function(){
	console.log("글쓰기 버튼 클릭"); 
	locationProcess("/notice/insertForm.do");
	
});

$(".goDetail").on("click",function() {
	const $row = $(this).closest("tr");
	const num = $row.data("num");
	
	$("#num").val(num);
	actionProcess("#detailForm","post","/notice/detail.do");
});