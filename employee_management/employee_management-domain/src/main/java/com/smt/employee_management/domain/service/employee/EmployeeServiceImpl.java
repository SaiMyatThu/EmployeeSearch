package com.smt.employee_management.domain.service.employee;

import java.util.Collections;
import java.util.List;

import javax.inject.Inject;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smt.employee_management.domain.model.Employee;
import com.smt.employee_management.domain.model.SearchCriteria;
import com.smt.employee_management.domain.repository.employee.EmployeeRepository;

@Transactional
@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	EmployeeRepository employeeRepository;

	@Override
	public void create(Employee employee) {
		try {
			employeeRepository.create(employee);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

	@Override
	public Page<Employee> findAll(SearchCriteria searchCriteria, Pageable pageable) {
		Long empCount = employeeRepository.getEmpCount(searchCriteria);
		List<Employee> empList;
		if (0 < empCount) {
			empList = employeeRepository.findByCondition(searchCriteria, pageable);
		} else {
			empList = Collections.emptyList();
		}
		return new PageImpl<Employee>(empList, pageable, empCount);
	}

	@Override
	public Page<Employee> searchEmp(SearchCriteria searchCriteria, Pageable pageable) {
		Long empCount = employeeRepository.getEmpCount(searchCriteria);
		List<Employee> empList;
		if (0 < empCount) {
			empList = employeeRepository.findByCondition(searchCriteria, pageable);
		} else {
			empList = Collections.emptyList();
		}
		return new PageImpl<Employee>(empList, pageable, empCount);
	}

}
