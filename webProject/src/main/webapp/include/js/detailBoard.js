$("#updateFormBtn").on("click",function(){
	
	actionProcess("#dataForm", "get","/board/updateForm.do"); 
	
});

$("#boardDeleteBtn").on("click",function(){
	if(confirm("정막 삭제하시겠습니까?")){
	actionProcess("#dataForm", "post","/board/deleteBoard.do");		
	}
});

$("#insertFormBtn").on("click",function(){
	
	locationProcess("/board/insertForm.do"); 
});

 
$("#boardListBtn").on("click",function(){
	
	locationProcess("/board/getBoardList.do"); 
});

