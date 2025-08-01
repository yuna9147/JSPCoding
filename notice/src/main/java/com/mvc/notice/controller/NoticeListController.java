package com.mvc.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mvc.notice.vo.*;
import com.mvc.common.controller.Controller;
import com.mvc.notice.service.NoticeService;
import com.mvc.notice.service.NoticeServiceImpl;

public class NoticeListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeService service = NoticeServiceImpl.getInstance();
		List<NoticeVO> list = service.noticeList(); 
		
		request.setAttribute("list", list);
		//jsp 페이지에서 사용방법은 ${requestScope.list} 또는 ${list}
		
		return "/notice/noticeList";
	}

}