package com.mvc.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.common.controller.Controller;
import com.mvc.notice.service.NoticeServiceImpl;
import com.mvc.notice.service.NoticeService;
import com.mvc.notice.vo.NoticeVO;

public class InsertController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			String path=null;
			
			NoticeVO noticeVO = new NoticeVO();
			noticeVO.setWriter(request.getParameter("writer"));
			noticeVO.setTitle(request.getParameter("title"));
			noticeVO.setContent(request.getParameter("content"));
			noticeVO.setIs_important(request.getParameter("is_important"));
			
			NoticeService service = NoticeServiceImpl.getInstance();
			int result = service.insert(noticeVO);
			
			if(result ==1) {
				path="/notice/noticeList.do";
			} else {
				request.setAttribute("errorMsg", "등록완료에 문제가 있어 잠시 후 다시 입력해 주세요." );
				path = "/notice/insertForm";
			}
			return path;
	}

}
