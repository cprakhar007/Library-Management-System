package org.library.springlibrary.service.impl;

import java.util.List;

import org.library.springlibrary.model.Book;
import org.library.springlibrary.model.BookWebClientURI;
import org.library.springlibrary.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;

@Service
public class BookServiceImpl implements BookService{

	private final WebClient webClient;
	
	@Autowired
	public BookServiceImpl(final WebClient webClient) {
		this.webClient=webClient;
	}
	
	@Override
	public Book getBookById(int id) {
		Book book = null;
		try {
		book =  webClient.get().uri(BookWebClientURI.GET_BOOK_BY_ID.getURI(),id)
				.retrieve()
				.bodyToMono(Book.class)
				.block();
		}catch(WebClientResponseException wcre) {
			wcre.printStackTrace();
		}
		return book;
	}

	@Override
	public List<Book> getBooks() {
		List<Book> bookList = null;
		try {
		bookList = webClient.get().uri(BookWebClientURI.GET_BOOKS.getURI())
				.retrieve()
				.bodyToFlux(Book.class)
				.collectList()
				.block();
		}catch(WebClientResponseException wcre) {
			wcre.printStackTrace();
		}
		return bookList;
	}

	@Override
	public Book postBook(Book book) {
		return webClient.post().uri(BookWebClientURI.POST_BOOK.getURI())
				.bodyValue(book)
				.retrieve()
				.bodyToMono(Book.class)
				.block();
	}

	@Override
	public Book putBook(Book book) {
		return webClient.put().uri(BookWebClientURI.PUT_BOOK.getURI())
				.bodyValue(book)
				.retrieve()
				.bodyToMono(Book.class)
				.block();
	}

	@Override
	public void deleteBookById(int id) {
		webClient.delete().uri(BookWebClientURI.DELETE_BOOK_BY_ID.getURI(),id)
		.retrieve()
		.bodyToMono(Book.class)
		.block();
	}

}
