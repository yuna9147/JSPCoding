package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QueryServlet
 */
@WebServlet({ "/queryget", "/querypost" })
public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		process(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); //doGet에서는 설정안해줘도 자동 적용되지만, 
		process(request, response);            //doPost에서는 필수로 설정해줘야 한글 안깨지고 제대로 가져올 수 있음
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String userName = request.getParameter("guestName");
		int number = Integer.parseInt(request.getParameter("num")); //반환형이 문자여서 강제형변환
		
		out.println("<!DOCTYPE html><html><head><meta charset='UTF-8' />");
		out.println("<title>Get 방식과 Post 방식</title>");
		out.println("<link rel='icon' href='/servletExample/image/icon.png'></head>");
		out.println("<body>");
		
		out.println("<h2>요청 방식 : " + request.getMethod()+"</h2>");
		out.println("<h2>요청 URI : " + request.getRequestURI()+"</h2>");
		
		out.println("<h2>당신의 이름은 " + userName + "이군요!</h2>");
		out.println("<h2>당신이 좋아하는 숫자는 " + number + "이군요!</h2>");
		
		out.println("<a href='#' onclick='history.back();'>입력화면으로 가기</a>");
		
		out.println("</body></html>");
		out.close();
	}
}
