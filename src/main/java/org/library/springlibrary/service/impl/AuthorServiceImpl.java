package org.library.springlibrary.service.impl;

import java.util.List;

import org.library.springlibrary.model.Author;
import org.library.springlibrary.model.AuthorWebClientURI;
import org.library.springlibrary.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;

@Service
public class AuthorServiceImpl implements AuthorService{

	private final WebClient webClient;
	
	@Autowired
	public AuthorServiceImpl(final WebClient webClient) {
		this.webClient = webClient;
	}
	
	@Override
	public Author getAuthorById(int id) {
		return webClient.get().uri(AuthorWebClientURI.GET_AUTHOR_BY_ID.getURI(),id)
				.retrieve()
				.onStatus(HttpStatus::is4xxClientError, respone->{return null;})
				.onStatus(HttpStatus::is5xxServerError, response->{return null;})
				.bodyToMono(Author.class)
				.block();
	}

	@Override
	public Author getAuthorByName(String name) {
	Author author = null;
	try {
		author = webClient.get().uri(AuthorWebClientURI.GET_AUTHOR_BY_NAME.getURI(),name)
				.retrieve()
				.bodyToMono(Author.class)
				.block();
	}catch(WebClientResponseException wcre) {
		author = null;
	}
	return author;
	}

	@Override
	public List<Author> getAuthors() {
		List<Author> authorList= webClient.get().uri(AuthorWebClientURI.GET_AUTHORS.getURI())
				.retrieve()
				.bodyToFlux(Author.class)
				.collectList()
				.block();
		authorList.forEach(System.out::println);
		return authorList;
	}

	@Override
	public Author postAuthor(Author author) {
		return webClient.post().uri(AuthorWebClientURI.POST_AUTHOR.getURI())
				.bodyValue(author)
				.retrieve()
				.bodyToMono(Author.class)
				.block();
	}

	@Override
	public Author putAuthor(Author author) {
		return webClient.put().uri(AuthorWebClientURI.PUT_AUTHOR.getURI())
				.bodyValue(author)
				.retrieve()
				.bodyToMono(Author.class)
				.block();
	}


	@Override
	public void deleteAuthorById(int id) {
		webClient.delete().uri(AuthorWebClientURI.DELETE_AUTHOR_BY_ID.getURI(),id)
		.retrieve()
		.bodyToMono(Author.class)
		.block();
	}

}
