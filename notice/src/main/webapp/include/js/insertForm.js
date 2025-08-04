$("#NoticeInsert").on("click", ()=>{
	if (!chkData("#writer","이름을"))	return;
	else if (!chkData("#title","제목을"))	return;
	else if (!chkData("#content","작성할 내용을"))	return;
	else {
		actionProcess("#f_writeForm", "post", "/notice/insert.do");
	}
});

$("#NoticeListBtn").on("click", ()=>{
	locationProcess("/notice/noticeList.do"); 
});