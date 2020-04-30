package com.smt.employee_management.app.employee;

import java.time.LocalDate;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smt.employee_management.domain.model.Employee;
import com.smt.employee_management.domain.service.employee.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController {

	@Inject
	EmployeeService employeeService;

	@Inject
	Mapper beanMapper;

	@ModelAttribute
	public EmployeeForm setupForm() {
		return new EmployeeForm();
	}

	@RequestMapping(value = "create", method = { RequestMethod.GET, RequestMethod.POST })
	public String createForm() {
		return "employee/register";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST, params = "reCreate")
	public String reCreate(EmployeeForm form) {
		return "employee/register";
	}

	@RequestMapping(value = "confirm", method = RequestMethod.POST)
	public String createConfirm(@Validated EmployeeForm form, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("error", result.getFieldError());
			System.out.println("Errror> " + result.getFieldError());
			return "employee/register";
		}
		return "employee/confirm";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String create(@Validated EmployeeForm employeeForm, BindingResult result, Model model) {
		Employee employee = beanMapper.map(employeeForm, Employee.class);

		employee.setDatOfBirth(isValid(employeeForm.getDatOfBirth()));
		employee.setJoinDate(isValid(employeeForm.getJoinDate()));

		employeeService.create(employee);

		return "redirect:/employee/register?complete";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET, params = "complete")
	public String createComplete() {
		return "employee/complete";
	}

	private String isValid(String date) {
		String dt;
		try {
			dt = LocalDate.parse(date).toString();
		} catch (Exception e) {
			dt = LocalDate.now().toString();
		}
		return dt;
	}
}
