package com.smt.employee_management.app.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping("/loginForm")
	public String view() {
		return "login/loginForm";
	}
}
