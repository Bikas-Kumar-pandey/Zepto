package com.zepto.Service;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zepto.Entities.Bill;
import com.zepto.Entities.Leads;
import com.zepto.repository.BillingRepository;
import com.zepto.repository.PaymentRepository;

@Service
public class BillingServiceImpl implements BillingService {

	@Autowired
	private BillingRepository billRepo;
	
	@Autowired
	private PaymentRepository paidRepo;
	
	
	@Override
	public Leads BillingDetails(Long id) {
		Optional<Leads> findById = billRepo.findById(id);
		Leads lead = findById.get();
		return lead;
	}

	@Override
	public void SaveData(Bill bill) {
		paidRepo.save(bill);
	}

	@Override
	public List<Bill> GetAllClientDetails() {
		List<Bill> client = paidRepo.findAll();
		return client;
	}

		
		
	

}
