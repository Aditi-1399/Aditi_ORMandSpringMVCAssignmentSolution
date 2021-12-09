package com.gl.customer;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService service;

	@GetMapping("/")
	public String getCustomers(Map<String, List<Customer>> map) {
		map.put("customer", service.findAll());
		return "customerList";
	}

	public CustomerController() {
		super();
		System.out.println("Controller");
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam int customerId) {
		this.service.deleteById(customerId);
		return "redirect:/";
	}

	@GetMapping("/add")
	public String addCustomer(Map<String, Customer> map) {
		map.put("Customer", new Customer());
		return "customerForm";
	}

	@GetMapping("/update")
	public String updateCustomer(@RequestParam int customerId , Map<String, Customer> map ) {
		System.out.println("update" + customerId);
		Customer customer = this.service.findById(customerId);
		map.put("Customer", customer);
		return "customerForm";
	}

	@PostMapping("/save")
	public String saveCustomer(Customer customer) {
		this.service.save(customer);
		return "redirect:/";
	}

}
