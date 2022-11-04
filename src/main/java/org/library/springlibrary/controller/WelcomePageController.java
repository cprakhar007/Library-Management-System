package org.library.springlibrary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomePageController {

	@RequestMapping("/")
	public String redirecPage() {
		return "redirect:welcome";
	}
	
	@RequestMapping("/welcome")
	public String showWelcomePage() {
		return "index";
	}
}
