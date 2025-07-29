package com.forward;

import com.example.BookDTO;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookInput
 */
@WebServlet("/bookInput")
public class BookInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		
		//1. 각각 설정
//		request.setAttribute("title", title);
//		request.setAttribute("author", author);
//		request.setAttribute("publisher", publisher);
		
		//2. VO(value object) 또는 DTO로 설정하여 전달.
		BookDTO book = new BookDTO();
		book.setTitle(title);
		book.setAuthor(author);
		book.setPublisher(publisher);
		
		request.setAttribute("book",book);

		RequestDispatcher dispatch = request.getRequestDispatcher("bookOutput");
		dispatch.forward(request, response);
	}


}
