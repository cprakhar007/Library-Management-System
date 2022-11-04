package org.library.springlibrary.service.impl;

import java.util.List;

import org.library.springlibrary.model.Librarian;
import org.library.springlibrary.model.LibrarianWebClientURI;
import org.library.springlibrary.service.LibrarianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;
import org.springframework.web.util.UriComponentsBuilder;

@Service
public class LibrarianServiceImpl implements LibrarianService {

	private final WebClient webClient;
	
	@Autowired
	public LibrarianServiceImpl(final WebClient webClient) {
		this.webClient=webClient;
	}
	
	@Override
	public Librarian getLibrarianById(int id) {
		return webClient.get().uri(LibrarianWebClientURI.GET_LIBRARIAN_BY_ID.getURI(),id)
				.retrieve()
				.onStatus(HttpStatus::is4xxClientError, respone->{return null;})
				.onStatus(HttpStatus::is5xxServerError, response->{return null;})
				.bodyToMono(Librarian.class)
				.block();
	}

	@Override
	public Librarian getLibrarianByEmail(String email) {
		Librarian lib = null;
		try {
		lib= webClient.get().uri(LibrarianWebClientURI.GET_LIBRARIAN_BY_EMAIL.getURI(),email)
				.retrieve()
				.bodyToMono(Librarian.class)
				.block();
		}catch(WebClientResponseException wcre) {
			if(wcre.getStatusCode().is4xxClientError()) {
				return null;
			}
		}
		return lib;
	}
	
	@Override
	public Librarian getLibrarianByEmailAndPassword(String email, String password) {
		String uri = UriComponentsBuilder.fromUriString(LibrarianWebClientURI.GET_LIBRARIANS_BY_EMAIL_AND_ID.getURI())
				     .queryParam("uesrname", email)
				     .queryParam("password", password)
				     .build()
				     .toUriString();
		return webClient.get().uri(uri)
				.retrieve()
				.onStatus(HttpStatus::is4xxClientError, respone->{return null;})
				.onStatus(HttpStatus::is5xxServerError, response->{return null;})
				.bodyToMono(Librarian.class)
				.block();
	}


	@Override
	public List<Librarian> getLibrarians() {
		return webClient.get().uri(LibrarianWebClientURI.GET_LIBRARIANS.getURI())
				.retrieve()
				.onStatus(HttpStatus::is4xxClientError, respone->{return null;})
				.onStatus(HttpStatus::is5xxServerError, response->{return null;})
				.bodyToFlux(Librarian.class)
				.collectList()
				.block();
	}

	@Override
	public Librarian postLibrarian(Librarian librarian) {
		return webClient.post().uri(LibrarianWebClientURI.POST_LIBRARIAN.getURI())
				.bodyValue(librarian)
				.retrieve()
				.onStatus(HttpStatus::is5xxServerError, response->{return null;})
				.bodyToMono(Librarian.class)
				.block();
	}

	@Override
	public Librarian putLibrarian(Librarian librarian) {
		return webClient.put().uri(LibrarianWebClientURI.PUT_LIBRARIAN.getURI())
				.bodyValue(librarian)
				.retrieve()
				.bodyToMono(Librarian.class)
				.block();
	}
	
	@Override
	public void deleteLibrarianById(int id) {
		webClient.delete().uri(LibrarianWebClientURI.DELETE_LIBRARIAN_BY_ID.getURI(),id)
		.retrieve()
		.bodyToMono(Librarian.class)
		.block();
	}
}
