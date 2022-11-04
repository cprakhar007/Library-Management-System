package org.library.springlibrary.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.library.springlibrary.model.Librarian;
import org.library.springlibrary.service.LibrarianService;
import org.library.springlibrary.service.PasswordEncryptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/librarian")
public class LibrarianController {
	
	private final LibrarianService librarianService;
	private final PasswordEncryptionService passwordEncryptionService;
	
	@Autowired
	public LibrarianController(final LibrarianService librarianService, PasswordEncryptionService passwordEncryptionService) {
		this.librarianService=librarianService;
		this.passwordEncryptionService=passwordEncryptionService;
	}
	
	@GetMapping(path="/addLibrarianPage")
	public String addLibrarianPage() {
		return "addLibrarian";
	}
	
	@GetMapping(path="/loginPage")
	public String loginPage() {
		return "loginPage";
	}
	
	@GetMapping(path="/login")
	public ModelAndView login(@RequestParam("email")String email, @RequestParam("password")char[] password,HttpServletResponse response) {
		String encryptedPassword=passwordEncryptionService.encryptPassword(password);
		Librarian librarian=librarianService.getLibrarianByEmail(email);
		ModelAndView mv=null;
		if (librarian == null) {
			mv = new ModelAndView();
			mv.addObject("doesExists", false);
			mv.setViewName("loginPage");
		}else if (!librarian.getEncryptedPassword().equals(encryptedPassword)){
			mv = new ModelAndView();
			mv.addObject("doesExists", false);
			mv.setViewName("loginPage");
		}else {
			Cookie ck = new Cookie("librarian", email);
			ck.setPath("/");
			response.addCookie(ck);
			mv = new ModelAndView("redirect:/books/bookManagement");
		}
		return mv;
	}
	
	@GetMapping(path="/logout")
	public ModelAndView logout(HttpServletResponse response) {
		Cookie ck = new Cookie("librarian", null);
		ck.setMaxAge(0);
		ck.setPath("/");
		response.addCookie(ck);
		ModelAndView mv = new ModelAndView("redirect:loginPage");
		return mv;
	}
	
	
	@PostMapping(path="/postLibrarian", consumes= {"application/x-www-form-urlencoded"})
	public ModelAndView postLibrarian(String name, String email, char[] password) {
		Librarian librarian = new Librarian(name, email, passwordEncryptionService.encryptPassword(password));
		Librarian existingLibrarian = librarianService.getLibrarianByEmail(librarian.getEmail());
		ModelAndView mv = new ModelAndView();
		if (existingLibrarian == null) {
			mv.setViewName("loginPage");
			librarianService.postLibrarian(librarian);
		}else {
			mv.addObject("doesExists", false);
			mv.setViewName("addLibrarian");
		}
		return mv;
	}
}
