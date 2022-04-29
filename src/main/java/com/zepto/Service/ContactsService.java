package com.zepto.Service;

import java.util.List;

import com.zepto.Entities.Contacts;

public interface ContactsService {
	
	public void saveContacts(Contacts contact);

	public List<Contacts> getContacts();

	public Contacts findContactById(long id);

}
