package com.smt.employee_management.domain.service.account;

import com.smt.employee_management.domain.model.Account;

public interface AccountSharedService {
	Account findOne(String username);
}
