package com.smt.employee_management.domain.repository.account;

import com.smt.employee_management.domain.model.Account;

public interface AccountRepository {
	Account findOne(String userName);
}
