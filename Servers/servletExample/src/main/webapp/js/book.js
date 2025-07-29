$("#submitBtn").on("click",function(){
	
	if($("#title").val().replace(/\s/g,"")===""){
		alert("책제목을 입력해 주세요");
		return;
	}
	
	if($("#author").val().replace(/\s/g,"")===""){
			alert("책저자를 입력해 주세요");
			return;
		}
		
	if($("#publisher").val().replace(/\s/g,"")===""){
			alert("출판사를 입력해 주세요");
			return;
		}


$("#bookForm").attr({
	"action" : "/servletExample/bookInput",
	"method":"post"

});
	$("#bookForm").submit();
});