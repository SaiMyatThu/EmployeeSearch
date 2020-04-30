package com.smt.employee_management.domain.service.account;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.terasoluna.gfw.common.exception.ResourceNotFoundException;

import com.smt.employee_management.domain.model.Account;
import com.smt.employee_management.domain.repository.account.AccountRepository;

@Service
public class AccountSharedServiceImpl implements AccountSharedService {

	@Inject
	AccountRepository accountRepository;

	@Transactional(readOnly = true)
	@Override
	public Account findOne(String username) {
		Account account = accountRepository.findOne(username);

		if (null == account) {
			throw new ResourceNotFoundException("No such user! UserName = " + username);
		}
		return account;
	}

}
