package com.smt.employee_management.domain.service.employee;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.smt.employee_management.domain.model.Employee;
import com.smt.employee_management.domain.model.SearchCriteria;

public interface EmployeeService {

	void create(Employee employee);

	Page<Employee> findAll(SearchCriteria searchCriteria, Pageable pageable);
	
	Page<Employee> searchEmp(SearchCriteria searchCriteria, Pageable pageable);
}
