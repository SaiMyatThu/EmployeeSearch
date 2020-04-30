package com.smt.employee_management.domain.repository.employee;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;

import com.smt.employee_management.domain.model.Employee;
import com.smt.employee_management.domain.model.SearchCriteria;

public interface EmployeeRepository {

	void create(Employee employee);

	List<Employee> findByCondition(@Param("searchCriteria") SearchCriteria searchCriteria,
			@Param("pageable") Pageable pageable);

	Long getEmpCount(@Param("searchCriteria") SearchCriteria searchCriteria);
}
