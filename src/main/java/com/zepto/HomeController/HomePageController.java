package com.zepto.HomeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {
	
	@RequestMapping("/home")
	public String homepage() {
		return"home";
	}

}
