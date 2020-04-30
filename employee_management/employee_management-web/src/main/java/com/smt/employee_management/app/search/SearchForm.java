package com.smt.employee_management.app.search;

import java.io.Serializable;

public class SearchForm implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String searchCriteria;

	public String getSearchCriteria() {
		return searchCriteria;
	}

	public void setSearchCriteria(String searchCriteria) {
		this.searchCriteria = searchCriteria;
	}

}
