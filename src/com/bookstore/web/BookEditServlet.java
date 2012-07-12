package com.bookstore.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bookstore.Book;
import com.bookstore.BookRepository;

@WebServlet("/book")
public class BookEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger logger = LoggerFactory
			.getLogger(BookEditServlet.class);

	@Inject
	private BookRepository bookRepo;
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String isbn = request.getParameter("isbn");
		logger.info("get() /book?isbn=" + isbn);
		if (isbn != null) {
			Book book = bookRepo.lookupBookById(isbn);
			request.setAttribute("book", book);
			request.setAttribute("pubDate", formatDate(book.getPublishDate()));
		}
		request.getRequestDispatcher("/WEB-INF/pages/bookedit.jsp").forward(
				request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		logger.info("post() /book");
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String desc = request.getParameter("desc");
		double price = 0;
		try {
			price = Double.valueOf(request.getParameter("price"));
		} catch (NumberFormatException e) {
			logger.error("error parsing price number", e);
		}
		Date date = null;
		try {
			date = sdf.parse(request.getParameter("pubdate"));
		} catch (ParseException e) {
			logger.error("error parsing publish date", e);
		}

		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator validator = factory.getValidator();
		Book book = new Book(isbn, title, author, desc, price, date);
		Set<ConstraintViolation<Book>> constraintViolations = validator
				.validate(book);

		if (constraintViolations.size() == 0) {
			bookRepo.addBook(book);
			response.sendRedirect(request.getContextPath() + "/book/");
		} else {
			request.setAttribute("book", book);
			request.setAttribute("pubDate", formatDate(book.getPublishDate()));
			request.setAttribute("errors", constraintViolations);
			request.getRequestDispatcher("/WEB-INF/pages/bookedit.jsp")
					.forward(request, response);
		}

	}

	private String formatDate(Date date) {
		if (date == null)
			return null;

		return sdf.format(date);
	}

}
