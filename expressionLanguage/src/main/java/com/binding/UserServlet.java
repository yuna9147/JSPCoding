package com.binding;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userInfo")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Address address = new Address();
		address.setCity("서울특별시 강남구 삼성동 284");
		address.setZipcode("04715");
		
		User user = new User();
		user.setName("홍길동");
		user.setId("javauser");
		user.setNum("21010001");
		user.setAddress(address);
		
		
		request.setAttribute("user",user);
		
		RequestDispatcher dispatc = request.getRequestDispatcher("/jsp/user.jsp");
		dispatc.forward(request, response);
	}

}
