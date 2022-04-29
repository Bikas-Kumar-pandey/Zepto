package com.zepto.BillingController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zepto.Entities.Bill;
import com.zepto.Entities.Leads;
import com.zepto.Service.BillingService;

@Controller
public class BillingController {


	
	@Autowired
	BillingService billService;
	
	@RequestMapping("/leadsbilling")
	public String payment(@RequestParam("id")Long id,ModelMap modelMap) {
		Leads lead = billService.BillingDetails(id);

		modelMap.addAttribute("lead",lead);
		return "billing";
	}
	@RequestMapping("/paid")
	public String Paid(@ModelAttribute("bill")Bill bill,ModelMap modelMap) {
		billService.SaveData(bill);
		modelMap.addAttribute("msg","Transaction Sucessfull..!");
		return"billing"; 
	}
	
	@RequestMapping("/allClientDatails")
	public String getAllLeads(ModelMap modelMap) {
		 List<Bill> client = billService.GetAllClientDetails();
		modelMap.addAttribute("client",client);
		return"allClients";
	}
	

}

