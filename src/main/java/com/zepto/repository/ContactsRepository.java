package com.zepto.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zepto.Entities.Contacts;

public interface ContactsRepository extends JpaRepository<Contacts, Long> {

}
