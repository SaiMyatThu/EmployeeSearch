package com.smt.employee_management.app.search;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smt.employee_management.domain.model.Employee;
import com.smt.employee_management.domain.model.SearchCriteria;
import com.smt.employee_management.domain.service.employee.EmployeeService;

@Controller
@RequestMapping("search")
public class SearchController {

	@Inject
	EmployeeService employeeService;

	@Inject
	Mapper dozerMapper;

	@ModelAttribute
	public SearchForm setupForm() {
		return new SearchForm();
	}

	@RequestMapping(value = "init", method = { RequestMethod.GET, RequestMethod.POST })
	public String init(SearchForm searchForm, Model model, @PageableDefault(size = 5) Pageable pageable) {
		SearchCriteria searchCriteria = dozerMapper.map(searchForm, SearchCriteria.class);
		Page<Employee> page = employeeService.findAll(searchCriteria,pageable);
		model.addAttribute("searchForm", new SearchForm());
		model.addAttribute("page", page);
		return "employee/search";
	}

	@RequestMapping(value = "searchEmp", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchEmp(SearchForm searchForm, BindingResult result, @PageableDefault(size = 5) Pageable pageable,
			Model model) {
		SearchCriteria searchCriteria = dozerMapper.map(searchForm, SearchCriteria.class);
		Page<Employee> page = employeeService.searchEmp(searchCriteria, pageable);
		model.addAttribute("searchForm", new SearchForm());
		model.addAttribute("page", page);
		return "employee/search";
	}
}
