package com.zepto.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zepto.Entities.Leads;

public interface LeadsRepository extends JpaRepository<Leads,Long> {

}
