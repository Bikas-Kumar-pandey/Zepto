package com.zepto.Service;

import java.util.List;

import com.zepto.Entities.Leads;

public interface LeadService {
	public void saveLeads(Leads lead);
	public List<Leads> getLeads();
	public Leads findLeadById(long id);
	public void deleteLeadById(long id);

}
