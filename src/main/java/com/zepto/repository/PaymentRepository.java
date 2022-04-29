package com.zepto.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zepto.Entities.Bill;

public interface PaymentRepository extends JpaRepository<Bill, Long> {

}
