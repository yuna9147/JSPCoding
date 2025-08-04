package com.mvc.notice.service;

import java.util.List;

import com.mvc.notice.vo.NoticeVO;
import com.mvc.notice.dao.NoticeDAO;

public class NoticeServiceImpl implements NoticeService {
	private static NoticeServiceImpl service = null;
	private NoticeDAO dao;
	
	private NoticeServiceImpl(){ 
		dao = 	NoticeDAO.getInstance();
	}
	public static NoticeServiceImpl getInstance() {
		if(service == null) {
			service = new NoticeServiceImpl();
		}
		return service;
	}
	


	@Override
	public List<NoticeVO> noticeList() {
		List<NoticeVO> list = dao.NoticeList();
		return list;
	}
	
	@Override
	public int insert(NoticeVO noticeVO) {
		int result = dao.insert(noticeVO);
		return result;
	}
	
	@Override
	public NoticeVO detail(NoticeVO noticeVO) {
		NoticeVO notice = dao.detail(noticeVO);
		notice.setContent(notice.getContent().replaceAll("\n", "<br/>"));
		return notice;
	}

}