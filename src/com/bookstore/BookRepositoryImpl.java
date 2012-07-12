package com.bookstore;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class BookRepositoryImpl implements BookRepository {

	private HashMap<String, Book> map = new HashMap<String, Book>();

	public BookRepositoryImpl() {
		map.put("SN0001", new Book("SN0001", "Little Wing", "Hendrix", "Fabulous Book",
				100.00, new Date()));
		map.put("SN0002", new Book("SN0002", "War and Peace", "Tolsthy", "Great Book",
				101.00, new Date()));
		map.put("SN0003", new Book("SN0003", "1984", "Jack London", "Fabulous Book", 102.00,
				new Date()));
		map.put("SN0004", new Book("SN0004", "Star War", "Luk", "Fabulous Book",
				103.00, new Date()));
		map.put("SN0005", new Book("SN0005", "Neckless", "KKK", "Fabulous Book",
				104.00, new Date()));
	}

	@Override
	public Book lookupBookById(String id) {
		return map.get(id);
	}

	@Override
	public void addBook(Book book) {
		map.put(book.getIsbn(), book);
	}

	@Override
	public void updateBook(Book book) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeBook(Book book) {
		map.remove(book.getIsbn());

	}

	@Override
	public List<Book> listBooks() {
		return new ArrayList<Book>(map.values());
	}

}
