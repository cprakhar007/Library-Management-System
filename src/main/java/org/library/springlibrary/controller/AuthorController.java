package org.library.springlibrary.controller;

import java.util.List;

import org.library.springlibrary.model.Author;
import org.library.springlibrary.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path="/authors")
public class AuthorController {
	
	private final AuthorService authorService;
	
	@Autowired
	public AuthorController(final AuthorService authorService) {
		this.authorService=authorService;
	}
	
	@GetMapping()
	public List<Author> getAuthors(){
		return authorService.getAuthors();
	}
}
