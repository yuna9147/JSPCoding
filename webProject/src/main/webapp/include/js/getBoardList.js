$("#writeForm").on("click", function(){
	//console.log("글쓰기 버튼 클릭"); // 콘솔에 출력하는 이유는 이벤트가 정상적으로 실행되는지 확인하시 위해서 명시.
	locationProcess("/board/insertForm.do"); 
});

$(".goDetail").on("click",function() {
	const $row = $(this).closest("tr");
	const num = $row.data("num");
	console.log("num = "+ num);
	
	$("#num").val(num);
	actionProcess("#detailForm","post","/board/detailBoard.do");
});