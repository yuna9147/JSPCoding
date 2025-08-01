package com.mvc.common.controller;

import java.util.HashMap;
import java.util.Map;

import com.mvc.notice.controller.NoticeListController;


public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		//                   매핑정보(key) 구현클래스(value)
		mappings = new HashMap<String, Controller>();
		/* 게시판 처리 */
		mappings.put("/notice/noticeList.do",new NoticeListController());
		}

	public Controller getController(String path) { // 게시판리스트일 경우 path="/board/getBoardList.do"
		return mappings.get(path);                 // mappings.get("/board/getBoardList.do")=> new GetBoardListController()의 주솟값 반환
	}
}