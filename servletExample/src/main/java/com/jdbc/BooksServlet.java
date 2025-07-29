package com.jdbc;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.BooksDAO;
import com.books.BooksVO;


@WebServlet("/bookList")
public class BooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BooksDAO dao = BooksDAO.getInstance();
		List<BooksVO> list = dao.getAllBooks();
		
		request.setAttribute("list", list);;
		RequestDispatcher dispatch = request.getRequestDispatcher("books/bookList.jsp");
		dispatch.forward(request, response);
	}

}
