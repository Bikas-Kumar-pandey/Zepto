package com.zepto.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zepto.Entities.Leads;
import com.zepto.Service.LeadService;

@Controller
public class LeadsController {
	
	@Autowired
	private LeadService leadService;

	@RequestMapping("lead")
	public String LeadsControllerUrl(){
		return "leads";
	}
   	 
	@RequestMapping("save")
	public String saveLeads(@ModelAttribute("leads")Leads lead,ModelMap modelmap){
		leadService.saveLeads(lead);
		modelmap.addAttribute("lead",lead);
		return"leadInfo";
	}
	
	@RequestMapping("/getAllLeads")
	public String getAllLeads(ModelMap modelMap) {
		List<Leads> leads = leadService.getLeads();
		modelMap.addAttribute("leads",leads);
		return"leadsSearchResult";
	}
	
	@RequestMapping("getLead")
	public String saveLeads(@RequestParam("id")long id,ModelMap modelMap){
		Leads lead = leadService.findLeadById(id);
		modelMap.addAttribute("lead",lead);
		return"leadInfo";
	}
}
