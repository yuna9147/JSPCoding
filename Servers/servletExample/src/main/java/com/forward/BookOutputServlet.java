package com.forward;

import com.example.BookDTO;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class BookOutput
 */
@WebServlet("/bookOutput")
public class BookOutputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		//1.각각 설정한 정보 받아오기
//		String title = (String) request.getAttribute("title");
//		String author = (String) request.getAttribute("author");
//		String publisher = (String) request.getAttribute("publisher");
		
		
		//2. DTO로 한번에 정보 받아오기
		BookDTO book = (BookDTO)request.getAttribute("book");
		
		out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'>");
		out.println("<title>책정보</title></head>");
		out.println("<body>");
		out.println("<h2>입력받은 책 정보</h2><hr/>");
		out.println("<div><b>책제목</b> : "+book.getTitle()+"</div>");
		out.println("<div><b>책저자</b> : "+book.getAuthor()+"</div>");
		out.println("<div><b>출판사</b> : "+book.getPublisher()+"</div>");
		out.println("</body></html>");
				
		out.close();
	}
}
