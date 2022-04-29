package com.zepto.EmailController;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zepto.utilities.EmailService;

@Controller
public class EmailController {
	
	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/sendEmail")
	public String sendEmail(@RequestParam("email")String email,ModelMap modelMap) {
		modelMap.addAttribute("email",email);
		return "compose"; 
	} 
	@RequestMapping("/triggerEmailSending")
	public String triggerEmailSending(@RequestParam("email")String email,@RequestParam("subject")String subject,@RequestParam("message")String message,ModelMap modelMap) {
		emailService.sendSimpleMessage(email, subject, message);
		modelMap.addAttribute("msg","Email Sent..!!");
		return "compose";
		
	}
	
}
