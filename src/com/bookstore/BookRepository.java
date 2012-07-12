package com.bookstore;

import java.util.List;

public interface BookRepository {
	
	Book lookupBookById(String id);
	
	void addBook(Book book);
	
	void updateBook(Book book);
	
	void removeBook(Book book);
	
	List<Book> listBooks();

}
