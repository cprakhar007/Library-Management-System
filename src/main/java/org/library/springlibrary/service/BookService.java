package org.library.springlibrary.service;

import java.util.List;

import org.library.springlibrary.model.Book;

public interface BookService {
	
	public Book getBookById(int id);

	public List<Book> getBooks();

	public Book postBook(Book book);

	public Book putBook(Book book);

	public void deleteBookById(int id);
}
