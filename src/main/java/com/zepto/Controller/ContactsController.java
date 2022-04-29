package com.zepto.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zepto.Entities.Contacts;
import com.zepto.Entities.Leads;
import com.zepto.Service.ContactsService;
import com.zepto.Service.LeadService;

@Controller
public class ContactsController {
	
	@Autowired
	private LeadService leadService;
	
	@Autowired
	private ContactsService contactService;
	
	@RequestMapping("/saveContacts")
	public String saveContacts(@RequestParam("id")long id) {
		Leads lead = leadService.findLeadById(id);
		
		Contacts contact = new Contacts();
		contact.setId(lead.getId());
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contact.setLeadSource(lead.getLeadSource());
		
		contactService.saveContacts(contact);
		leadService.deleteLeadById(lead.getId());
		return"contactsConformationPage";
	}
	
	@RequestMapping("/getContacts")
	public String getAllLeads(ModelMap modelMap) {
		List<Contacts> contact = contactService.getContacts();
		modelMap.addAttribute("contact",contact);
		return"contactsSearchResult";
	}
	@RequestMapping("getContactByid")
	public String saveLeads(@RequestParam("id")long id,ModelMap modelMap){
		Contacts contacts = contactService.findContactById(id);
		modelMap.addAttribute("contacts",contacts);
		return"contactsInfo";
	}

	
}
