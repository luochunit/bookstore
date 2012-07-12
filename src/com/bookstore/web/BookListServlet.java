package com.bookstore.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bookstore.BookRepository;

@WebServlet("/book/")
public class BookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(BookListServlet.class);
	
	@Inject
	private BookRepository bookRepo;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		logger.info("get() /book/");
		request.setAttribute("books", bookRepo.listBooks());
		request.getRequestDispatcher("/WEB-INF/pages/booklist.jsp").forward(request, response);
	}

}
