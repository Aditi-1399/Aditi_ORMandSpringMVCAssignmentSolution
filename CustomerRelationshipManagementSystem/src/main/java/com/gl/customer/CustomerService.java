package com.gl.customer;

import java.util.List;

public interface CustomerService {

	List<Customer> findAll();

	Customer findById(int theId);

	void save(Customer theCustomer);

	void deleteById(int theId);

}