package com.mvc.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.common.controller.Controller;

public class InsertFormController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "/notice/insertForm";
	}
}


