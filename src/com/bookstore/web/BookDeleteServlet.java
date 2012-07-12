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

import com.bookstore.Book;
import com.bookstore.BookRepository;

@WebServlet("/deleteBook")
public class BookDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory.getLogger(BookDeleteServlet.class);

	@Inject
	private BookRepository bookRepo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String isbn = request.getParameter("isbn");
		logger.info("get() /deleteBook?isbn=" + isbn);
		if (isbn != null) {
			Book book = bookRepo.lookupBookById(isbn);
			if(book != null) {
				bookRepo.removeBook(book);
			}
		}
		response.sendRedirect(request.getContextPath() + "/book/");
	}


}
