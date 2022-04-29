package com.zepto.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zepto.Entities.Contacts;
import com.zepto.repository.ContactsRepository;

@Service
public class ConatactsServiceImpl implements ContactsService {

	@Autowired
	private ContactsRepository contactRepo;
	@Override
	public void saveContacts(Contacts contact) {
		contactRepo.save(contact);
	}
	@Override
	public List<Contacts> getContacts() {
			List<Contacts> contact = contactRepo.findAll();
			return contact;
		
	}
	@Override
	public Contacts findContactById(long id) {
		Optional<Contacts> findById = contactRepo.findById(id);
		Contacts contacts = findById.get();
		return contacts;
	}

}
