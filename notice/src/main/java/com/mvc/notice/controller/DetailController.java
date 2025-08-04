package com.mvc.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.common.controller.Controller;
import com.mvc.notice.service.NoticeService;
import com.mvc.notice.service.NoticeServiceImpl;
import com.mvc.notice.vo.NoticeVO;

public class DetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("notice_no");
		
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setNotice_no(Integer.parseInt(num));
		
		NoticeService service = NoticeServiceImpl.getInstance();
		
		NoticeVO notice = service.detail(noticeVO);
		
		
		request.setAttribute("detail", notice);
		return "/notice/detail";
	}

}
