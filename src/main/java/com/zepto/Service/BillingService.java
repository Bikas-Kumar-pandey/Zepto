package com.zepto.Service;

import java.util.List;

import com.zepto.Entities.Bill;
import com.zepto.Entities.Leads;

public interface BillingService {
	
	public Leads BillingDetails(Long id);
	public void SaveData(Bill bill);
	public List<Bill> GetAllClientDetails();



}
