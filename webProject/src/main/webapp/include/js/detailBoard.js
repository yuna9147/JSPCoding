$("#updateFormBtn").on("click",function(){
	
		actionProcess("#dataForm", "get","/board/updateForm.do"); 
	
});

$("#boardDeleteBtn").on("click",function(){
	locationProcess("/board/deleteForm.do"); 
	
});

$("#insertFormBtn").on("click",function(){
	
	locationProcess("/board/insertForm.do"); 
});


$("#boardListBtn").on("click",function(){
	
	locationProcess("/board/getBoardList.do"); 
});